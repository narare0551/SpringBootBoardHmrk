package com.cos.board.config.ex;

public class MyArgsNouFound extends RuntimeException{

	private String msg;
	
	public MyArgsNouFound(String msg) {
		// TODO Auto-generated constructor stub
		this.msg=msg;
	}
	@Override
	public String getMessage() {
		return msg;
	}
}
