package com.kh.burgerking.model.dto;

import java.util.Objects;

public class UserDTO {
	private String userId;
	private String userPw;
	private String userName;
	
	public UserDTO() {
		super();
	}

	public UserDTO(String userId, String userPw, String userName) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
	}

	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Override
	public String toString() {
		return "UserDTO [userId=" + userId + ", userPw=" + userPw + ", userName=" + userName + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(userId, userName, userPw);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserDTO other = (UserDTO) obj;
		return Objects.equals(userId, other.userId) && Objects.equals(userName, other.userName)
				&& Objects.equals(userPw, other.userPw);
	}
	
}
