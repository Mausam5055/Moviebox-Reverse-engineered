package com.cloud.hisavana.sdk.manager;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.j;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.abtestkit.bean.ABVariant;
import com.cloud.hisavana.abtestkit.bean.ABVariantState;
import com.cloud.hisavana.sdk.c1;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.bean.SSPParamSplicedResult;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ABTest;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomTabConfigDTO;
import com.cloud.hisavana.sdk.e4;
import com.cloud.hisavana.sdk.j3;
import com.cloud.hisavana.sdk.k4;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.m;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f22659g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile long f22661i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static WeakReference f22664l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static boolean f22665m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static boolean f22666n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f22667o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static long f22668p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static long f22669q;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static androidx.browser.customtabs.f f22673u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static CustomTabsClient f22674v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static j f22675w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static boolean f22676x;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f22653a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Long f22654b = 0L;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Long f22655c = 0L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Long f22656d = 0L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Integer f22657e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Integer f22658f = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Integer f22660h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static String f22662j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static String f22663k = "";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static long f22670r = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static long f22671s = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static long f22672t = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final e f22677y = new e();

    /* JADX INFO: renamed from: com.cloud.hisavana.sdk.manager.a$a, reason: collision with other inner class name */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager", f = "CustomTabsManager.kt", l = {517}, m = "bindCCTServiceAndCreatSession")
    static final class C0307a extends ContinuationImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f22678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f22679b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        /* synthetic */ Object f22680c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f22682e;

        C0307a(Continuation<? super C0307a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f22680c = obj;
            this.f22682e |= Integer.MIN_VALUE;
            return a.this.h(null, false, this);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)I"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$bindCCTServiceAndCreatSession$isBindServiceSuccess$1", f = "CustomTabsManager.kt", l = {518}, m = "invokeSuspend")
    static final class b extends SuspendLambda implements Function2<n0, Continuation<? super Integer>, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f22683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f22684b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Context context, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f22684b = context;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(n0 n0Var, Continuation<? super Integer> continuation) {
            return ((b) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new b(this.f22684b, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.f22683a;
            if (i11 == 0) {
                ResultKt.b(obj);
                a aVar = a.f22653a;
                Context context = this.f22684b;
                this.f22683a = 1;
                obj = aVar.g(context, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return obj;
        }
    }

    public static final class c extends androidx.browser.customtabs.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ n f22685a;

        c(n nVar) {
            this.f22685a = nVar;
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(ComponentName componentName) {
            super.onBindingDied(componentName);
            a.f22653a.j0();
            e4.b().d("CustomTabsManager", "cct onBindingDied");
        }

        @Override // androidx.browser.customtabs.f
        public void onCustomTabsServiceConnected(ComponentName name, CustomTabsClient client) {
            Intrinsics.h(name, "name");
            Intrinsics.h(client, "client");
            e4.b().d("CustomTabsManager", "onCustomTabsServiceConnected");
            a.f22674v = client;
            try {
                if (this.f22685a.isActive()) {
                    n nVar = this.f22685a;
                    Result.Companion companion = Result.INSTANCE;
                    nVar.resumeWith(Result.m454constructorimpl(0));
                }
            } catch (Throwable th2) {
                e4.b().d("CustomTabsManager", "cct onCustomTabsServiceConnected", th2);
            }
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(ComponentName componentName) {
            super.onNullBinding(componentName);
            a.f22653a.j0();
            e4.b().d("CustomTabsManager", "cct onNullBinding");
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Intrinsics.h(componentName, "componentName");
            a.f22653a.j0();
            e4.b().d("CustomTabsManager", "cct onServiceDisconnected");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$bindCustomTabsService$2$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    static final class d extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f22686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f22687b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ n f22688c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, n nVar, Continuation<? super d> continuation) {
            super(2, continuation);
            this.f22687b = context;
            this.f22688c = nVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((d) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new d(this.f22687b, this.f22688c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.f22686a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                Context context = this.f22687b;
                androidx.browser.customtabs.f fVar = a.f22673u;
                Intrinsics.f(fVar, "null cannot be cast to non-null type androidx.browser.customtabs.CustomTabsServiceConnection");
                boolean zA = CustomTabsClient.a(context, "com.android.chrome", fVar);
                if (!zA) {
                    n nVar = this.f22688c;
                    Result.Companion companion = Result.INSTANCE;
                    nVar.resumeWith(Result.m454constructorimpl(Boxing.d(TaErrorCode.CLICK_ERROR_CODE_CCT_BIND_FAILED)));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("bindCustomTabsService, result=");
                sb2.append(zA);
            } catch (Throwable unused) {
            }
            return Unit.f67061a;
        }
    }

    public static final class e extends androidx.browser.customtabs.c {

        /* JADX INFO: renamed from: com.cloud.hisavana.sdk.manager.a$e$a, reason: collision with other inner class name */
        public static final class C0308a implements m.b {
            C0308a() {
            }

            @Override // com.cloud.sdk.commonutil.util.m.b
            public void a(String str) {
                a.f22653a.N(str);
            }
        }

        e() {
        }

        @Override // androidx.browser.customtabs.c
        public void onNavigationEvent(int i11, Bundle bundle) {
            switch (i11) {
                case 1:
                    e4.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_STARTED");
                    if (a.f22668p == 0) {
                        a.f22668p = System.currentTimeMillis();
                    }
                    break;
                case 2:
                    e4.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_FINISHED");
                    if (a.f22671s == -1) {
                        a.f22671s = System.currentTimeMillis() - a.f22668p;
                        e4.b().d("CustomTabsManager", "onNavigationEvent, NAVIGATION_FINISHED, time taken: " + a.f22671s + " ms");
                        a.f22653a.H(0, a.f22671s);
                    }
                    break;
                case 3:
                    if (a.f22671s == -1 && a.f22672t == -1) {
                        a.f22672t = System.currentTimeMillis() - a.f22668p;
                        a.f22653a.n(TaErrorCode.CCT_LOAD_FAILED, a.f22672t);
                    }
                    e4.b().e("CustomTabsManager", "onNavigationEvent, NAVIGATION_FAILED");
                    break;
                case 4:
                    if (a.f22670r == -1) {
                        a.f22670r = System.currentTimeMillis() - a.f22668p;
                    }
                    e4.b().e("CustomTabsManager", "onNavigationEvent, NAVIGATION_ABORTED");
                    break;
                case 5:
                    e4.b().d("CustomTabsManager", "onNavigationEvent, TAB_SHOWN");
                    a.f22666n = false;
                    if (a.f22665m) {
                        a.f22665m = false;
                        m.k(new C0308a());
                    }
                    break;
                case 6:
                    a.f22666n = true;
                    e4.b().d("CustomTabsManager", "onNavigationEvent, TAB_HIDDEN");
                    a.f22653a.N("");
                    break;
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1", f = "CustomTabsManager.kt", l = {641, 644, 651, 657}, m = "invokeSuspend")
    static final class f extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f22689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f22690b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f22691c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f22692d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22693e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ DownUpPointBean f22694f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ Function1<Integer, Unit> f22695g;

        /* JADX INFO: renamed from: com.cloud.hisavana.sdk.manager.a$f$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
        @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkAndLaunchCCTLandingPage$1$1", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
        static final class C0309a extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f22696a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Function1<Integer, Unit> f22697b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ Ref.IntRef f22698c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0309a(Function1<? super Integer, Unit> function1, Ref.IntRef intRef, Continuation<? super C0309a> continuation) {
                super(2, continuation);
                this.f22697b = function1;
                this.f22698c = intRef;
            }

            @Override // kotlin.jvm.functions.Function2
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                return ((C0309a) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C0309a(this.f22697b, this.f22698c, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                IntrinsicsKt.f();
                if (this.f22696a != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                this.f22697b.invoke(Boxing.d(this.f22698c.element));
                return Unit.f67061a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        f(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Function1<? super Integer, Unit> function1, Continuation<? super f> continuation) {
            super(2, continuation);
            this.f22692d = context;
            this.f22693e = adsDTO;
            this.f22694f = downUpPointBean;
            this.f22695g = function1;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((f) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new f(this.f22692d, this.f22693e, this.f22694f, this.f22695g, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:31:0x007f  */
        /* JADX WARN: Code duplicated, block: B:36:0x0088 A[Catch: all -> 0x00e3, TryCatch #0 {all -> 0x00e3, blocks: (B:8:0x0014, B:13:0x0029, B:47:0x00bf, B:49:0x00ca, B:16:0x0036, B:41:0x00a1, B:19:0x003e, B:29:0x0077, B:36:0x0088, B:37:0x008b, B:22:0x0045, B:24:0x0063, B:26:0x0069, B:43:0x00ab, B:48:0x00c8), top: B:55:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:37:0x008b A[Catch: all -> 0x00e3, TryCatch #0 {all -> 0x00e3, blocks: (B:8:0x0014, B:13:0x0029, B:47:0x00bf, B:49:0x00ca, B:16:0x0036, B:41:0x00a1, B:19:0x003e, B:29:0x0077, B:36:0x0088, B:37:0x008b, B:22:0x0045, B:24:0x0063, B:26:0x0069, B:43:0x00ab, B:48:0x00c8), top: B:55:0x000a }] */
        /* JADX WARN: Code duplicated, block: B:39:0x009f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
        /* JADX WARN: Code duplicated, block: B:51:0x00e2 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Ref.IntRef intRef;
            Ref.IntRef intRef2;
            int iIntValue;
            a2 a2VarC;
            C0309a c0309a;
            Object objF = IntrinsicsKt.f();
            int i11 = this.f22691c;
            try {
                if (i11 == 0) {
                    ResultKt.b(obj);
                    intRef = new Ref.IntRef();
                    intRef.element = -1;
                    a aVar = a.f22653a;
                    aVar.d0();
                    a.f22669q = System.currentTimeMillis();
                    int iA = aVar.a(this.f22692d, this.f22693e);
                    if (iA != 0) {
                        intRef.element = iA;
                    } else if (aVar.U(true)) {
                        Context context = this.f22692d;
                        AdsDTO adsDTO = this.f22693e;
                        DownUpPointBean downUpPointBean = this.f22694f;
                        this.f22689a = intRef;
                        this.f22690b = intRef;
                        this.f22691c = 3;
                        obj = aVar.e(context, adsDTO, downUpPointBean, this);
                        if (obj == objF) {
                            return objF;
                        }
                        intRef2 = intRef;
                        intRef.element = ((Number) obj).intValue();
                        intRef = intRef2;
                    } else {
                        Context context2 = this.f22692d;
                        this.f22689a = intRef;
                        this.f22691c = 1;
                        obj = aVar.h(context2, false, this);
                        if (obj == objF) {
                            return objF;
                        }
                        iIntValue = ((Number) obj).intValue();
                        if (iIntValue != 0) {
                            a aVar2 = a.f22653a;
                            Context context3 = this.f22692d;
                            AdsDTO adsDTO2 = this.f22693e;
                            DownUpPointBean downUpPointBean2 = this.f22694f;
                            this.f22689a = intRef;
                            this.f22690b = intRef;
                            this.f22691c = 2;
                            obj = aVar2.e(context3, adsDTO2, downUpPointBean2, this);
                            if (obj == objF) {
                                return objF;
                            }
                            intRef2 = intRef;
                            intRef.element = ((Number) obj).intValue();
                            intRef = intRef2;
                        } else if (iIntValue != 7006) {
                            intRef.element = iIntValue;
                        } else {
                            intRef.element = iIntValue;
                        }
                    }
                    a2VarC = y0.c();
                    c0309a = new C0309a(this.f22695g, intRef, null);
                    this.f22689a = null;
                    this.f22690b = null;
                    this.f22691c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0309a, this) == objF) {
                        return objF;
                    }
                } else if (i11 == 1) {
                    intRef = (Ref.IntRef) this.f22689a;
                    ResultKt.b(obj);
                    iIntValue = ((Number) obj).intValue();
                    if (iIntValue != 0) {
                        a aVar3 = a.f22653a;
                        Context context4 = this.f22692d;
                        AdsDTO adsDTO3 = this.f22693e;
                        DownUpPointBean downUpPointBean3 = this.f22694f;
                        this.f22689a = intRef;
                        this.f22690b = intRef;
                        this.f22691c = 2;
                        obj = aVar3.e(context4, adsDTO3, downUpPointBean3, this);
                        if (obj == objF) {
                            return objF;
                        }
                        intRef2 = intRef;
                        intRef.element = ((Number) obj).intValue();
                        intRef = intRef2;
                    } else if (iIntValue != 7006 || iIntValue == 7007) {
                        intRef.element = iIntValue;
                    }
                    a2VarC = y0.c();
                    c0309a = new C0309a(this.f22695g, intRef, null);
                    this.f22689a = null;
                    this.f22690b = null;
                    this.f22691c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0309a, this) == objF) {
                        return objF;
                    }
                } else if (i11 == 2) {
                    intRef = (Ref.IntRef) this.f22690b;
                    intRef2 = (Ref.IntRef) this.f22689a;
                    ResultKt.b(obj);
                    intRef.element = ((Number) obj).intValue();
                    intRef = intRef2;
                    a2VarC = y0.c();
                    c0309a = new C0309a(this.f22695g, intRef, null);
                    this.f22689a = null;
                    this.f22690b = null;
                    this.f22691c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0309a, this) == objF) {
                        return objF;
                    }
                } else if (i11 == 3) {
                    intRef = (Ref.IntRef) this.f22690b;
                    intRef2 = (Ref.IntRef) this.f22689a;
                    ResultKt.b(obj);
                    intRef.element = ((Number) obj).intValue();
                    intRef = intRef2;
                    a2VarC = y0.c();
                    c0309a = new C0309a(this.f22695g, intRef, null);
                    this.f22689a = null;
                    this.f22690b = null;
                    this.f22691c = 4;
                    if (kotlinx.coroutines.i.g(a2VarC, c0309a, this) == objF) {
                        return objF;
                    }
                } else {
                    if (i11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
            } catch (Throwable unused) {
            }
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)I"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$checkIsNeedBindServiceOrWarmUp$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    static final class g extends SuspendLambda implements Function2<n0, Continuation<? super Integer>, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f22699a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f22701c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(AdsDTO adsDTO, Context context, Continuation<? super g> continuation) {
            super(2, continuation);
            this.f22700b = adsDTO;
            this.f22701c = context;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(n0 n0Var, Continuation<? super Integer> continuation) {
            return ((g) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new g(this.f22700b, this.f22701c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            AdsDTO adsDTO;
            String clickUrl;
            String clickUrl2;
            String offlineH5Url;
            IntrinsicsKt.f();
            if (this.f22699a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            a aVar = a.f22653a;
            if (aVar.U(false) && a.f22676x) {
                return Boxing.d(1);
            }
            if (aVar.U(false) && !a.f22676x) {
                return Boxing.d(3);
            }
            int iB0 = aVar.b0();
            if (iB0 == 7014 || iB0 == 7020 || iB0 == 7021) {
                e4.b().d("CustomTabsManager", "cct abtest switch state closed checkCCTabTest->" + iB0);
                return Boxing.d(2);
            }
            if (!com.cloud.hisavana.sdk.common.util.b.f22148a.f(this.f22700b)) {
                return Boxing.d(2);
            }
            AdsDTO adsDTO2 = this.f22700b;
            if (adsDTO2 != null && adsDTO2.isOfflineAd() && (offlineH5Url = this.f22700b.getOfflineH5Url()) != null && offlineH5Url.length() == 0) {
                e4.b().d("CustomTabsManager", "offline page,not warmup");
                return Boxing.d(2);
            }
            AdsDTO adsDTO3 = this.f22700b;
            if (adsDTO3 != null && adsDTO3.isOfflineAd() && !NetStateManager.checkNetworkState(false)) {
                e4.b().d("CustomTabsManager", "offline page,not warmup");
                return Boxing.d(2);
            }
            AdsDTO adsDTO4 = this.f22700b;
            if ((adsDTO4 != null && (clickUrl2 = adsDTO4.getClickUrl()) != null && clickUrl2.length() == 0) || ((adsDTO = this.f22700b) != null && (clickUrl = adsDTO.getClickUrl()) != null && !StringsKt.W(clickUrl, "http", false, 2, null))) {
                e4.b().d("CustomTabsManager", "not http,not warmup");
                return Boxing.d(2);
            }
            int iA = aVar.a(this.f22701c, this.f22700b);
            if (iA == 0) {
                return Boxing.d(4);
            }
            e4.b().d("CustomTabsManager", "cct switch state closed,code: " + iA);
            aVar.o(iA, false);
            return Boxing.d(5);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$creatCCTServiceAsyncIfNeeded$1", f = "CustomTabsManager.kt", l = {434, 450}, m = "invokeSuspend")
    static final class h extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f22702a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f22703b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f22704c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22705d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f22706e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(Context context, AdsDTO adsDTO, boolean z10, Continuation<? super h> continuation) {
            super(2, continuation);
            this.f22704c = context;
            this.f22705d = adsDTO;
            this.f22706e = z10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((h) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new h(this.f22704c, this.f22705d, this.f22706e, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:45:0x00a8 A[Catch: all -> 0x00b1, TRY_LEAVE, TryCatch #0 {all -> 0x00b1, blocks: (B:7:0x0012, B:43:0x008c, B:45:0x00a8, B:29:0x004b, B:30:0x0055, B:33:0x0064, B:35:0x006a, B:39:0x0074, B:40:0x0078, B:41:0x0082), top: B:49:0x000a }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            int iIntValue;
            int i11;
            Object objF = IntrinsicsKt.f();
            int i12 = this.f22703b;
            boolean z10 = true;
            try {
                try {
                    if (i12 != 0) {
                        if (i12 == 1) {
                            ResultKt.b(obj);
                        } else {
                            if (i12 != 2) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            i11 = this.f22702a;
                            ResultKt.b(obj);
                        }
                        e4.b().w("CustomTabsManager", "bind service end, checkIsNeedBindServiceOrWarmUp is " + i11);
                        if (this.f22706e) {
                            a.f22653a.q(this.f22704c, this.f22705d, i11);
                        }
                        return Unit.f67061a;
                    }
                    ResultKt.b(obj);
                    a aVar = a.f22653a;
                    Context context = this.f22704c;
                    AdsDTO adsDTO = this.f22705d;
                    this.f22703b = 1;
                    obj = aVar.f(context, adsDTO, this);
                    if (obj == objF) {
                        return objF;
                    }
                    iIntValue = ((Number) obj).intValue();
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                iIntValue = 2;
            }
            if (iIntValue == 1) {
                e4.b().d("CustomTabsManager", "CreatCCTServiceAsyncIfNeeded success now ");
            } else if (iIntValue == 2) {
                e4.b().d("CustomTabsManager", "CreatCCTServiceAsyncIfNeeded failed now ");
            } else if (iIntValue == 3) {
                CustomTabsClient customTabsClient = a.f22674v;
                if (customTabsClient == null || !customTabsClient.e(0L)) {
                    z10 = false;
                }
                a.f22676x = z10;
            } else if (iIntValue == 4) {
                a aVar2 = a.f22653a;
                Context context2 = this.f22704c;
                this.f22702a = iIntValue;
                this.f22703b = 2;
                if (aVar2.h(context2, true, this) == objF) {
                    return objF;
                }
            } else if (iIntValue == 5) {
                e4.b().d("CustomTabsManager", "CCT is unenable");
            }
            i11 = iIntValue;
            e4.b().w("CustomTabsManager", "bind service end, checkIsNeedBindServiceOrWarmUp is " + i11);
            if (this.f22706e) {
                a.f22653a.q(this.f22704c, this.f22705d, i11);
            }
            return Unit.f67061a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)I"}, k = 3, mv = {1, 9, 0})
    @DebugMetadata(c = "com.cloud.hisavana.sdk.manager.CustomTabsManager$loadURLBySession$2", f = "CustomTabsManager.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class i extends SuspendLambda implements Function2<n0, Continuation<? super Integer>, Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f22707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f22708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AdsDTO f22709c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DownUpPointBean f22710d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f22708b = context;
            this.f22709c = adsDTO;
            this.f22710d = downUpPointBean;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(n0 n0Var, Continuation<? super Integer> continuation) {
            return ((i) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new i(this.f22708b, this.f22709c, this.f22710d, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:38:0x00fa A[Catch: Exception -> 0x0034, TryCatch #1 {Exception -> 0x0034, blocks: (B:5:0x000b, B:8:0x0018, B:10:0x001e, B:15:0x004c, B:18:0x0060, B:20:0x006e, B:21:0x0075, B:24:0x00b2, B:28:0x00ba, B:31:0x00c6, B:33:0x00cb, B:35:0x00d1, B:37:0x00d7, B:39:0x0104, B:38:0x00fa, B:13:0x0037, B:14:0x003b), top: B:49:0x000b }] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            int i11;
            IntrinsicsKt.f();
            if (this.f22707a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                Context context = this.f22708b;
                boolean z10 = context instanceof Activity;
                boolean z11 = !z10;
                String str = "";
                i11 = 0;
                if (z10) {
                    a.f22665m = true;
                    String simpleName = context.getClass().getSimpleName();
                    Intrinsics.g(simpleName, "getSimpleName(...)");
                    a.f22663k = simpleName;
                } else {
                    Activity activityH = m.h();
                    if (activityH != null) {
                        a aVar = a.f22653a;
                        String simpleName2 = activityH.getClass().getSimpleName();
                        Intrinsics.g(simpleName2, "getSimpleName(...)");
                        a.f22663k = simpleName2;
                        a.f22665m = true;
                        context = activityH;
                        z11 = false;
                    } else {
                        a.f22663k = "";
                    }
                }
                a.f22653a.J(this.f22709c);
                androidx.browser.customtabs.d.b bVar = new androidx.browser.customtabs.d.b(a.f22675w);
                try {
                    bVar.e(2);
                } catch (Throwable unused) {
                }
                bVar.f(true);
                androidx.browser.customtabs.d dVarA = bVar.a();
                Intrinsics.g(dVarA, "build(...)");
                if (z11) {
                    dVarA.f2166a.setFlags(ASTNode.DEOP);
                }
                dVarA.f2166a.setPackage("com.android.chrome");
                dVarA.f2166a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", true);
                dVarA.f2166a.putExtra("androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION", false);
                dVarA.f2166a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON", true);
                dVarA.f2166a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON", true);
                a.f22653a.A(Boxing.d(19));
                SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(this.f22710d, this.f22709c);
                String splicedURL = sSPParamSplicedResultA.getSplicedURL();
                if (splicedURL == null) {
                    splicedURL = "";
                }
                String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
                if (originalUrl != null) {
                    str = originalUrl;
                }
                com.cloud.hisavana.sdk.common.util.b bVar2 = com.cloud.hisavana.sdk.common.util.b.f22148a;
                if (bVar2.g(this.f22709c)) {
                    AdsDTO adsDTO = this.f22709c;
                    if (bVar2.h(adsDTO != null ? adsDTO.getRealLandUrl() : null)) {
                        AdsDTO adsDTO2 = this.f22709c;
                        Intrinsics.e(adsDTO2);
                        String realLandUrl = adsDTO2.getRealLandUrl();
                        Intrinsics.g(realLandUrl, "getRealLandUrl(...)");
                        Uri uri = Uri.parse(realLandUrl);
                        Intrinsics.g(uri, "parse(this)");
                        dVarA.a(context, uri);
                        AdsDTO adsDTO3 = this.f22709c;
                        c1.m(splicedURL, adsDTO3, null, new c1.d(adsDTO3));
                    } else {
                        Uri uri2 = Uri.parse(splicedURL);
                        Intrinsics.g(uri2, "parse(this)");
                        dVarA.a(context, uri2);
                    }
                } else {
                    Uri uri3 = Uri.parse(splicedURL);
                    Intrinsics.g(uri3, "parse(this)");
                    dVarA.a(context, uri3);
                }
                AthenaTracker.G(str, this.f22709c, Boxing.a(false));
            } catch (Exception e11) {
                Log.w("CustomTabsManager", "launchUrl failed,error: " + Log.getStackTraceString(e11));
                i11 = TaErrorCode.CLICK_ERROR_CODE_CCT_LAUNCH_FAILED;
            }
            return Boxing.d(i11);
        }
    }

    private a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(int i11, long j11) {
        try {
            long j12 = f22668p - f22669q;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            Integer numValueOf = Integer.valueOf(i11);
            WeakReference weakReference = f22664l;
            sSPTrackingHelper.Q(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j12), Long.valueOf(j11), Boolean.valueOf(f22676x), f22662j, Boolean.valueOf(f22670r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J(AdsDTO adsDTO) {
        try {
            f22664l = new WeakReference(adsDTO);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(String str) {
        if (f22666n) {
            if (Intrinsics.c(str, f22663k) || f22667o) {
                m.k(null);
                f22665m = true;
                f22667o = false;
                e4.b().d("CustomTabsManager", "upload finish tracking");
                k0();
                return;
            }
            return;
        }
        if (Intrinsics.c(str, f22663k)) {
            f22667o = true;
            e4.b().d("CustomTabsManager", "isActivityResume true");
            return;
        }
        m.k(null);
        f22665m = true;
        e4.b().d("CustomTabsManager", "isActivityResume " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean U(boolean z10) {
        boolean z11 = true;
        boolean z12 = (f22674v == null || f22673u == null) ? false : true;
        if (z12 && z10) {
            e4.b().d("CustomTabsManager", "checkServerIsAvailable: service is connected check alive");
            try {
                j jVar = f22675w;
                if (jVar != null) {
                    jVar.i(OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_TEST, null);
                }
            } catch (Throwable unused) {
                z11 = false;
            }
            e4.b().d("CustomTabsManager", "checkServerIsAvailable: alive ->" + z11);
            CustomTabsClient customTabsClient = f22674v;
            f22675w = customTabsClient != null ? customTabsClient.c(f22677y) : null;
            if (!z11) {
                e4.b().d("CustomTabsManager", "checkServerIsAvailable: service is not connected,need bind");
                f22674v = null;
                f22673u = null;
                f22676x = false;
                return false;
            }
        }
        return z12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0() {
        try {
            f22668p = 0L;
            f22671s = -1L;
            f22672t = -1L;
            f22670r = -1L;
            WeakReference weakReference = f22664l;
            if (weakReference != null) {
                weakReference.clear();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object e(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.c(), new i(context, adsDTO, downUpPointBean, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object f(Context context, AdsDTO adsDTO, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.a(), new g(adsDTO, context, null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(Context context, Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.c(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        try {
            f22673u = new c(cancellableContinuationImpl);
            k.d(HSScopeHelper.f23167a.b(), null, null, new d(context, cancellableContinuationImpl, null), 3, null);
        } catch (Throwable th2) {
            Log.e("CustomTabsManager", "bindCustomTabsService: ", th2);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.f()) {
            DebugProbesKt.c(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object h(Context context, boolean z10, Continuation continuation) throws Throwable {
        C0307a c0307a;
        Long cctBindTimeout;
        if (continuation instanceof C0307a) {
            c0307a = (C0307a) continuation;
            int i11 = c0307a.f22682e;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                c0307a.f22682e = i11 - Integer.MIN_VALUE;
            } else {
                c0307a = new C0307a(continuation);
            }
        } else {
            c0307a = new C0307a(continuation);
        }
        Object objE = c0307a.f22680c;
        Object objF = IntrinsicsKt.f();
        int i12 = c0307a.f22682e;
        boolean z11 = true;
        try {
            if (i12 == 0) {
                ResultKt.b(objE);
                CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
                long jLongValue = (customTabData == null || (cctBindTimeout = customTabData.getCctBindTimeout()) == null) ? 1000L : cctBindTimeout.longValue();
                b bVar = new b(context, null);
                c0307a.f22678a = this;
                c0307a.f22679b = z10;
                c0307a.f22682e = 1;
                objE = TimeoutKt.e(jLongValue, bVar, c0307a);
                if (objE == objF) {
                    return objF;
                }
            } else {
                if (i12 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                z10 = c0307a.f22679b;
                ResultKt.b(objE);
            }
            Integer num = (Integer) objE;
            int iIntValue = num != null ? num.intValue() : 7006;
            if (iIntValue == 0) {
                if (z10) {
                    CustomTabsClient customTabsClient = f22674v;
                    if (customTabsClient == null || !customTabsClient.e(0L)) {
                        z11 = false;
                    }
                    f22676x = z11;
                }
                CustomTabsClient customTabsClient2 = f22674v;
                f22675w = customTabsClient2 != null ? customTabsClient2.c(f22677y) : null;
                e4.b().d("CustomTabsManager", "bindCustomTabsService success now ");
            }
            return Boxing.d(iIntValue);
        } catch (Throwable unused) {
            return Boxing.d(TaErrorCode.CLICK_ERROR_CODE_CCT_BIND_TIMEOUT);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j0() {
        f22674v = null;
        f22675w = null;
        f22673u = null;
        f22676x = false;
        d0();
    }

    private final void k0() {
        long j11 = f22671s;
        int i11 = TaErrorCode.CCT_LOAD_EXIT;
        if (j11 == -1 && f22672t == -1) {
            long j12 = f22670r;
            if (j12 != -1) {
                H(TaErrorCode.CCT_LOAD_ABORTED, j12);
            } else {
                n(TaErrorCode.CCT_LOAD_EXIT, System.currentTimeMillis() - f22668p);
            }
        }
        try {
            long j13 = f22668p - f22669q;
            long jCurrentTimeMillis = System.currentTimeMillis() - f22668p;
            long j14 = f22671s;
            if (j14 != -1) {
                i11 = 0;
            } else {
                j14 = f22672t;
                if (j14 != -1) {
                    i11 = TaErrorCode.CCT_LOAD_FAILED;
                } else {
                    j14 = f22670r;
                    if (j14 != -1) {
                        i11 = 8009;
                    } else {
                        j14 = jCurrentTimeMillis;
                    }
                }
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            Integer numValueOf = Integer.valueOf(i11);
            WeakReference weakReference = f22664l;
            sSPTrackingHelper.S(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j13), Long.valueOf(j14), Long.valueOf(jCurrentTimeMillis), Boolean.valueOf(f22676x), f22662j, Boolean.valueOf(f22670r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n(int i11, long j11) {
        try {
            long j12 = f22668p - f22669q;
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21953a;
            Integer numValueOf = Integer.valueOf(i11);
            WeakReference weakReference = f22664l;
            sSPTrackingHelper.Q(numValueOf, weakReference != null ? (AdsDTO) weakReference.get() : null, Long.valueOf(j12), Long.valueOf(j11), Boolean.valueOf(f22676x), f22662j, Boolean.valueOf(f22670r != -1), f0());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(Context context, AdsDTO adsDTO, int i11) {
        if (adsDTO == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.util.b bVar = com.cloud.hisavana.sdk.common.util.b.f22148a;
        if (bVar.g(adsDTO)) {
            if (i11 == 5) {
                k4.f22600a.l(context, adsDTO);
                return;
            }
            if (f22675w == null) {
                e4.b().d("CustomTabsManager", "preload h5, mCCTSession is null");
                adsDTO.setPreloadStatus(3);
                return;
            }
            if (!bVar.h(adsDTO.getRealLandUrl())) {
                adsDTO.setPreloadStatus(8);
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - f22661i <= 2000) {
                e4.b().d("CustomTabsManager", "preload h5, cool down time is 2000ms");
                if (adsDTO.getPreloadStatus() < 2) {
                    adsDTO.setPreloadStatus(2);
                    return;
                }
                return;
            }
            e4.b().d("CustomTabsManager", "start preload h5, url is : " + adsDTO.getRealLandUrl());
            j jVar = f22675w;
            if (jVar != null) {
                String realLandUrl = adsDTO.getRealLandUrl();
                Intrinsics.g(realLandUrl, "getRealLandUrl(...)");
                Uri uri = Uri.parse(realLandUrl);
                Intrinsics.g(uri, "parse(this)");
                jVar.h(uri, null, null);
            }
            adsDTO.setPreloadStatus(5);
            f22661i = jCurrentTimeMillis;
        }
    }

    public final void A(Integer num) {
        f22660h = num;
    }

    public final int E(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        Intrinsics.h(context, "context");
        try {
            String strG = G(context);
            A(24);
            SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(downUpPointBean, adsDTO);
            String splicedURL = sSPParamSplicedResultA.getSplicedURL();
            String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(splicedURL));
            if (strG == null || strG.length() <= 0) {
                return TaErrorCode.CLICK_ERROR_CODE_NOT_GET_DEFAULT_BROWSER_PKG;
            }
            intent.setPackage(strG);
            intent.addFlags(ASTNode.DEOP);
            context.startActivity(intent);
            AthenaTracker.G(originalUrl, adsDTO, Boolean.FALSE);
            return 0;
        } catch (Throwable unused) {
            return TaErrorCode.CLICK_ERROR_CODE_DEFAULT_BROWSER_LAUNCH_FAILED;
        }
    }

    public final String G(Context context) {
        ActivityInfo activityInfo;
        Intrinsics.h(context, "context");
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.hisavana.com"));
            intent.addCategory("android.intent.category.BROWSABLE");
            ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null && (activityInfo = resolveInfoResolveActivity.activityInfo) != null) {
                return activityInfo.packageName;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final void M(Integer num) {
        f22657e = num;
    }

    public final int a(Context context, AdsDTO adsDTO) {
        ArrayList<Integer> arrayList;
        ArrayList<String> arrayList2;
        ArrayList<String> arrayList3;
        Boolean enableCctSwitch;
        Integer dIntervalTime;
        Boolean enableSplashADcct;
        String clickUrl = adsDTO != null ? adsDTO.getClickUrl() : null;
        if (clickUrl == null) {
            return TaErrorCode.CLICK_ERROR_CODE_NOT_HTTP_URL;
        }
        if (!StringsKt.W(clickUrl, "http://", false, 2, null) && !StringsKt.W(clickUrl, "https://", false, 2, null)) {
            return TaErrorCode.CLICK_ERROR_CODE_NOT_HTTP_URL;
        }
        if (adsDTO != null && adsDTO.getAdType() == 4) {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (!((customTabData == null || (enableSplashADcct = customTabData.getEnableSplashADcct()) == null) ? false : enableSplashADcct.booleanValue())) {
                return TaErrorCode.CLICK_ERROR_CODE_CCT_SPLASH_NOT_ALLOW;
            }
        }
        int iG = j7.a.e().g("cct_switch_state", 0);
        if (iG != 0) {
            long jI = j7.a.e().i("cct_switch_timestamp", 0L);
            CustomTabConfigDTO customTabData2 = CustomConfigManager.getCustomTabData();
            if (System.currentTimeMillis() - jI < ((customTabData2 == null || (dIntervalTime = customTabData2.getDIntervalTime()) == null) ? 7 : dIntervalTime.intValue()) * TimeConstants.DAY) {
                return iG;
            }
            j7.a.e().p("cct_switch_state", 0);
            e4.b().d("CustomTabsManager", "checkInstallChromOrEnableCCT: " + iG);
        }
        CustomTabConfigDTO customTabData3 = CustomConfigManager.getCustomTabData();
        boolean z10 = true;
        if (!((customTabData3 == null || (enableCctSwitch = customTabData3.getEnableCctSwitch()) == null) ? true : enableCctSwitch.booleanValue())) {
            return TaErrorCode.CLICK_ERROR_CODE_CCT_CONFIG_CLOSED;
        }
        String strM = f22662j;
        if (strM.length() == 0) {
            strM = f22653a.m(context);
        }
        f22662j = strM;
        if (strM.length() == 0) {
            e4.b().d("CustomTabsManager", "checkInstallChromOrEnableCCT:");
            return TaErrorCode.CLICK_ERROR_CODE_CCT_NOT_INSTALLED;
        }
        CustomTabConfigDTO customTabData4 = CustomConfigManager.getCustomTabData();
        if (customTabData4 == null || (arrayList = customTabData4.getSysBlackVersion()) == null) {
            arrayList = new ArrayList<>();
        }
        if (arrayList.contains(Integer.valueOf(Build.VERSION.SDK_INT))) {
            return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_VERSION_BLOCKED;
        }
        String str = Build.BRAND;
        e4.b().d("CustomTabsManager", "devide model is -> " + str);
        CustomTabConfigDTO customTabData5 = CustomConfigManager.getCustomTabData();
        if (customTabData5 == null || (arrayList2 = customTabData5.getWhiteDeviceModel()) == null) {
            arrayList2 = new ArrayList<>();
        }
        if (arrayList2.isEmpty()) {
            CustomTabConfigDTO customTabData6 = CustomConfigManager.getCustomTabData();
            if (customTabData6 == null || (arrayList3 = customTabData6.getBlackDeviceModel()) == null) {
                arrayList3 = new ArrayList<>();
            }
            if (!arrayList3.isEmpty()) {
                if (arrayList3.isEmpty()) {
                    z10 = false;
                } else {
                    Iterator<T> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        if (StringsKt.H((String) it.next(), str, true)) {
                        }
                    }
                    z10 = false;
                }
                if (z10) {
                    return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED;
                }
            }
        } else {
            if (!arrayList2.isEmpty()) {
                Iterator<T> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    if (StringsKt.H((String) it2.next(), str, true)) {
                        z10 = false;
                        break;
                    }
                }
            }
            if (z10) {
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ANDROID_MODEL_BLOCKED;
            }
        }
        return 0;
    }

    public final int b(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean) {
        Activity activityH;
        Intrinsics.h(context, "context");
        try {
            boolean z10 = context instanceof Activity;
            boolean z11 = !z10;
            if (!z10 && (activityH = m.h()) != null) {
                context = activityH;
                z11 = false;
            }
            J(adsDTO);
            androidx.browser.customtabs.d.b bVar = new androidx.browser.customtabs.d.b();
            try {
                bVar.e(2);
            } catch (Throwable unused) {
            }
            bVar.f(true);
            androidx.browser.customtabs.d dVarA = bVar.a();
            Intrinsics.g(dVarA, "build(...)");
            if (z11) {
                dVarA.f2166a.setFlags(ASTNode.DEOP);
            }
            dVarA.f2166a.setPackage("com.android.chrome");
            dVarA.f2166a.putExtra("android.support.customtabs.extra.TITLE_VISIBILITY", true);
            dVarA.f2166a.putExtra("androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION", false);
            dVarA.f2166a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON", true);
            dVarA.f2166a.putExtra("org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON", true);
            A(23);
            SSPParamSplicedResult sSPParamSplicedResultA = com.cloud.hisavana.sdk.common.activity.b.a(downUpPointBean, adsDTO);
            String splicedURL = sSPParamSplicedResultA.getSplicedURL();
            String str = "";
            if (splicedURL == null) {
                splicedURL = "";
            }
            String originalUrl = sSPParamSplicedResultA.getOriginalUrl();
            if (originalUrl != null) {
                str = originalUrl;
            }
            Uri uri = Uri.parse(splicedURL);
            Intrinsics.g(uri, "parse(this)");
            dVarA.a(context, uri);
            j3.a();
            AthenaTracker.G(str, adsDTO, Boolean.FALSE);
            return 0;
        } catch (Exception e11) {
            Log.w("CustomTabsManager", "launchUrl failed,error: " + Log.getStackTraceString(e11));
            return TaErrorCode.CLICK_ERROR_CODE_CCT_LAUNCH_FAILED_NOT_SESSION;
        }
    }

    public final int b0() {
        Map<String, String> info;
        ABTest aBTestData = CustomConfigManager.getABTestData(ClientABTestDTOKt.AB_CUSTOM_TAB);
        if (aBTestData != null) {
            Long layerId = aBTestData.getLayerId();
            ABVariantState aBTestVariant = ABTestKit.getABTestVariant(layerId, aBTestData.getReqInterval(), aBTestData.getSwitch());
            if (aBTestVariant.isOpen()) {
                ABVariantState.Open open = aBTestVariant instanceof ABVariantState.Open ? (ABVariantState.Open) aBTestVariant : null;
                ABVariant variant = open != null ? open.getVariant() : null;
                String str = (variant == null || (info = variant.getInfo()) == null) ? null : info.get("customTabGroup");
                f22654b = variant != null ? variant.getLayerId() : null;
                f22655c = variant != null ? variant.getExpId() : null;
                f22656d = variant != null ? variant.getSubExpId() : null;
                if (StringsKt.I(str, "true", false, 2, null)) {
                    f22658f = 1;
                    return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_HIT;
                }
                f22658f = 2;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_NOT_HIT;
            }
            if (aBTestVariant.isPushAll()) {
                f22659g = true;
                f22654b = layerId;
                f22655c = 0L;
                f22656d = 0L;
                f22658f = 3;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_PUSH_ALL;
            }
            if (aBTestVariant.isClosed()) {
                f22654b = layerId;
                f22655c = 0L;
                f22656d = 0L;
                ABVariantState.Closed closed = aBTestVariant instanceof ABVariantState.Closed ? (ABVariantState.Closed) aBTestVariant : null;
                f22657e = closed != null ? Integer.valueOf(closed.getCode()) : null;
                f22658f = 4;
                return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_CLOSED;
            }
        }
        f22658f = 5;
        return TaErrorCode.CLICK_ERROR_CODE_CCT_ABTEST_NULL;
    }

    public final int c(AdsDTO adsDTO) {
        CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
        ArrayList<String> openDefaultBycIds = customTabData != null ? customTabData.getOpenDefaultBycIds() : null;
        if (openDefaultBycIds == null || !(!openDefaultBycIds.isEmpty())) {
            return -1;
        }
        String adCreativeId = adsDTO != null ? adsDTO.getAdCreativeId() : null;
        if (adCreativeId == null || adCreativeId.length() <= 0 || openDefaultBycIds.isEmpty()) {
            return -1;
        }
        Iterator<T> it = openDefaultBycIds.iterator();
        while (it.hasNext()) {
            if (StringsKt.H((String) it.next(), adCreativeId, true)) {
                return TaErrorCode.CLICK_ERROR_CODE_CONFIG_CREATIVE_ID_OPEN_DEFAULT;
            }
        }
        return -1;
    }

    public final boolean c0() {
        Boolean enableDefaultBrowserSwitch;
        try {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (customTabData != null && (enableDefaultBrowserSwitch = customTabData.getEnableDefaultBrowserSwitch()) != null) {
                return enableDefaultBrowserSwitch.booleanValue();
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public final Long e0() {
        return f22656d;
    }

    public final Bundle f0() {
        Bundle bundle = new Bundle();
        try {
            Long l11 = f22654b;
            if (l11 != null) {
                if (l11.longValue() == 0) {
                    l11 = null;
                }
                if (l11 != null) {
                    bundle.putLong("s_ab_layer_id", l11.longValue());
                }
            }
            Long l12 = f22655c;
            if (l12 != null) {
                if (l12.longValue() == 0) {
                    l12 = null;
                }
                if (l12 != null) {
                    bundle.putLong("s_ab_exp_id", l12.longValue());
                }
            }
            Long l13 = f22656d;
            if (l13 != null) {
                if (l13.longValue() == 0) {
                    l13 = null;
                }
                if (l13 != null) {
                    bundle.putLong("var_id", l13.longValue());
                }
            }
            Integer num = f22657e;
            if (num != null) {
                if (num.intValue() == 0) {
                    num = null;
                }
                if (num != null) {
                    bundle.putInt("s_ab_reason", num.intValue());
                }
            }
            boolean z10 = f22659g;
            Boolean boolValueOf = Boolean.valueOf(z10);
            if (!z10) {
                boolValueOf = null;
            }
            if (boolValueOf != null) {
                bundle.putInt("s_ab_push", 1);
            }
            Integer num2 = f22658f;
            Integer num3 = (num2 == null || num2.intValue() != 0) ? num2 : null;
            if (num3 != null) {
                bundle.putInt("s_ab_status", num3.intValue());
            }
        } catch (Throwable unused) {
        }
        return bundle;
    }

    public final Integer g0() {
        return f22660h;
    }

    public final Integer h0() {
        return f22658f;
    }

    public final void i0() {
        f22654b = 0L;
        f22655c = 0L;
        f22656d = 0L;
        f22657e = 0;
        f22659g = false;
        f22658f = 0;
        f22660h = 0;
    }

    public final String m(Context context) {
        Object objM454constructorimpl;
        String str;
        PackageManager packageManager;
        PackageInfo packageInfo;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (context == null || (packageManager = context.getPackageManager()) == null || (packageInfo = packageManager.getPackageInfo("com.android.chrome", 0)) == null || (str = packageInfo.versionName) == null) {
                str = "";
            }
            objM454constructorimpl = Result.m454constructorimpl(str);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (String) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : "");
    }

    public final void o(int i11, boolean z10) {
        int iG = j7.a.e().g("cct_switch_state", 0);
        if (z10 || !(iG != 0 || i11 == 7009 || i11 == 7012 || i11 == 7014 || i11 == 7006 || i11 == 7007 || i11 == 7005 || i11 == 7016 || i11 == 7017 || i11 == 7023 || i11 == -1)) {
            j7.a.e().p("cct_switch_state", i11);
            j7.a.e().q("cct_switch_timestamp", System.currentTimeMillis());
        }
    }

    public final void r(Context context, AdsDTO adsDTO, DownUpPointBean downUpPointBean, Function1 onComplete) {
        Intrinsics.h(context, "context");
        Intrinsics.h(onComplete, "onComplete");
        k.d(HSScopeHelper.f23167a.b(), null, null, new f(context, adsDTO, downUpPointBean, onComplete, null), 3, null);
    }

    public final void s(Context context, AdsDTO adsDTO, boolean z10) {
        Intrinsics.h(context, "context");
        e4 e4VarB = e4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("preload is ");
        sb2.append(z10);
        sb2.append(", preloadEnable is ");
        sb2.append(adsDTO != null ? adsDTO.getPreloadEnable() : null);
        sb2.append(", realLandUrl is ");
        sb2.append(adsDTO != null ? adsDTO.getRealLandUrl() : null);
        e4VarB.w("CustomTabsManager", sb2.toString());
        if (z10 || !com.cloud.hisavana.sdk.common.util.b.f22148a.g(adsDTO)) {
            CustomTabConfigDTO customTabData = CustomConfigManager.getCustomTabData();
            if (Intrinsics.c(customTabData != null ? customTabData.getEnableWarmUp() : null, Boolean.TRUE) || z10) {
                k.d(HSScopeHelper.f23167a.b(), null, null, new h(context, adsDTO, z10, null), 3, null);
            }
        }
    }
}
