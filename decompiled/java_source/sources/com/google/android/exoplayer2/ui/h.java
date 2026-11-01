package com.google.android.exoplayer2.ui;

import android.graphics.Color;

/* JADX INFO: loaded from: classes3.dex */
abstract class h {
    public static String a(String str) {
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 5 + String.valueOf(str).length());
        sb2.append(".");
        sb2.append(str);
        sb2.append(",.");
        sb2.append(str);
        sb2.append(" *");
        return sb2.toString();
    }

    public static String b(int i11) {
        return com.google.android.exoplayer2.util.p0.C("rgba(%d,%d,%d,%.3f)", Integer.valueOf(Color.red(i11)), Integer.valueOf(Color.green(i11)), Integer.valueOf(Color.blue(i11)), Double.valueOf(((double) Color.alpha(i11)) / 255.0d));
    }
}
