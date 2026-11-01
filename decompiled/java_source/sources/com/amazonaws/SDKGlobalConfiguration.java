package com.amazonaws;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class SDKGlobalConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f18320a = new AtomicInteger(0);

    public static int a() {
        return f18320a.get();
    }

    public static void b(int i11) {
        f18320a.set(i11);
    }
}
