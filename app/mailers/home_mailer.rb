class HomeMailer < ActionMailer::Base
  default from: "enquiry@academicstratedgey.com"
  def enquiry(name, email, grade, message)
    @name = name
    @grade = grade
    @email = email
    @message = message
    mail(to: 'academicstratedgey@gmail.com', subject: "New Enquiry - #{name}")
  end
end