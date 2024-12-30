package am.logi.logicinema.models;

public class Feedback {
    private int feedbackId;
    private String userName;
    private String userEmail;
    private String message;

    public Feedback(String userName, String userEmail, String message) {
        this.userName = userName;
        this.userEmail = userEmail;
        this.message = message;
    }

    // Getters and Setters
    public int getFeedbackId() { return feedbackId; }
    public void setFeedbackId(int feedbackId) { this.feedbackId = feedbackId; }

    public String getUserName() { return userName; }
    public void setUserName(String userName) { this.userName = userName; }

    public String getUserEmail() { return userEmail; }
    public void setUserEmail(String userEmail) { this.userEmail = userEmail; }

    public String getMessage() { return message; }
    public void setMessage(String message) { this.message = message; }
}
