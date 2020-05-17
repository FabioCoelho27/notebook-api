class Contact < ApplicationRecord
  belongs_to :kind, optional: false
  has_many :phones
  accepts_nested_attributes_for :phones

  def as_json(options={})
    h = super(options)
    h[:birthdate] = (I18n.l(self.birthdate) unless self.birthdate.blank?)
    h
    
  end

  #def to_br
  #  {
  #    name: self.name, 
  #    email:self.email,
  #    birthdate: (I18n.l(self.birthdate) unless self.blank?)
  #  }
  #end
  #def birthdate_br
  #  I18n.l(self.birthdate) unless self.birthdate.blank?
  #end
  #def author
  #  "Fábio Coelho"
  #end

  #def kind_description
  #  self.kind.description
  #end

  #def as_json(options={})
  #  super(
  #    root: true,
  #    methods: [:kind_description, :author],
  #    include: { kind: { only: :description}}
  #  )
  #end
  #def hello
  #  I18n.t('hello')
  #end
end
