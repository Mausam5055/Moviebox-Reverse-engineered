package com.transsnet.loginapi.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class SearchFilter implements Serializable {
    private static final long serialVersionUID = 1;

    public abstract char getAlpha(String str);

    public abstract String getFullSpell(String str);

    public abstract String getInputString(String str);
}
