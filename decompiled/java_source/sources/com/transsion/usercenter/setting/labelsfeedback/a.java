package com.transsion.usercenter.setting.labelsfeedback;

import android.content.res.Resources;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static final int a(float f11) {
        return (int) (((double) (f11 * Resources.getSystem().getDisplayMetrics().density)) + 0.5d);
    }

    public static final int b(int i11) {
        return (int) (((double) (i11 * Resources.getSystem().getDisplayMetrics().density)) + 0.5d);
    }
}
