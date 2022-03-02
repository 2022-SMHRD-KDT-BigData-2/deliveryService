package deliveryService.controller;

import java.net.PasswordAuthentication;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

public class AuthEmailRequestCommand implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String inputedEmail = request.getParameter("email");

		// �����ڵ� ����
		String AuthenticationKey = authCodeMaker();

		// mail server ����
		String host = "smtp.gmail.com";
		final String user = "taewon1554@gmail.com"; // �ڽ��� ���� ����
		final String password = "youn856213!";// �ڽ��� ���� �н�����

		// ���� ���� �ּ�
		String to_email = inputedEmail;
		System.out.println("inputedEmail : " + inputedEmail);

		// SMTP ���� ������ �����Ѵ�.
		Properties prop = System.getProperties();
		prop.put("mail.smtp.host", host);
		// google - TLS : 587, SSL: 465
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		prop.put("mail.debug", "true");

		javax.mail.Session session = javax.mail.Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(user, password);
			}
		});
		MimeMessage msg = new MimeMessage(session);

		// email ����
		try {
			msg.setFrom(new InternetAddress(user));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));

			// ���� ����
			msg.setSubject("�ȳ��ϼ���. �ʰ������� ���������Դϴ�.", "UTF-8");
			// ���� ����
			msg.setText("���� ��ȣ :" + AuthenticationKey);

			Transport.send(msg);
			System.out.println("�̸��� ���� : " + AuthenticationKey);
//			ShareVar_login sv = ShareVar_login.getInstance();
//			sv.authEamilCode = AuthenticationKey;

		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return to_email;
	}

	public String authCodeMaker() {
		String authCode = null;

		StringBuffer temp = new StringBuffer();
		Random rd = new Random();
		for (int i = 0; i < 10; i++) {
			int rIndex = rd.nextInt(3);
			switch (rIndex) {
			case 0:
				// a-z
				temp.append((char) ((int) (rd.nextInt(26)) + 97));
				break;
			case 1:
				// A-Z
				temp.append((char) ((int) (rd.nextInt(26)) + 65));
				break;
			case 2:
				// 0-9
				temp.append((rd.nextInt(10)));
				break;
			}
		}

		authCode = temp.toString();
		System.out.println(authCode);

		return authCode;
	}
}
