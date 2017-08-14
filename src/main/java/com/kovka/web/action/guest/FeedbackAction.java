package com.kovka.web.action.guest;

import com.kovka.common.data.About;
import com.kovka.web.action.BaseAction;
import com.kovka.web.action.dto.ResponseDto;
import com.kovka.web.action.dto.ResponseStatus;
import com.kovka.web.action.notification.MailContent;
import com.kovka.web.action.notification.MailException;
import com.kovka.web.action.notification.MailSender;
import org.apache.log4j.Logger;

import java.util.Set;

/**
 * Created by htdev01 on 11/9/15.
 */
public class FeedbackAction extends BaseAction {

    private static final Logger logger = Logger.getLogger(FeedbackAction.class.getSimpleName());

    private ResponseDto dto;

    private String name;
    private String phone;
    private String email;

    private String subject;
    private String message;


    public String execute() {

        About about = (About) session.get("about");
        Set<String> emails = about.getEmails();

        String fromEmail = "mngkovka@gmail.com";
        String fromEmailPassword = "098478877";

        StringBuilder context = new StringBuilder();

        context.append("Hello").append("<br/>");
        context.append("Name ").append(name).append("<br/>");
        context.append("Phone ").append(phone).append("<br/>");
        context.append("Email ").append(email).append("<br/>");
        context.append("Subject ").append(subject).append("<br/>");
        context.append("Message ").append(message).append("<br/>");


        MailContent mailContent = new MailContent();
        mailContent.setEmailsTo(new String[]{fromEmail});
        mailContent.setEmailsCC(emails.toArray(new String[emails.size()]));
        mailContent.setSubject("NMG Kovka");
        mailContent.setContent(context.toString());
        mailContent.setRecipientTypeTo();

        MailSender mailNotification = new MailSender();
        try {
            mailNotification.sendEmailFromConnectTo(mailContent, fromEmail, fromEmailPassword);
            session.put(INFO, getText("mail.success"));
        } catch (MailException e) {
            logger.error(e);
            session.put(MESSAGE, getText("error.internal"));
            return ERROR;
        }

        return SUCCESS;
    }

    public String callMe() {

        About about = (About) session.get("about");
        Set<String> emails = about.getEmails();

        String fromEmail = "nmgkovka@gmail.com";
        String fromEmailPassword = "098478877";

        StringBuilder context = new StringBuilder();

        context.append("Hello").append("<br/>");
        context.append("Please connect to Phone number ").append(phone).append("<br/>");


        MailContent mailContent = new MailContent();
        mailContent.setEmailsTo(new String[]{fromEmail});
        mailContent.setEmailsCC(emails.toArray(new String[emails.size()]));
        mailContent.setSubject("NMG Kovka");
        mailContent.setContent(context.toString());
        mailContent.setRecipientTypeTo();

        MailSender mailNotification = new MailSender();
        try {
            mailNotification.sendEmailFromConnectTo(mailContent, fromEmail, fromEmailPassword);
            dto.setActionmessage(getText("mail.success"));
            dto.setResponseStatus(ResponseStatus.SUCCESS);
        } catch (Exception e) {
            logger.error(e);
            dto.setActionerror(getText("error.internal"));
            dto.setResponseStatus(ResponseStatus.INTERNAL_ERROR);
        }

        return SUCCESS;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public ResponseDto getDto() {
        return dto;
    }

    public void setDto(ResponseDto dto) {
        this.dto = dto;
    }
}
