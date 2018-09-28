package com.ra.util;

import java.util.ResourceBundle;

public class ResourceUtil {
	private static final ResourceBundle bundle = java.util.ResourceBundle.getBundle("sysConfig");
    /**
     * ��ȡ�����ĳ���
     *
     * @return �����ĳ���
     */
    public static String getRandCodeLength() {
        return bundle.getString("randCodeLength");
    }

    /**
     * ��ȡ����������
     *
     * @return ����������
     */
    public static String getRandCodeType() {
        return bundle.getString("randCodeType");
    }


}
