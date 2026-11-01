package com.vungle.ads.internal.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.webkit.WebView;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class w {
    public static final w INSTANCE = new w();

    private w() {
    }

    public final int dpToPixels(Context context, int i11) {
        Intrinsics.h(context, "context");
        return (int) ((i11 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public final Pair<Integer, Integer> getDeviceWidthAndHeightWithOrientation(Context context, int i11) {
        Intrinsics.h(context, "context");
        Resources resources = context.getApplicationContext().getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        int i12 = resources.getConfiguration().orientation;
        if (i11 == 0) {
            i11 = i12;
        }
        return i11 == i12 ? new Pair<>(Integer.valueOf(Math.round(displayMetrics.widthPixels / displayMetrics.density)), Integer.valueOf(Math.round(displayMetrics.heightPixels / displayMetrics.density))) : new Pair<>(Integer.valueOf(Math.round(displayMetrics.heightPixels / displayMetrics.density)), Integer.valueOf(Math.round(displayMetrics.widthPixels / displayMetrics.density)));
    }

    public final WebView getWebView(Context context) throws InstantiationException {
        Intrinsics.h(context, "context");
        try {
            return new WebView(context);
        } catch (Resources.NotFoundException e11) {
            throw new InstantiationException("Cannot instantiate WebView due to Resources.NotFoundException: " + e11 + ".message");
        } catch (Exception e12) {
            throw new InstantiationException(e12.getMessage());
        }
    }
}
