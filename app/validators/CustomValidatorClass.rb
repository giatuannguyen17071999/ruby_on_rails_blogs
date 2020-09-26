class CustomValidatorClass < ActiveModel::Validator
    def validate(record)
      unless record.title.starts_with? 'Web'
        record.errors[:title] << "This title must start with the word 'web'  on title" 
      end
    end
  end
    