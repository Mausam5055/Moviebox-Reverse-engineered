package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class FilterWord {
    private List<FilterWord> EjP;
    private String Sj;
    private boolean TKC;
    private String sP;

    public FilterWord() {
    }

    public FilterWord(String str, String str2) {
        this.Sj = str;
        this.sP = str2;
    }

    public void addOption(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        if (this.EjP == null) {
            this.EjP = new ArrayList();
        }
        this.EjP.add(filterWord);
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof FilterWord)) {
            return false;
        }
        FilterWord filterWord = (FilterWord) obj;
        return filterWord.getId().equals(getId()) && filterWord.getName().equals(getName());
    }

    public String getId() {
        return this.Sj;
    }

    public boolean getIsSelected() {
        return this.TKC;
    }

    public String getName() {
        return this.sP;
    }

    public List<FilterWord> getOptions() {
        return this.EjP;
    }

    public boolean hasSecondOptions() {
        List<FilterWord> list = this.EjP;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(this.Sj) || TextUtils.isEmpty(this.sP)) ? false : true;
    }

    public void setId(String str) {
        this.Sj = str;
    }

    public void setIsSelected(boolean z10) {
        this.TKC = z10;
    }

    public void setName(String str) {
        this.sP = str;
    }
}
