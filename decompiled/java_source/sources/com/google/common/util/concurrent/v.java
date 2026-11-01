package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
abstract class v {
    static void a(Object obj, long j11) {
        LockSupport.parkNanos(obj, Math.min(j11, 2147483647999999999L));
    }
}
