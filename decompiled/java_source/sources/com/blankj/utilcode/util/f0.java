package com.blankj.utilcode.util;

import android.os.Vibrator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Vibrator f20087a;

    private static Vibrator a() {
        if (f20087a == null) {
            f20087a = (Vibrator) Utils.a().getSystemService("vibrator");
        }
        return f20087a;
    }

    public static void b(long j11) {
        Vibrator vibratorA = a();
        if (vibratorA == null) {
            return;
        }
        vibratorA.vibrate(j11);
    }
}
