
class Article < ApplicationRecord

  # validator class example
  # include ActiveModel::Validations
  # validates_with CustomValidatorClass


    has_many :comments  #,  dependent: :destroy

 #   validates_associated :comments

  
    # if, unless option is accept param type is symbols, Proc, array

    # Ket hop cac dieu kien lai voi nhau
   # apply this validates when the result of all condition in if array is true  and unless condition are false
  #  validates :title, presence: true, if: [ :has_content?, Proc.new { text.length < 5 } ],
  #                                    unless: Proc.new { text.length < 7 }

  #  def has_content?
  #    text.include? "a"  
  #  end

    # this is the grouping the if statement
    # this will apply the if statement for all validate inside the with_options
    # with_options if: :no_text? do |article|
    #   article.validates :title, presence: true
    #   article.validates :text, length: { minimum: 5 }
    # end

    # def no_text?
    #   text.empty?
    # end

    #using the Proc
 #   validates :title, presence: true, unless: Proc.new { |article| article.text.length > 8 }   # apply this validate when text.length > 8

    #using the lamda
  #  validates :title, presence: true, unless: -> { text.blank? }  # apply this validates when text.blank = false

    # using the if else option
  #  validates :title, presence: true, if: :text_is_blank   # apply this validate when test attribute is blank  

    # def text_is_blank
    # text.blank?
    # end

  #  validates_with GoodnessValidator     #  custom validator
  # validates :title, inclusion: { in: %w(web mobile winform),
 # message: "%{value} is not a valid title" }, allow_nil: true   # allow nil value
  #  validates :title, numericality: { odd: true }   # must be a odd number
 #   validates :title, numericality: { even: true }    # must be a even number

 #   validates :title, numericality: { greater_than_or_equal_to: 1500.5 }  #  >=
#    validates :title, numericality: { other_than: 1500.5 }   #  !=
#    validates :title, numericality: { less_than_or_equal_to: 1500.5 }   #  <=
 #   validates :title, numericality: { less_than: 1500.5 }    #  <
 #   validates :title, numericality: { equal_to: 1500.5 }    #  =
#  validates :title, numericality: { greater_than: 1500.5 }  #   >   gia tri can phai lon hon gia tri chi dinh
  #  validates :title, numericality: true    # title is numeric ( integer or flaot )
  #  validates :title, numericality: { only_integer: true }   # title must be an integer (not Float)
  #  validates :title, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }   #matches format
  #  validates :title, format: { without: /^[0-9][A-Za-z0-9 -]*$/ , multiline: true, message: "Mustn't just the the number "}   # don't matches format 
  #  validates :title, exclusion: { in: ["test thoi","test hihi"], message: "Khong duoc chua nhung gia tri nay!" }   # out of the range value 
  #  validates :title, inclusion: { in: ["ngon ngu C","ngon ngu Java","ngon ngu RuBY"], message: "Phai nam trong nhung gia tri nay! "}    # inclue the range value
  #  validates :title, confirmation: {case_sensitive: false , message: "khong giong nhau! "}   # confirm value
  #  validates :terms_of_use, acceptance: true     # check the check_box field
    # validates  :text, presence: {message: "Khong duoc de trong!"},
    # length: { minimum: 5, too_short: "%{count} is the min number of character! " }
  #  validates :title, length: { maximum: 50, too_long: "message loi" }
  #  validates :title, length: { in: 5...12, wrong_length: "message loi" }
  #  validates :title, length: { is: 8, wrong_length: "message loi" }


end

