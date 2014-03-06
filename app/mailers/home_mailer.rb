class HomeMailer < ActionMailer::Base
  default from: "stratedgey@gmail.com"
  def enquiry(name, email, grade, subject, message)
    @name = name
    @grade = grade
    @email = email
    @subject = subject
    @message = message
    mail(to: 'stratedgey@gmail.com', 
        subject: "ACADEMIC STRATEDGEY - #{subject} by #{name}")
  end
end