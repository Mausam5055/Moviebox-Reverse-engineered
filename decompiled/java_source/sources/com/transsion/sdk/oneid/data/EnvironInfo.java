package com.transsion.sdk.oneid.data;

import android.annotation.SuppressLint;
import android.content.Context;
import java.io.Serializable;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class EnvironInfo extends OneBaseInfo implements Serializable {
    public String lang;

    /* JADX INFO: renamed from: tz, reason: collision with root package name */
    public String f51919tz;

    @SuppressLint({"DefaultLocale"})
    public EnvironInfo(Context context) {
        this.f51919tz = "";
        this.lang = "";
        try {
            this.f51919tz = TimeZone.getDefault().getDisplayName(false, 0);
        } catch (AssertionError unused) {
            this.f51919tz = "GMT+00:00";
        }
        if ("GMT".equals(this.f51919tz)) {
            this.f51919tz = "GMT+00:00";
        }
        this.lang = Locale.getDefault().getLanguage();
    }
}
