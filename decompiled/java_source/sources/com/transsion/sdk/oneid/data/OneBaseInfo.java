package com.transsion.sdk.oneid.data;

import androidx.annotation.NonNull;
import com.google.gson.Gson;
import com.transsion.sdk.oneid.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class OneBaseInfo {
    @NonNull
    public String toString() {
        try {
            return new Gson().toJson(this);
        } catch (Exception e11) {
            b.m(e11);
            return "";
        }
    }
}
