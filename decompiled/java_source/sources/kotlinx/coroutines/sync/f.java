package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.n;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.q;
import kotlinx.coroutines.s2;

/* JADX INFO: loaded from: classes7.dex */
public class f extends SemaphoreAndMutexImpl implements kotlinx.coroutines.sync.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f67981i = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "owner$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Function3 f67982h;
    private volatile /* synthetic */ Object owner$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    final class a implements n, s2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CancellableContinuationImpl f67983a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f67984b;

        public a(CancellableContinuationImpl cancellableContinuationImpl, Object obj) {
            this.f67983a = cancellableContinuationImpl;
            this.f67984b = obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit e(f fVar, a aVar, Throwable th2) {
            fVar.unlock(aVar.f67984b);
            return Unit.f67061a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit h(f fVar, a aVar, Throwable th2, Unit unit, CoroutineContext coroutineContext) {
            f.y().set(fVar, aVar.f67984b);
            fVar.unlock(aVar.f67984b);
            return Unit.f67061a;
        }

        @Override // kotlinx.coroutines.n
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void resume(Unit unit, Function1 function1) {
            this.f67983a.resume(unit, (Function1<? super Throwable, Unit>) function1);
        }

        @Override // kotlinx.coroutines.n
        public boolean cancel(Throwable th2) {
            return this.f67983a.cancel(th2);
        }

        @Override // kotlinx.coroutines.n
        public void completeResume(Object obj) {
            this.f67983a.completeResume(obj);
        }

        @Override // kotlinx.coroutines.n
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void resume(Unit unit, Function3 function3) {
            f.y().set(f.this, this.f67984b);
            CancellableContinuationImpl cancellableContinuationImpl = this.f67983a;
            final f fVar = f.this;
            cancellableContinuationImpl.resume(unit, new Function1() { // from class: kotlinx.coroutines.sync.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return f.a.e(fVar, this, (Throwable) obj);
                }
            });
        }

        @Override // kotlinx.coroutines.n
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void resumeUndispatched(i0 i0Var, Unit unit) {
            this.f67983a.resumeUndispatched(i0Var, unit);
        }

        @Override // kotlinx.coroutines.n
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public Object tryResume(Unit unit, Object obj, Function3 function3) {
            final f fVar = f.this;
            Object objTryResume = this.f67983a.tryResume(unit, obj, new Function3() { // from class: kotlinx.coroutines.sync.d
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj2, Object obj3, Object obj4) {
                    return f.a.h(fVar, this, (Throwable) obj2, (Unit) obj3, (CoroutineContext) obj4);
                }
            });
            if (objTryResume != null) {
                f.y().set(f.this, this.f67984b);
            }
            return objTryResume;
        }

        @Override // kotlin.coroutines.Continuation
        public CoroutineContext getContext() {
            return this.f67983a.getContext();
        }

        @Override // kotlinx.coroutines.n
        public void invokeOnCancellation(Function1 function1) {
            this.f67983a.invokeOnCancellation(function1);
        }

        @Override // kotlinx.coroutines.s2
        public void invokeOnCancellation(w wVar, int i11) {
            this.f67983a.invokeOnCancellation(wVar, i11);
        }

        @Override // kotlinx.coroutines.n
        public boolean isActive() {
            return this.f67983a.isActive();
        }

        @Override // kotlinx.coroutines.n
        public boolean isCompleted() {
            return this.f67983a.isCompleted();
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(Object obj) {
            this.f67983a.resumeWith(obj);
        }

        @Override // kotlinx.coroutines.n
        public Object tryResumeWithException(Throwable th2) {
            return this.f67983a.tryResumeWithException(th2);
        }
    }

    public f(boolean z10) {
        super(1, z10 ? 1 : 0);
        this.owner$volatile = z10 ? null : g.f67986a;
        this.f67982h = new Function3() { // from class: kotlinx.coroutines.sync.b
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                f fVar = this.f67974a;
                android.support.v4.media.session.c.a(obj);
                return f.C(fVar, null, obj2, obj3);
            }
        };
    }

    static /* synthetic */ Object A(f fVar, Object obj, Continuation continuation) {
        Object objB;
        return (!fVar.b(obj) && (objB = fVar.B(obj, continuation)) == IntrinsicsKt.f()) ? objB : Unit.f67061a;
    }

    private final Object B(Object obj, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImplB = q.b(IntrinsicsKt.c(continuation));
        try {
            g(new a(cancellableContinuationImplB, obj));
            Object result = cancellableContinuationImplB.getResult();
            if (result == IntrinsicsKt.f()) {
                DebugProbesKt.c(continuation);
            }
            return result == IntrinsicsKt.f() ? result : Unit.f67061a;
        } catch (Throwable th2) {
            cancellableContinuationImplB.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function3 C(final f fVar, kotlinx.coroutines.selects.f fVar2, final Object obj, Object obj2) {
        return new Function3() { // from class: kotlinx.coroutines.sync.c
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                return f.D(this.f67975a, obj, (Throwable) obj3, obj4, (CoroutineContext) obj5);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D(f fVar, Object obj, Throwable th2, Object obj2, CoroutineContext coroutineContext) {
        fVar.unlock(obj);
        return Unit.f67061a;
    }

    private final int E(Object obj) {
        while (!s()) {
            if (obj == null) {
                return 1;
            }
            int iZ = z(obj);
            if (iZ == 1) {
                return 2;
            }
            if (iZ == 2) {
                return 1;
            }
        }
        f67981i.set(this, obj);
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicReferenceFieldUpdater y() {
        return f67981i;
    }

    private final int z(Object obj) {
        while (d()) {
            Object obj2 = f67981i.get(this);
            if (obj2 != g.f67986a) {
                return obj2 == obj ? 1 : 2;
            }
        }
        return 0;
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean b(Object obj) {
        int iE = E(obj);
        if (iE == 0) {
            return true;
        }
        if (iE == 1) {
            return false;
        }
        if (iE != 2) {
            throw new IllegalStateException("unexpected");
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
    }

    @Override // kotlinx.coroutines.sync.a
    public boolean d() {
        return a() == 0;
    }

    @Override // kotlinx.coroutines.sync.a
    public Object h(Object obj, Continuation continuation) {
        return A(this, obj, continuation);
    }

    public String toString() {
        return "Mutex@" + p0.b(this) + "[isLocked=" + d() + ",owner=" + f67981i.get(this) + ']';
    }

    @Override // kotlinx.coroutines.sync.a
    public void unlock(Object obj) {
        while (d()) {
            Object obj2 = f67981i.get(this);
            if (obj2 != g.f67986a) {
                if (obj2 != obj && obj != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
                if (androidx.concurrent.futures.a.a(f67981i, this, obj2, g.f67986a)) {
                    release();
                    return;
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }
}
