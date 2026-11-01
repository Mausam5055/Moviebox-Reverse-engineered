package com.google.common.util.concurrent;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
abstract class d extends AbstractFuture.h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final b f31021c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final q f31022d = new q(d.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Set f31023a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile int f31024b;

    private static abstract class b {
        private b() {
        }
    }

    private static final class c extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicReferenceFieldUpdater f31025a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final AtomicIntegerFieldUpdater f31026b;

        c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.f31025a = atomicReferenceFieldUpdater;
            this.f31026b = atomicIntegerFieldUpdater;
        }
    }

    /* JADX INFO: renamed from: com.google.common.util.concurrent.d$d, reason: collision with other inner class name */
    private static final class C0418d extends b {
        private C0418d() {
            super();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        b c0418d;
        Throwable th2 = null;
        Object[] objArr = 0;
        try {
            c0418d = new c(AtomicReferenceFieldUpdater.newUpdater(d.class, Set.class, "a"), AtomicIntegerFieldUpdater.newUpdater(d.class, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
        } catch (Throwable th3) {
            c0418d = new C0418d();
            th2 = th3;
        }
        f31021c = c0418d;
        if (th2 != null) {
            f31022d.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th2);
        }
    }
}
