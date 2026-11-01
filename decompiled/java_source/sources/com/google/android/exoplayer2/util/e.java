package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes3.dex */
public interface e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f27567a = new i0();

    void a();

    o createHandler(Looper looper, Handler.Callback callback);

    long elapsedRealtime();

    long uptimeMillis();
}
