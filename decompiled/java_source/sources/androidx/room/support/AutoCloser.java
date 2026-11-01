package androidx.room.support;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes2.dex */
public final class AutoCloser {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f14733l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f14734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a4.e f14735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private n0 f14736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function0 f14737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f14738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f14739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicInteger f14740g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AtomicLong f14741h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a4.d f14742i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f14743j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private t1 f14744k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public interface b {
        long a();
    }

    public AutoCloser(long j11, TimeUnit timeUnit, b watch) {
        Intrinsics.h(timeUnit, "timeUnit");
        Intrinsics.h(watch, "watch");
        this.f14734a = watch;
        this.f14738e = new Object();
        this.f14739f = timeUnit.toMillis(j11);
        this.f14740g = new AtomicInteger(0);
        this.f14741h = new AtomicLong(watch.a());
    }

    public /* synthetic */ AutoCloser(long j11, TimeUnit timeUnit, b bVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, timeUnit, (i11 & 4) != 0 ? new b() { // from class: androidx.room.support.a
            @Override // androidx.room.support.AutoCloser.b
            public final long a() {
                return AutoCloser.b();
            }
        } : bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long b() {
        return SystemClock.uptimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        synchronized (this.f14738e) {
            try {
                if (this.f14734a.a() - this.f14741h.get() < this.f14739f) {
                    return;
                }
                if (this.f14740g.get() != 0) {
                    return;
                }
                Function0 function0 = this.f14737d;
                if (function0 == null) {
                    throw new IllegalStateException("onAutoCloseCallback is null but it should  have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
                }
                function0.invoke();
                a4.d dVar = this.f14742i;
                if (dVar != null && dVar.isOpen()) {
                    dVar.close();
                }
                this.f14742i = null;
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void f() {
        synchronized (this.f14738e) {
            try {
                this.f14743j = true;
                t1 t1Var = this.f14744k;
                if (t1Var != null) {
                    t1.a.b(t1Var, null, 1, null);
                }
                this.f14744k = null;
                a4.d dVar = this.f14742i;
                if (dVar != null) {
                    dVar.close();
                }
                this.f14742i = null;
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g() {
        n0 n0Var;
        int iDecrementAndGet = this.f14740g.decrementAndGet();
        if (iDecrementAndGet < 0) {
            throw new IllegalStateException("Unbalanced reference count.");
        }
        this.f14741h.set(this.f14734a.a());
        if (iDecrementAndGet == 0) {
            n0 n0Var2 = this.f14736c;
            if (n0Var2 == null) {
                Intrinsics.z("coroutineScope");
                n0Var = null;
            } else {
                n0Var = n0Var2;
            }
            this.f14744k = kotlinx.coroutines.k.d(n0Var, null, null, new AutoCloser$decrementCountAndScheduleClose$2(this, null), 3, null);
        }
    }

    public final Object h(Function1 block) {
        Intrinsics.h(block, "block");
        try {
            return block.invoke(j());
        } finally {
            g();
        }
    }

    public final a4.d i() {
        return this.f14742i;
    }

    public final a4.d j() {
        t1 t1Var = this.f14744k;
        a4.e eVar = null;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f14744k = null;
        this.f14740g.incrementAndGet();
        if (this.f14743j) {
            throw new IllegalStateException("Attempting to open already closed database.");
        }
        synchronized (this.f14738e) {
            a4.d dVar = this.f14742i;
            if (dVar != null && dVar.isOpen()) {
                return dVar;
            }
            a4.e eVar2 = this.f14735b;
            if (eVar2 == null) {
                Intrinsics.z("delegateOpenHelper");
            } else {
                eVar = eVar2;
            }
            a4.d writableDatabase = eVar.getWritableDatabase();
            this.f14742i = writableDatabase;
            return writableDatabase;
        }
    }

    public final void k(n0 coroutineScope) {
        Intrinsics.h(coroutineScope, "coroutineScope");
        this.f14736c = coroutineScope;
    }

    public final void l(a4.e delegateOpenHelper) {
        Intrinsics.h(delegateOpenHelper, "delegateOpenHelper");
        if (delegateOpenHelper instanceof AutoClosingRoomOpenHelper) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this.f14735b = delegateOpenHelper;
    }

    public final boolean m() {
        return !this.f14743j;
    }

    public final void n(Function0 onAutoClose) {
        Intrinsics.h(onAutoClose, "onAutoClose");
        this.f14737d = onAutoClose;
    }
}
