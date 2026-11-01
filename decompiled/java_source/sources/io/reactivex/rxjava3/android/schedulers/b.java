package io.reactivex.rxjava3.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Scheduler f65308a = jz.a.d(new Callable() { // from class: io.reactivex.rxjava3.android.schedulers.a
        @Override // java.util.concurrent.Callable
        public final Object call() {
            return b.a.f65309a;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final Scheduler f65309a = new HandlerScheduler(new Handler(Looper.getMainLooper()), true);
    }

    public static Scheduler c() {
        return jz.a.e(f65308a);
    }
}
