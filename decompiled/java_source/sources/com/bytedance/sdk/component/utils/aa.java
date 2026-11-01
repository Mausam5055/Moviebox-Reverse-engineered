package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class aa {

    @SuppressLint({"StaticFieldLeak"})
    private static Context Sj;

    public static void Sj(Context context, String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        try {
            Sj = context.createConfigurationContext(sP(context, str, str2));
        } catch (Throwable th2) {
            th2.getMessage();
        }
        ib.Sj(Sj);
    }

    private static Configuration sP(Context context, String str, String str2) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        configuration.setLocale(new Locale(str, str2));
        return configuration;
    }
}
