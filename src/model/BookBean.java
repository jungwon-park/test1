package model;

public class BookBean {
	private String bookcode;	
	private String bookname;
	private String authorcode;
	private String publishercode;
	private String publicationdate;
	private String registrationdate;
	private String categorycode;
	private String contents;
	private String link;
	
	public BookBean(String bookcode, String bookname, String authorcode, String publishercode, String publicationdate,
			String registrationdate, String categorycode, String contents, String link) {
		super();
		this.bookcode = bookcode;
		this.bookname = bookname;
		this.authorcode = authorcode;
		this.publishercode = publishercode;
		this.publicationdate = publicationdate;
		this.registrationdate = registrationdate;
		this.categorycode = categorycode;
		this.contents = contents;
		this.link = link;
	}
	
	public BookBean() {
		super();
	}

	@Override
	public String toString() {
		return "BookBean [bookcode=" + bookcode + ", bookname=" + bookname + ", authorcode=" + authorcode
				+ ", publishercode=" + publishercode + ", publicationdate=" + publicationdate + ", registrationdate="
				+ registrationdate + ", categorycode=" + categorycode + ", contents=" + contents + ", link=" + link
				+ "]";
	}

	public String getBookcode() {
		return bookcode;
	}

	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthorcode() {
		return authorcode;
	}

	public void setAuthorcode(String authorcode) {
		this.authorcode = authorcode;
	}

	public String getPublishercode() {
		return publishercode;
	}

	public void setPublishercode(String publishercode) {
		this.publishercode = publishercode;
	}

	public String getPublicationdate() {
		return publicationdate;
	}

	public void setPublicationdate(String publicationdate) {
		this.publicationdate = publicationdate;
	}

	public String getRegistrationdate() {
		return registrationdate;
	}

	public void setRegistrationdate(String registrationdate) {
		this.registrationdate = registrationdate;
	}

	public String getCategorycode() {
		return categorycode;
	}

	public void setCategorycode(String categorycode) {
		this.categorycode = categorycode;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
	
	

}
