package com.cloud.tmc.miniutils.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class LanguageUtils {
    private LanguageUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static Locale getAppContextLanguage() {
        return getContextLanguage(Utils.getApp());
    }

    public static Locale getContextLanguage(Context context) {
        return getLocal(context.getResources().getConfiguration());
    }

    private static Locale getLocal(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
    }

    public static Locale getSystemLanguage() {
        return getLocal(Resources.getSystem().getConfiguration());
    }
}
