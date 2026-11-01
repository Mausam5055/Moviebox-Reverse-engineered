package com.google.android.exoplayer2;

import java.util.HashSet;

/* JADX INFO: loaded from: classes3.dex */
public abstract class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final HashSet f25288a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f25289b = "goog.exo.core";

    public static synchronized void a(String str) {
        if (f25288a.add(str)) {
            f25289b += ", " + str;
        }
    }

    public static synchronized String b() {
        return f25289b;
    }
}
