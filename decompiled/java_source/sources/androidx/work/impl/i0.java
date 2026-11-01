package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f15689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f15690b;

    static {
        String strI = androidx.work.t.i("WrkDbPathHelper");
        Intrinsics.g(strI, "tagWithPrefix(...)");
        f15689a = strI;
        f15690b = new String[]{"-journal", "-shm", "-wal"};
    }
}
