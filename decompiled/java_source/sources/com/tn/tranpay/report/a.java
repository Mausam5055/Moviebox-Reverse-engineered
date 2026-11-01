package com.tn.tranpay.report;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements ThreadFactory {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0594a f41662d = new C0594a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicInteger f41663e = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadGroup f41664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f41665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f41666c;

    /* JADX INFO: renamed from: com.tn.tranpay.report.a$a, reason: collision with other inner class name */
    public static final class C0594a {
        private C0594a() {
        }

        public /* synthetic */ C0594a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public a(String pre) {
        ThreadGroup threadGroup;
        Intrinsics.h(pre, "pre");
        this.f41665b = new AtomicInteger(1);
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            threadGroup = securityManager.getThreadGroup();
            Intrinsics.g(threadGroup, "s.threadGroup");
        } else {
            threadGroup = Thread.currentThread().getThreadGroup();
            Intrinsics.e(threadGroup);
        }
        this.f41664a = threadGroup;
        this.f41666c = pre + "-pool-" + f41663e.getAndIncrement() + "-thread-";
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable r11) {
        Intrinsics.h(r11, "r");
        Thread thread = new Thread(this.f41664a, r11, this.f41666c + this.f41665b.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(5);
        }
        return thread;
    }
}
