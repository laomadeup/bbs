package cn.laoma.domain;

public class User {
	/**
	 * 用户id
	 */
	private Integer id;
	/**
	 * 用户名（昵称）
	 */
	private String userName;
	/**
	 * 登录密码
	 */
	private String password;
	/**
	 * 年龄
	 */
	private Integer age;
	/**
	 * 邮件
	 */
	private String email;
	/**
	 * 手机
	 */
	private String mobile;
	/**
	 * 性别 0 女；1 男
	 */
	private Short sex;
	/**
	 * 状态:-1:冻结；1:开通
	 */
	private Short status;
	/**
	 * 生日
	 * */
	private Long birthday;

	/**
	 * 创建时间戳
	 */
	private Long createTimestamp;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName == null ? null : userName.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Short getSex() {
		return sex;
	}

	public void setSex(Short sex) {
		this.sex = sex;
	}

	public Short getStatus() {
		return status;
	}

	public void setStatus(Short status) {
		this.status = status;
	}

	public Long getBirthday() {
		return birthday;
	}

	public void setBirthday(Long birthday) {
		this.birthday = birthday;
	}

	public Long getCreateTimestamp() {
		return createTimestamp;
	}

	public void setCreateTimestamp(Long createTimestamp) {
		this.createTimestamp = createTimestamp;
	}

}