package cn.laoma.controller.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class FormatLongDateTag extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long longTime;
	private String pattren;

	public Long getLongTime() {
		return longTime;
	}

	public void setLongTime(Long longTime) {
		this.longTime = longTime;
	}

	public String getPattren() {
		return pattren;
	}

	public void setPattren(String pattren) {
		this.pattren = pattren;
	}

	/**
	 * 将Long类型的日期转成格式化后的String类型
	 * 
	 * @param longTime
	 * @return
	 */
	private String longToDate(Long longTime, String pattern) {
		String dateStr = null;
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			Date longDate = new Date(longTime);
			dateStr = simpleDateFormat.format(longDate);
		} catch (Exception e) {
			System.err.print("pattern格式不正确");
		}
		return dateStr;
	}

	@Override
	public int doStartTag() throws JspException {
		try {
			JspWriter out = this.pageContext.getOut();
			/*if (longTime == null) {
				System.err.print("日期不能为空");
				return SKIP_BODY;
			}*/
			if (longTime == null || longTime == 0l) {
				out.print("");
			}else{
				out.print(longToDate(longTime,pattren));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return SKIP_BODY;
	}

	@Override
	public int doEndTag() throws JspException {

		return EVAL_PAGE;
	}

}
