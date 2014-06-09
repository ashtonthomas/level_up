require "spec_helper"

describe UserMailer do
  let(:user) { build(:user) }
  let(:course) { build(:course) }
  let(:mail) { UserMailer.confirm_enrollment(user, course) }

  it "should confirm course enrollment" do
    mail.to.should include(user.email)
    mail.body.should include(course.name)
  end

  it "should actually send the email" do
    expect { mail.deliver! }.to change{ ActionMailer::Base.deliveries.size }.by(1)
  end
end
