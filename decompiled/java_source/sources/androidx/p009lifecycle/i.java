package androidx.p009lifecycle;

import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f9609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f9610c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9608a = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue f9611d = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(i this$0, Runnable runnable) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(runnable, "$runnable");
        this$0.f(runnable);
    }

    private final void f(Runnable runnable) {
        if (!this.f9611d.offer(runnable)) {
            throw new IllegalStateException("cannot enqueue any more runnables");
        }
        e();
    }

    public final boolean b() {
        return this.f9609b || !this.f9608a;
    }

    public final void c(CoroutineContext context, final Runnable runnable) {
        Intrinsics.h(context, "context");
        Intrinsics.h(runnable, "runnable");
        a2 a2VarQ = y0.c().q();
        if (a2VarQ.isDispatchNeeded(context) || b()) {
            a2VarQ.dispatch(context, new Runnable() { // from class: androidx.lifecycle.h
                @Override // java.lang.Runnable
                public final void run() {
                    i.d(this.f9604a, runnable);
                }
            });
        } else {
            f(runnable);
        }
    }

    public final void e() {
        if (this.f9610c) {
            return;
        }
        try {
            this.f9610c = true;
            while (!this.f9611d.isEmpty() && b()) {
                Runnable runnable = (Runnable) this.f9611d.poll();
                if (runnable != null) {
                    runnable.run();
                }
            }
            this.f9610c = false;
        } catch (Throwable th2) {
            this.f9610c = false;
            throw th2;
        }
    }

    public final void g() {
        this.f9609b = true;
        e();
    }

    public final void h() {
        this.f9608a = true;
    }

    public final void i() {
        if (this.f9608a) {
            if (this.f9609b) {
                throw new IllegalStateException("Cannot resume a finished dispatcher");
            }
            this.f9608a = false;
            e();
        }
    }
}
