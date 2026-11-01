package com.blankj.utilcode.util;

import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public class g0 {
    public static boolean a() {
        return TextUtils.getLayoutDirectionFromLocale(Build.VERSION.SDK_INT >= 24 ? Utils.a().getResources().getConfiguration().getLocales().get(0) : Utils.a().getResources().getConfiguration().locale) == 1;
    }

    public static View b(int i11) {
        return ((LayoutInflater) Utils.a().getSystemService("layout_inflater")).inflate(i11, (ViewGroup) null);
    }
}
