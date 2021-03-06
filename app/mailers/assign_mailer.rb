class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def change_owner_mail(team)
    @email = team.owner.email
    @team = team
    mail to: @email, subject: I18n.t('views.messages.delegated_owner')
  end

  def delete_agenda_mail(agenda)
    @email = agenda.team.members.map(&:email)
    @agenda = agenda
    mail to: @email, subject: I18n.t('views.messages.delete_agenda')
  end
  
end