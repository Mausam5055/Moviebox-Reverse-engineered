package androidx.work.impl;

import android.content.Context;
import androidx.core.view.InputDeviceCompat;
import androidx.work.ListenableFutureKt;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.model.s1;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public final class WorkerWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.work.impl.model.j0 f15513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f15514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f15515c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WorkerParameters.a f15516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.work.s f15517e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j4.c f15518f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.work.b f15519g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.work.a f15520h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.work.impl.foreground.a f15521i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final WorkDatabase f15522j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.work.impl.model.k0 f15523k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.work.impl.model.b f15524l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final List f15525m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f15526n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final kotlinx.coroutines.z f15527o;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.work.b f15528a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final j4.c f15529b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.work.impl.foreground.a f15530c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final WorkDatabase f15531d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.work.impl.model.j0 f15532e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final List f15533f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Context f15534g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private androidx.work.s f15535h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private WorkerParameters.a f15536i;

        public a(Context context, androidx.work.b configuration, j4.c workTaskExecutor, androidx.work.impl.foreground.a foregroundProcessor, WorkDatabase workDatabase, androidx.work.impl.model.j0 workSpec, List tags) {
            Intrinsics.h(context, "context");
            Intrinsics.h(configuration, "configuration");
            Intrinsics.h(workTaskExecutor, "workTaskExecutor");
            Intrinsics.h(foregroundProcessor, "foregroundProcessor");
            Intrinsics.h(workDatabase, "workDatabase");
            Intrinsics.h(workSpec, "workSpec");
            Intrinsics.h(tags, "tags");
            this.f15528a = configuration;
            this.f15529b = workTaskExecutor;
            this.f15530c = foregroundProcessor;
            this.f15531d = workDatabase;
            this.f15532e = workSpec;
            this.f15533f = tags;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            this.f15534g = applicationContext;
            this.f15536i = new WorkerParameters.a();
        }

        public final WorkerWrapper a() {
            return new WorkerWrapper(this);
        }

        public final Context b() {
            return this.f15534g;
        }

        public final androidx.work.b c() {
            return this.f15528a;
        }

        public final androidx.work.impl.foreground.a d() {
            return this.f15530c;
        }

        public final WorkerParameters.a e() {
            return this.f15536i;
        }

        public final List f() {
            return this.f15533f;
        }

        public final WorkDatabase g() {
            return this.f15531d;
        }

        public final androidx.work.impl.model.j0 h() {
            return this.f15532e;
        }

        public final j4.c i() {
            return this.f15529b;
        }

        public final androidx.work.s j() {
            return this.f15535h;
        }

        public final a k(WorkerParameters.a aVar) {
            if (aVar != null) {
                this.f15536i = aVar;
            }
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes2.dex */
    static abstract class b {

        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final androidx.work.s.a f15537a;

            /* JADX WARN: Multi-variable type inference failed */
            public a() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(androidx.work.s.a result) {
                super(null);
                Intrinsics.h(result, "result");
                this.f15537a = result;
            }

            public /* synthetic */ a(androidx.work.s.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
                this((i11 & 1) != 0 ? new androidx.work.s.a.C0136a() : aVar);
            }

            public final androidx.work.s.a a() {
                return this.f15537a;
            }
        }

        /* JADX INFO: renamed from: androidx.work.impl.WorkerWrapper$b$b, reason: collision with other inner class name */
        public static final class C0132b extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final androidx.work.s.a f15538a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0132b(androidx.work.s.a result) {
                super(null);
                Intrinsics.h(result, "result");
                this.f15538a = result;
            }

            public final androidx.work.s.a a() {
                return this.f15538a;
            }
        }

        public static final class c extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final int f15539a;

            public c() {
                this(0, 1, null);
            }

            public c(int i11) {
                super(null);
                this.f15539a = i11;
            }

            public /* synthetic */ c(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
                this((i12 & 1) != 0 ? InputDeviceCompat.SOURCE_ANY : i11);
            }

            public final int a() {
                return this.f15539a;
            }
        }

        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public WorkerWrapper(a builder) {
        Intrinsics.h(builder, "builder");
        androidx.work.impl.model.j0 j0VarH = builder.h();
        this.f15513a = j0VarH;
        this.f15514b = builder.b();
        this.f15515c = j0VarH.f15764a;
        this.f15516d = builder.e();
        this.f15517e = builder.j();
        this.f15518f = builder.i();
        androidx.work.b bVarC = builder.c();
        this.f15519g = bVarC;
        this.f15520h = bVarC.a();
        this.f15521i = builder.d();
        WorkDatabase workDatabaseG = builder.g();
        this.f15522j = workDatabaseG;
        this.f15523k = workDatabaseG.l0();
        this.f15524l = workDatabaseG.g0();
        List listF = builder.f();
        this.f15525m = listF;
        this.f15526n = l(listF);
        this.f15527o = JobKt__JobKt.b(null, 1, null);
    }

    private final boolean B(androidx.work.s.a aVar) {
        this.f15523k.s(WorkInfo.State.SUCCEEDED, this.f15515c);
        Intrinsics.f(aVar, "null cannot be cast to non-null type androidx.work.ListenableWorker.Result.Success");
        androidx.work.f fVarD = ((androidx.work.s.a.c) aVar).d();
        Intrinsics.g(fVarD, "getOutputData(...)");
        this.f15523k.t(this.f15515c, fVarD);
        long jCurrentTimeMillis = this.f15520h.currentTimeMillis();
        for (String str : this.f15524l.b(this.f15515c)) {
            if (this.f15523k.i(str) == WorkInfo.State.BLOCKED && this.f15524l.c(str)) {
                String str2 = r1.f15910a;
                androidx.work.t.e().f(str2, "Setting status to enqueued for " + str);
                this.f15523k.s(WorkInfo.State.ENQUEUED, str);
                this.f15523k.u(str, jCurrentTimeMillis);
            }
        }
        return false;
    }

    private final boolean C() {
        Object objY = this.f15522j.Y(new Callable() { // from class: androidx.work.impl.p1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WorkerWrapper.D(this.f15901a);
            }
        });
        Intrinsics.g(objY, "runInTransaction(...)");
        return ((Boolean) objY).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean D(WorkerWrapper workerWrapper) {
        boolean z10;
        if (workerWrapper.f15523k.i(workerWrapper.f15515c) == WorkInfo.State.ENQUEUED) {
            workerWrapper.f15523k.s(WorkInfo.State.RUNNING, workerWrapper.f15515c);
            workerWrapper.f15523k.z(workerWrapper.f15515c);
            workerWrapper.f15523k.a(workerWrapper.f15515c, InputDeviceCompat.SOURCE_ANY);
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    private final String l(List list) {
        return "Work [ id=" + this.f15515c + ", tags={ " + CollectionsKt.s0(list, ",", null, null, 0, null, null, 62, null) + " } ]";
    }

    private final boolean o(androidx.work.s.a aVar) {
        if (aVar instanceof androidx.work.s.a.c) {
            String str = r1.f15910a;
            androidx.work.t.e().f(str, "Worker result SUCCESS for " + this.f15526n);
            return this.f15513a.o() ? v() : B(aVar);
        }
        if (aVar instanceof androidx.work.s.a.b) {
            String str2 = r1.f15910a;
            androidx.work.t.e().f(str2, "Worker result RETRY for " + this.f15526n);
            return u(InputDeviceCompat.SOURCE_ANY);
        }
        String str3 = r1.f15910a;
        androidx.work.t.e().f(str3, "Worker result FAILURE for " + this.f15526n);
        if (this.f15513a.o()) {
            return v();
        }
        if (aVar == null) {
            aVar = new androidx.work.s.a.C0136a();
        }
        return A(aVar);
    }

    private final void q(String str) {
        List listQ = CollectionsKt.q(str);
        while (!listQ.isEmpty()) {
            String str2 = (String) CollectionsKt.L(listQ);
            if (this.f15523k.i(str2) != WorkInfo.State.CANCELLED) {
                this.f15523k.s(WorkInfo.State.FAILED, str2);
            }
            listQ.addAll(this.f15524l.b(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean s(androidx.work.s.a aVar) {
        String str = r1.f15910a;
        androidx.work.t.e().f(str, "Worker result FAILURE for " + this.f15526n);
        if (this.f15513a.o()) {
            v();
            return false;
        }
        A(aVar);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean t(androidx.work.s.a aVar) {
        WorkInfo.State stateI = this.f15523k.i(this.f15515c);
        this.f15522j.k0().b(this.f15515c);
        if (stateI == null) {
            return false;
        }
        if (stateI == WorkInfo.State.RUNNING) {
            return o(aVar);
        }
        if (stateI.isFinished()) {
            return false;
        }
        return u(-512);
    }

    private final boolean u(int i11) {
        this.f15523k.s(WorkInfo.State.ENQUEUED, this.f15515c);
        this.f15523k.u(this.f15515c, this.f15520h.currentTimeMillis());
        this.f15523k.B(this.f15515c, this.f15513a.i());
        this.f15523k.o(this.f15515c, -1L);
        this.f15523k.a(this.f15515c, i11);
        return true;
    }

    private final boolean v() {
        this.f15523k.u(this.f15515c, this.f15520h.currentTimeMillis());
        this.f15523k.s(WorkInfo.State.ENQUEUED, this.f15515c);
        this.f15523k.x(this.f15515c);
        this.f15523k.B(this.f15515c, this.f15513a.i());
        this.f15523k.d(this.f15515c);
        this.f15523k.o(this.f15515c, -1L);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean w(int i11) {
        if (Intrinsics.c(this.f15513a.f(), Boolean.TRUE)) {
            String str = r1.f15910a;
            androidx.work.t.e().a(str, "Worker " + this.f15513a.f15766c + " was interrupted. Backing off.");
            u(i11);
            return true;
        }
        WorkInfo.State stateI = this.f15523k.i(this.f15515c);
        if (stateI == null || stateI.isFinished()) {
            String str2 = r1.f15910a;
            androidx.work.t.e().a(str2, "Status for " + this.f15515c + " is " + stateI + " ; not doing any work");
            return false;
        }
        String str3 = r1.f15910a;
        androidx.work.t.e().a(str3, "Status for " + this.f15515c + " is " + stateI + "; not doing any work and rescheduling for later execution");
        this.f15523k.s(WorkInfo.State.ENQUEUED, this.f15515c);
        this.f15523k.a(this.f15515c, i11);
        this.f15523k.o(this.f15515c, -1L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:67:0x021d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object x(Continuation continuation) throws Throwable {
        WorkerWrapper$runWorker$1 workerWrapper$runWorker$1;
        androidx.work.f fVarA;
        WorkerParameters workerParameters;
        androidx.core.util.a aVarP;
        if (continuation instanceof WorkerWrapper$runWorker$1) {
            workerWrapper$runWorker$1 = (WorkerWrapper$runWorker$1) continuation;
            int i11 = workerWrapper$runWorker$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                workerWrapper$runWorker$1.label = i11 - Integer.MIN_VALUE;
            } else {
                workerWrapper$runWorker$1 = new WorkerWrapper$runWorker$1(this, continuation);
            }
        } else {
            workerWrapper$runWorker$1 = new WorkerWrapper$runWorker$1(this, continuation);
        }
        Object objG = workerWrapper$runWorker$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = workerWrapper$runWorker$1.label;
        int i13 = 1;
        DefaultConstructorMarker defaultConstructorMarker = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            if (i12 == 0) {
                ResultKt.b(objG);
                final boolean zIsEnabled = this.f15519g.n().isEnabled();
                final String strL = this.f15513a.l();
                if (zIsEnabled && strL != null) {
                    this.f15519g.n().c(strL, this.f15513a.hashCode());
                }
                int i14 = 0;
                if (((Boolean) this.f15522j.Y(new Callable() { // from class: androidx.work.impl.n1
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return WorkerWrapper.y(this.f15891a);
                    }
                })).booleanValue()) {
                    return new b.c(i14, i13, defaultConstructorMarker);
                }
                if (this.f15513a.o()) {
                    fVarA = this.f15513a.f15768e;
                } else {
                    androidx.work.k kVarB = this.f15519g.f().b(this.f15513a.f15767d);
                    if (kVarB == null) {
                        String str = r1.f15910a;
                        androidx.work.t.e().c(str, "Could not create Input Merger " + this.f15513a.f15767d);
                        return new b.a(objArr2 == true ? 1 : 0, i13, objArr == true ? 1 : 0);
                    }
                    fVarA = kVarB.a(CollectionsKt.B0(CollectionsKt.e(this.f15513a.f15768e), this.f15523k.l(this.f15515c)));
                }
                androidx.work.f fVar = fVarA;
                UUID uuidFromString = UUID.fromString(this.f15515c);
                List list = this.f15525m;
                WorkerParameters.a aVar = this.f15516d;
                androidx.work.impl.model.j0 j0Var = this.f15513a;
                WorkerParameters workerParameters2 = new WorkerParameters(uuidFromString, fVar, list, aVar, j0Var.f15774k, j0Var.g(), this.f15519g.d(), this.f15519g.o(), this.f15518f, this.f15519g.q(), new androidx.work.impl.utils.f0(this.f15522j, this.f15518f), new androidx.work.impl.utils.e0(this.f15522j, this.f15521i, this.f15518f));
                final androidx.work.s sVarB = this.f15517e;
                if (sVarB == null) {
                    try {
                        sVarB = this.f15519g.q().b(this.f15514b, this.f15513a.f15766c, workerParameters2);
                    } catch (Throwable th2) {
                        String str2 = r1.f15910a;
                        androidx.work.t.e().c(str2, "Could not create Worker " + this.f15513a.f15766c);
                        androidx.core.util.a aVarR = this.f15519g.r();
                        if (aVarR != null) {
                            androidx.work.impl.utils.g0.a(aVarR, new androidx.work.l0(this.f15513a.f15766c, workerParameters2, th2), r1.f15910a);
                        }
                        return new b.a(null, 1, 0 == true ? 1 : 0);
                    }
                }
                sVarB.k();
                CoroutineContext.Element element = workerWrapper$runWorker$1.getContext().get(t1.f67996l1);
                Intrinsics.e(element);
                t1 t1Var = (t1) element;
                t1Var.invokeOnCompletion(new Function1() { // from class: androidx.work.impl.o1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return WorkerWrapper.z(sVarB, zIsEnabled, strL, this, (Throwable) obj);
                    }
                });
                if (!C()) {
                    return new b.c(0, 1, null);
                }
                int i15 = 1;
                DefaultConstructorMarker defaultConstructorMarker2 = null;
                int i16 = 0;
                if (t1Var.isCancelled()) {
                    return new b.c(i16, i15, defaultConstructorMarker2);
                }
                androidx.work.j jVarB = workerParameters2.b();
                Intrinsics.g(jVarB, "getForegroundUpdater(...)");
                Executor executorA = this.f15518f.a();
                Intrinsics.g(executorA, "getMainThreadExecutor(...)");
                kotlinx.coroutines.i0 i0VarB = kotlinx.coroutines.m1.b(executorA);
                try {
                    WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1 = new WorkerWrapper$runWorker$result$1(this, sVarB, jVarB, null);
                    workerWrapper$runWorker$1.L$0 = workerParameters2;
                    workerWrapper$runWorker$1.label = 1;
                    objG = kotlinx.coroutines.i.g(i0VarB, workerWrapper$runWorker$result$1, workerWrapper$runWorker$1);
                    if (objG == objF) {
                        return objF;
                    }
                    workerParameters = workerParameters2;
                } catch (Throwable th3) {
                    th = th3;
                    workerParameters = workerParameters2;
                    String str3 = r1.f15910a;
                    androidx.work.t.e().d(str3, this.f15526n + " failed because it threw an exception/error", th);
                    aVarP = this.f15519g.p();
                    if (aVarP != null) {
                        androidx.work.impl.utils.g0.a(aVarP, new androidx.work.l0(this.f15513a.f15766c, workerParameters, th), r1.f15910a);
                    }
                    return new b.a(null, 1, 0 == true ? 1 : 0);
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                workerParameters = (WorkerParameters) workerWrapper$runWorker$1.L$0;
                try {
                    ResultKt.b(objG);
                } catch (Throwable th4) {
                    th = th4;
                    String str4 = r1.f15910a;
                    androidx.work.t.e().d(str4, this.f15526n + " failed because it threw an exception/error", th);
                    aVarP = this.f15519g.p();
                    if (aVarP != null) {
                        androidx.work.impl.utils.g0.a(aVarP, new androidx.work.l0(this.f15513a.f15766c, workerParameters, th), r1.f15910a);
                    }
                    return new b.a(null, 1, 0 == true ? 1 : 0);
                }
            }
            androidx.work.s.a aVar2 = (androidx.work.s.a) objG;
            Intrinsics.e(aVar2);
            return new b.C0132b(aVar2);
        } catch (CancellationException e11) {
            String str5 = r1.f15910a;
            androidx.work.t.e().g(str5, this.f15526n + " was cancelled", e11);
            throw e11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean y(WorkerWrapper workerWrapper) {
        androidx.work.impl.model.j0 j0Var = workerWrapper.f15513a;
        if (j0Var.f15765b != WorkInfo.State.ENQUEUED) {
            String str = r1.f15910a;
            androidx.work.t.e().a(str, workerWrapper.f15513a.f15766c + " is not in ENQUEUED state. Nothing more to do");
            return Boolean.TRUE;
        }
        if ((!j0Var.o() && !workerWrapper.f15513a.n()) || workerWrapper.f15520h.currentTimeMillis() >= workerWrapper.f15513a.c()) {
            return Boolean.FALSE;
        }
        androidx.work.t.e().a(r1.f15910a, "Delaying execution for " + workerWrapper.f15513a.f15766c + " because it is being executed before schedule.");
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z(androidx.work.s sVar, boolean z10, String str, WorkerWrapper workerWrapper, Throwable th2) {
        if (th2 instanceof WorkerStoppedException) {
            sVar.m(((WorkerStoppedException) th2).getReason());
        }
        if (z10 && str != null) {
            workerWrapper.f15519g.n().b(str, workerWrapper.f15513a.hashCode());
        }
        return Unit.f67061a;
    }

    public final boolean A(androidx.work.s.a result) {
        Intrinsics.h(result, "result");
        q(this.f15515c);
        androidx.work.f fVarD = ((androidx.work.s.a.C0136a) result).d();
        Intrinsics.g(fVarD, "getOutputData(...)");
        this.f15523k.B(this.f15515c, this.f15513a.i());
        this.f15523k.t(this.f15515c, fVarD);
        return false;
    }

    public final androidx.work.impl.model.x m() {
        return s1.a(this.f15513a);
    }

    public final androidx.work.impl.model.j0 n() {
        return this.f15513a;
    }

    public final void p(int i11) {
        this.f15527o.cancel(new WorkerStoppedException(i11));
    }

    public final com.google.common.util.concurrent.r r() {
        return ListenableFutureKt.k(this.f15518f.b().plus(JobKt__JobKt.b(null, 1, null)), null, new WorkerWrapper$launch$1(this, null), 2, null);
    }
}
