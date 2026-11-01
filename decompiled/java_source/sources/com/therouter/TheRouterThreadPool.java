package com.therouter;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TheRouterThreadPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f40712a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f40713b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f40714c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f40715d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f40716e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f40717f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ExecutorService f40718g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Handler f40719h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static ThreadPoolExecutor f40720i;

    public static final class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f40721a = new AtomicInteger(1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f40722b;

        a(String str) {
            this.f40722b = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r11) {
            Intrinsics.h(r11, "r");
            return new Thread(r11, this.f40722b + " #" + this.f40721a.getAndIncrement());
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f40712a = iAvailableProcessors;
        int iMax = Math.max(3, Math.min(iAvailableProcessors - 1, 6));
        f40713b = iMax;
        f40714c = iAvailableProcessors * 4;
        f40715d = iAvailableProcessors * 8;
        f40716e = 30L;
        f40717f = 10;
        f40718g = new BufferExecutor();
        f40719h = new Handler(Looper.getMainLooper());
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(iMax, Integer.MAX_VALUE, f40716e, TimeUnit.SECONDS, new LinkedBlockingDeque(f40717f), k("TheRouterLibThread"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f40720i = threadPoolExecutor;
    }

    public static final void f(Runnable command) {
        Intrinsics.h(command, "command");
        try {
            f40718g.execute(command);
        } catch (Exception e11) {
            TheRouterKt.c("TheRouterThreadPool", "rejected execute runnable", new Function0<Unit>() { // from class: com.therouter.TheRouterThreadPool$execute$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m298invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m298invoke() {
                    e11.printStackTrace();
                }
            });
        }
    }

    public static final boolean g(Runnable command) {
        Intrinsics.h(command, "command");
        if (!Intrinsics.c(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            return f40719h.post(command);
        }
        command.run();
        return true;
    }

    public static final long h() {
        return f40716e;
    }

    public static final int i() {
        return f40717f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String j(StackTraceElement[] stackTraceElementArr) {
        StringBuilder sb2 = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return string;
    }

    public static final ThreadFactory k(String threadName) {
        Intrinsics.h(threadName, "threadName");
        return new a(threadName);
    }
}
