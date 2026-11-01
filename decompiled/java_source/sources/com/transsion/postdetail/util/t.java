package com.transsion.postdetail.util;

import android.app.Activity;
import android.view.Window;

/* JADX INFO: loaded from: classes6.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final t f50179a = new t();

    private t() {
    }

    public final String a(Integer num) {
        int iIntValue = num != null ? num.intValue() : 0;
        if (1 > iIntValue || iIntValue >= 10) {
            return String.valueOf(iIntValue);
        }
        return "0" + iIntValue;
    }

    public final void b(Activity activity, boolean z10) {
        Window window = activity != null ? activity.getWindow() : null;
        if (z10) {
            if (window != null) {
                window.addFlags(128);
            }
        } else if (window != null) {
            window.clearFlags(128);
        }
    }
}
