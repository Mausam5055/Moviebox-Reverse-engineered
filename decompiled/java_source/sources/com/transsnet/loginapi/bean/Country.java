package com.transsnet.loginapi.bean;

import androidx.annotation.NonNull;
import java.io.Serializable;

/* JADX INFO: loaded from: classes7.dex */
public class Country implements Comparable<Country>, Serializable {
    private String code;
    private String country;
    private String country_s;
    private transient SearchFilter filter = new DefaultSearch();
    private String index;
    private String mcc;
    private String sortKey;

    @Override // java.lang.Comparable
    public int compareTo(Country country) {
        return this.sortKey.compareTo(country.sortKey);
    }

    public String getCode() {
        return this.code;
    }

    public String getCodeAndAdd() {
        String str = this.code;
        if (str != null && str.startsWith("+")) {
            return this.code;
        }
        return "+" + this.code;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCountry_s() {
        return this.country_s;
    }

    public String getIndex() {
        return this.index;
    }

    public String getMcc() {
        return this.mcc;
    }

    public String getSortKey() {
        return this.sortKey;
    }

    public void setCode(String str) {
        int iLastIndexOf;
        if (str != null && (iLastIndexOf = str.lastIndexOf("+")) >= 0) {
            str = str.substring(iLastIndexOf + 1);
        }
        this.code = str;
    }

    public void setCountry(String str) {
        this.sortKey = this.filter.getFullSpell(str);
        this.country = str;
    }

    public void setCountry_s(String str) {
        this.country_s = str;
    }

    public void setIndex(String str) {
        this.index = str;
    }

    public void setMcc(String str) {
        this.mcc = str;
    }

    @NonNull
    public String toString() {
        return "Country [country=" + this.country + ", code=" + this.code + ", sortKey=" + this.sortKey + "]";
    }
}
