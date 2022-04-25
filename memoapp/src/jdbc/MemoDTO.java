package jdbc;

public class MemoDTO {
	
	private String mid;
	private String uid;
	private String memo;
	private String mdone;
	private String mdate;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getMdone() {
		return mdone;
	}
	public void setMdone(String mdone) {
		this.mdone = mdone;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	
	public MemoDTO(String mid, String uid, String memo, String mdone, String mdate) {
		this.mid = mid;
		this.uid = uid;
		this.memo = memo;
		this.mdone = mdone;
		this.mdate = mdate;
	}

	public MemoDTO(){
		
	}

}
