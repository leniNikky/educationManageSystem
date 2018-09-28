package com.ra.controller;

import java.util.Random;

public class ImageEnum {
	/**
     * ��֤�븨����
     */
	 enum RandCodeImageEnum {
	        /**
	         * ����ַ���
	         */
	        ALL_CHAR("0123456789abcdefghijkmnpqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), // ȥ��Сд��l��o����������������ֵ��ַ���
	        /**
	         * �ַ�
	         */
	        LETTER_CHAR("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"),
	        /**
	         * Сд��ĸ
	         */
	        LOWER_CHAR("abcdefghijklmnopqrstuvwxyz"),
	        /**
	         * ����
	         */
	        NUMBER_CHAR("0123456789"),
	        /**
	         * ��д�ַ�
	         */
	        UPPER_CHAR("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
	        /**
	         * �����ɵ��ַ���
	         */
	        private String charStr;

	        /**
	         * @param charStr
	         */
	        private RandCodeImageEnum(final String charStr) {
	            this.charStr = charStr;
	        }

	        /**
	         * ���������֤��
	         * 
	         * @param codeLength
	         *            ��֤��ĳ���
	         * @return ��֤��
	         */
	        public String generateStr(final int codeLength) {
	            final StringBuffer sb = new StringBuffer();
	            final Random random = new Random();
	            final String sourseStr = getCharStr();

	            for (int i = 0; i < codeLength; i++) {
	                sb.append(sourseStr.charAt(random.nextInt(sourseStr.length())));
	            }

	            return sb.toString();
	        }

	        /**
	         * @return the {@link #charStr}
	         */
	        public String getCharStr() {
	            return charStr;
	        }

	    }
}
