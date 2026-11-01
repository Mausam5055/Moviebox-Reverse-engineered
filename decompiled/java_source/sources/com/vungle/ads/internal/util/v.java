package com.vungle.ads.internal.util;

import android.os.Build;
import android.webkit.URLUtil;

/* JADX INFO: loaded from: classes7.dex */
public final class v {
    public static final v INSTANCE = new v();

    private v() {
    }

    public final boolean isOSVersionInvalid() {
        return Build.VERSION.SDK_INT < 25;
    }

    public final boolean isUrlValid(String str) {
        return (str == null || str.length() == 0 || (!URLUtil.isHttpsUrl(str) && !URLUtil.isHttpUrl(str))) ? false : true;
    }
}
