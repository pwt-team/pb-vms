package com.vms.util;

import java.util.Date;


/**
 * 
 * JSP函数自定义标签
 * TmFunctions<BR>
 * 创建人:潭州学院-keke <BR>
 * 时间：2014年11月11日-下午9:21:37 <BR>
 * @version 1.0.0
 *
 */
public class TmFunctions {
	
	/**
	 * 日期具体的几秒钟以前
	 * 方法名：dateString<BR>
	 * 创建人：潭州学院-keke <BR>
	 * 时间：2014年11月11日-下午10:34:33 <BR>
	 * @param startTime
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public static String dateToString(String startTime){
		return TmDateUtil.getTimeFormat(startTime);
	}
	
	/**
	 *  日期具体的几秒钟以前
	 * 方法名：dateToString2<BR>
	 * 创建人：潭州学院-keke <BR>
	 * 时间：2014年11月11日-下午10:38:06 <BR>
	 * @param startTime
	 * @return String<BR>
	 * @exception <BR>
	 * @since  1.0.0
	 */
	public static String dateToString2(Date startTime){
		return TmDateUtil.getTimeFormat(startTime);
	}


}
