class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_tweet.subject
  #
  def sendmail_tweet(tweet)
    @tweet = tweet

    mail to: "genishikawa108@gmail.com",
    subject: '【大課題】投稿されました'
  end
end
