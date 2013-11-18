class ToLocale
  def self.create(locale='tr')
    models = ActiveRecord::Base.connection.tables.map{|model| model.capitalize.singularize.camelize }
    data = Hash.new
    data["#{locale}"] = Hash.new
    data["#{locale}"]['activerecord'] = Hash.new
    data["#{locale}"]['activerecord']['models'] = Hash.new
    data["#{locale}"]['activerecord']['attributes'] = Hash.new

    models.each do |model|
      data["#{locale}"]['activerecord']['models']["#{model.downcase}"] = model.capitalize
      data = add_attributes(data, model, locale)
    end

    write_to_file(data, locale)
  end

  def self.add_model(model, locale='tr')
    begin
      data = YAML::load_file(Rails.root.join('config/locales', "models.#{locale}.yml"))
      data["#{locale}"]['activerecord']['models']["#{model.downcase}"] = model.capitalize
      data = add_attributes(data, model, locale)
      write_to_file(data, locale)
    rescue
      create(locale)
      puts "models.#{locale}.yml file not found. Bu it's created now."
    end
  end

  private
  def self.write_to_file(data, locale='tr')
    File.open(Rails.root.join('config/locales', "models.#{locale}.yml"), 'w') do |fo|
      fo.puts data.to_yaml
    end
  end

  def self.add_attributes(data, model, locale)
    begin
      columns = model.classify.constantize.column_names
      data["#{locale}"]['activerecord']['attributes']["#{model.downcase}"] = Hash.new
      columns.each do |column|
        data["#{locale}"]['activerecord']['attributes']["#{model.downcase}"]["#{column}"] = column.capitalize
      end
    rescue
      puts "Not found #{model} model."
    end
    data
  end
end