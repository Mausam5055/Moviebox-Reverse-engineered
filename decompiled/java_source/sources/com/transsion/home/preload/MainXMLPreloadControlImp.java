package com.transsion.home.preload;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.e;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.u;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.r0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes.dex */
public final class MainXMLPreloadControlImp implements b, f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f45533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f45534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f45535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f45536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f45537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f45538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f45539g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f45540h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f45541i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f45542j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f45543k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f45544l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f45545m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final n0 f45546n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final u f45547o;

    /* JADX INFO: renamed from: com.transsion.home.preload.MainXMLPreloadControlImp$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.home.preload.MainXMLPreloadControlImp$1", f = "MainXMLPreloadControlImp.kt", l = {71, 78, 85}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Activity activity, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$activity = activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = MainXMLPreloadControlImp.this.new AnonymousClass1(this.$activity, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00c6  */
        /* JADX WARN: Code duplicated, block: B:32:0x00c9  */
        /* JADX WARN: Code duplicated, block: B:34:0x010d A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:35:0x010e  */
        /* JADX WARN: Code duplicated, block: B:38:0x0117  */
        /* JADX WARN: Code duplicated, block: B:40:0x011a  */
        /* JADX WARN: Instruction removed from duplicated block: B:32:0x00c9, please report this as an issue */
        /* JADX WARN: Instruction removed from duplicated block: B:40:0x011a, please report this as an issue */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            n0 n0Var;
            View view;
            n0 n0Var2;
            View view2;
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    n0Var = (n0) this.L$0;
                    ResultKt.b(obj);
                } else if (i11 == 2) {
                    n0Var = (n0) this.L$0;
                    ResultKt.b(obj);
                    view = (View) obj;
                    if (!o0.g(n0Var)) {
                        return Unit.f67061a;
                    }
                    MainXMLPreloadControlImp.this.f45537e = view;
                    lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "---- itemRanking preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
                    r0 r0VarB = k.b(n0Var, y0.b(), null, new MainXMLPreloadControlImp$1$opMovieRankResult$1(this.$activity, null), 2, null);
                    this.L$0 = n0Var;
                    this.label = 3;
                    obj = r0VarB.i(this);
                    if (obj == objF) {
                        return objF;
                    }
                    n0Var2 = n0Var;
                } else {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    n0Var2 = (n0) this.L$0;
                    ResultKt.b(obj);
                }
                view2 = (View) obj;
                if (!o0.g(n0Var2)) {
                    return Unit.f67061a;
                }
                MainXMLPreloadControlImp.this.f45538f = view2;
                lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "---- itemSubjectOpView preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
                return Unit.f67061a;
            }
            ResultKt.b(obj);
            n0Var = (n0) this.L$0;
            if (Build.VERSION.SDK_INT == 30 && StringsKt.H(Build.MANUFACTURER, "TCL", true)) {
                return Unit.f67061a;
            }
            r0 r0VarB2 = k.b(n0Var, y0.b(), null, new MainXMLPreloadControlImp$1$postListResult$1(this.$activity, null), 2, null);
            this.L$0 = n0Var;
            this.label = 1;
            obj = r0VarB2.i(this);
            if (obj == objF) {
                return objF;
            }
            View view3 = (View) obj;
            if (!o0.g(n0Var)) {
                return Unit.f67061a;
            }
            MainXMLPreloadControlImp.this.f45533a = view3;
            lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "---- postListView preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
            r0 r0VarB3 = k.b(n0Var, y0.b(), null, new MainXMLPreloadControlImp$1$rankingResult$1(this.$activity, null), 2, null);
            this.L$0 = n0Var;
            this.label = 2;
            obj = r0VarB3.i(this);
            if (obj == objF) {
                return objF;
            }
            view = (View) obj;
            if (!o0.g(n0Var)) {
                return Unit.f67061a;
            }
            MainXMLPreloadControlImp.this.f45537e = view;
            lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "---- itemRanking preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
            r0 r0VarB4 = k.b(n0Var, y0.b(), null, new MainXMLPreloadControlImp$1$opMovieRankResult$1(this.$activity, null), 2, null);
            this.L$0 = n0Var;
            this.label = 3;
            obj = r0VarB4.i(this);
            if (obj == objF) {
                return objF;
            }
            n0Var2 = n0Var;
            view2 = (View) obj;
            if (!o0.g(n0Var2)) {
                return Unit.f67061a;
            }
            MainXMLPreloadControlImp.this.f45538f = view2;
            lg.a.C0828a.f(lg.a.f68839a, "MainXMLPreload", "---- itemSubjectOpView preload success, ThreadName = " + Thread.currentThread().getName(), false, 4, null);
            return Unit.f67061a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MainXMLPreloadControlImp(Activity activity) {
        Lifecycle lifecycle;
        Intrinsics.h(activity, "activity");
        n0 n0VarA = o0.a(l2.b(null, 1, null).plus(y0.a()));
        this.f45546n = n0VarA;
        u uVar = activity instanceof u ? (u) activity : null;
        this.f45547o = uVar;
        if (uVar != null && (lifecycle = uVar.getLifecycle()) != null) {
            lifecycle.a(this);
        }
        k.d(n0VarA, null, null, new AnonymousClass1(activity, null), 3, null);
    }

    @Override // com.transsion.home.preload.b
    public boolean a() {
        return this.f45545m;
    }

    @Override // com.transsion.home.preload.b
    public boolean b() {
        return this.f45542j;
    }

    @Override // com.transsion.home.preload.b
    public View c() {
        this.f45545m = true;
        return this.f45538f;
    }

    @Override // com.transsion.home.preload.b
    public View d() {
        this.f45542j = true;
        return this.f45537e;
    }

    @Override // com.transsion.home.preload.b
    public boolean e() {
        return this.f45539g;
    }

    @Override // com.transsion.home.preload.b
    public View f() {
        this.f45539g = true;
        return this.f45533a;
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(u uVar) {
        e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onDestroy(u owner) {
        Intrinsics.h(owner, "owner");
        e.b(this, owner);
        owner.getLifecycle().d(this);
        reset();
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(u uVar) {
        e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(u uVar) {
        e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStart(u uVar) {
        e.e(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onStop(u uVar) {
        e.f(this, uVar);
    }

    @Override // com.transsion.home.preload.b
    public void reset() {
        o0.d(this.f45546n, null, 1, null);
        this.f45533a = null;
        this.f45536d = null;
        this.f45537e = null;
        this.f45534b = null;
        this.f45535c = null;
        this.f45538f = null;
        this.f45539g = false;
        this.f45543k = false;
        this.f45544l = false;
        this.f45540h = false;
        this.f45541i = false;
        this.f45542j = false;
        this.f45545m = false;
    }
}
