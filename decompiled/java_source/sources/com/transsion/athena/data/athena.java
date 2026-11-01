package com.transsion.athena.data;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class athena {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f42699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static CopyOnWriteArrayList<Integer> f42700b = new CopyOnWriteArrayList<>();

    public static CopyOnWriteArrayList<Integer> a() {
        return f42700b;
    }

    public static boolean a(int i11) {
        if (f42700b.contains(Integer.valueOf(i11))) {
            return false;
        }
        return f42700b.add(Integer.valueOf(i11));
    }

    public static boolean a(long j11) {
        return f42700b.contains(Integer.valueOf(com.transsion.athena.taaneh.anehat.a(j11)));
    }

    public static int b() {
        return f42699a;
    }

    public static void b(int i11) {
        if (f42699a != 0) {
            com.transsion.athena.taaneh.aethna.a("The host appId has been set 2 times");
        }
        f42699a = i11;
    }
}
