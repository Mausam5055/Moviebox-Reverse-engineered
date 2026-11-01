package androidx.room;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class m0 implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f14713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayDeque f14714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Runnable f14715c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f14716d;

    public m0(Executor executor) {
        Intrinsics.h(executor, "executor");
        this.f14713a = executor;
        this.f14714b = new ArrayDeque();
        this.f14716d = new Object();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Runnable runnable, m0 m0Var) {
        try {
            runnable.run();
        } finally {
            m0Var.c();
        }
    }

    public final void c() {
        synchronized (this.f14716d) {
            try {
                Object objPoll = this.f14714b.poll();
                Runnable runnable = (Runnable) objPoll;
                this.f14715c = runnable;
                if (objPoll != null) {
                    this.f14713a.execute(runnable);
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable command) {
        Intrinsics.h(command, "command");
        synchronized (this.f14716d) {
            try {
                this.f14714b.offer(new Runnable() { // from class: androidx.room.l0
                    @Override // java.lang.Runnable
                    public final void run() {
                        m0.b(command, this);
                    }
                });
                if (this.f14715c == null) {
                    c();
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
