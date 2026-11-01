package kotlinx.coroutines;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
final class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f67703b = AtomicIntegerFieldUpdater.newUpdater(e.class, "notCompletedCount$volatile");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r0[] f67704a;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    private final class a extends w1 {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final /* synthetic */ AtomicReferenceFieldUpdater f67705h = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "_disposer$volatile");
        private volatile /* synthetic */ Object _disposer$volatile;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final n f67706e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public a1 f67707f;

        public a(n nVar) {
            this.f67706e = nVar;
        }

        public final void A(b bVar) {
            f67705h.set(this, bVar);
        }

        public final void B(a1 a1Var) {
            this.f67707f = a1Var;
        }

        @Override // kotlinx.coroutines.w1
        public boolean u() {
            return false;
        }

        @Override // kotlinx.coroutines.w1
        public void v(Throwable th2) {
            if (th2 != null) {
                Object objTryResumeWithException = this.f67706e.tryResumeWithException(th2);
                if (objTryResumeWithException != null) {
                    this.f67706e.completeResume(objTryResumeWithException);
                    b bVarX = x();
                    if (bVarX != null) {
                        bVarX.b();
                        return;
                    }
                    return;
                }
                return;
            }
            if (e.d().decrementAndGet(e.this) == 0) {
                n nVar = this.f67706e;
                r0[] r0VarArr = e.this.f67704a;
                ArrayList arrayList = new ArrayList(r0VarArr.length);
                for (r0 r0Var : r0VarArr) {
                    arrayList.add(r0Var.h());
                }
                nVar.resumeWith(Result.m454constructorimpl(arrayList));
            }
        }

        public final b x() {
            return (b) f67705h.get(this);
        }

        public final a1 y() {
            a1 a1Var = this.f67707f;
            if (a1Var != null) {
                return a1Var;
            }
            Intrinsics.z("handle");
            return null;
        }
    }

    private final class b implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a[] f67709a;

        public b(a[] aVarArr) {
            this.f67709a = aVarArr;
        }

        @Override // kotlinx.coroutines.m
        public void a(Throwable th2) {
            b();
        }

        public final void b() {
            for (a aVar : this.f67709a) {
                aVar.y().dispose();
            }
        }

        public String toString() {
            return "DisposeHandlersOnCancel[" + this.f67709a + ']';
        }
    }

    public e(r0[] r0VarArr) {
        this.f67704a = r0VarArr;
        this.notCompletedCount$volatile = r0VarArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicIntegerFieldUpdater d() {
        return f67703b;
    }

    public final Object c(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        int length = this.f67704a.length;
        a[] aVarArr = new a[length];
        for (int i11 = 0; i11 < length; i11++) {
            r0 r0Var = this.f67704a[i11];
            r0Var.start();
            a aVar = new a(cancellableContinuationImpl);
            aVar.B(JobKt__JobKt.m(r0Var, false, aVar, 1, null));
            Unit unit = Unit.f67061a;
            aVarArr[i11] = aVar;
        }
        b bVar = new b(aVarArr);
        for (int i12 = 0; i12 < length; i12++) {
            aVarArr[i12].A(bVar);
        }
        if (cancellableContinuationImpl.isCompleted()) {
            bVar.b();
        } else {
            q.c(cancellableContinuationImpl, bVar);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }
}
