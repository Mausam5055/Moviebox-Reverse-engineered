package com.google.android.gms.internal.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes4.dex */
public interface zaq {
    ExecutorService zaa(ThreadFactory threadFactory, int i11);

    ExecutorService zab(int i11, int i12);

    ExecutorService zac(int i11, ThreadFactory threadFactory, int i12);
}
