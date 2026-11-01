package com.transsnet.loginapi.bean;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class DefaultSearch extends SearchFilter {
    private static final long serialVersionUID = 1;

    @Override // com.transsnet.loginapi.bean.SearchFilter
    public char getAlpha(String str) {
        if (!TextUtils.isEmpty(str)) {
            char cCharAt = str.charAt(0);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                return cCharAt;
            }
            if (cCharAt >= 'a' && cCharAt <= 'z') {
                return (char) (cCharAt - ' ');
            }
        }
        return '#';
    }

    @Override // com.transsnet.loginapi.bean.SearchFilter
    public String getFullSpell(String str) {
        return '#' == getAlpha(str) ? "|" : str.toUpperCase();
    }

    @Override // com.transsnet.loginapi.bean.SearchFilter
    public String getInputString(String str) {
        return str.toUpperCase();
    }
}
