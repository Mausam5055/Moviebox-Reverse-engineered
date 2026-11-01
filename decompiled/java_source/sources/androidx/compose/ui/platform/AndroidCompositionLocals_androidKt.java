package androidx.compose.ui.platform;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.p009lifecycle.compose.LocalLifecycleOwnerKt;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidCompositionLocals_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final androidx.compose.runtime.s1 f5569a = CompositionLocalKt.d(null, new Function0<Configuration>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$LocalConfiguration$1
        @Override // kotlin.jvm.functions.Function0
        public final Configuration invoke() {
            AndroidCompositionLocals_androidKt.k("LocalConfiguration");
            throw new KotlinNothingValueException();
        }
    }, 1, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final androidx.compose.runtime.s1 f5570b = CompositionLocalKt.f(new Function0<Context>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$LocalContext$1
        @Override // kotlin.jvm.functions.Function0
        public final Context invoke() {
            AndroidCompositionLocals_androidKt.k("LocalContext");
            throw new KotlinNothingValueException();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.compose.runtime.s1 f5571c = CompositionLocalKt.f(new Function0<i0.d>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$LocalImageVectorCache$1
        @Override // kotlin.jvm.functions.Function0
        public final i0.d invoke() {
            AndroidCompositionLocals_androidKt.k("LocalImageVectorCache");
            throw new KotlinNothingValueException();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final androidx.compose.runtime.s1 f5572d = CompositionLocalKt.f(new Function0<i0.f>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$LocalResourceIdCache$1
        @Override // kotlin.jvm.functions.Function0
        public final i0.f invoke() {
            AndroidCompositionLocals_androidKt.k("LocalResourceIdCache");
            throw new KotlinNothingValueException();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.compose.runtime.s1 f5573e = CompositionLocalKt.f(new Function0<androidx.p010savedstate.e>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1
        @Override // kotlin.jvm.functions.Function0
        public final androidx.p010savedstate.e invoke() {
            AndroidCompositionLocals_androidKt.k("LocalSavedStateRegistryOwner");
            throw new KotlinNothingValueException();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.compose.runtime.s1 f5574f = CompositionLocalKt.f(new Function0<View>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$LocalView$1
        @Override // kotlin.jvm.functions.Function0
        public final View invoke() {
            AndroidCompositionLocals_androidKt.k("LocalView");
            throw new KotlinNothingValueException();
        }
    });

    public static final class a implements ComponentCallbacks2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Configuration f5576a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i0.d f5577b;

        a(Configuration configuration, i0.d dVar) {
            this.f5576a = configuration;
            this.f5577b = dVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
            this.f5577b.c(this.f5576a.updateFrom(configuration));
            this.f5576a.setTo(configuration);
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.f5577b.a();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i11) {
            this.f5577b.a();
        }
    }

    public static final class b implements ComponentCallbacks2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i0.f f5578a;

        b(i0.f fVar) {
            this.f5578a = fVar;
        }

        @Override // android.content.ComponentCallbacks
        public void onConfigurationChanged(Configuration configuration) {
            this.f5578a.a();
        }

        @Override // android.content.ComponentCallbacks
        public void onLowMemory() {
            this.f5578a.a();
        }

        @Override // android.content.ComponentCallbacks2
        public void onTrimMemory(int i11) {
            this.f5578a.a();
        }
    }

    public static final void a(final AndroidComposeView androidComposeView, final Function2 function2, androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVarG = iVar.g(1396852028);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(androidComposeView) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i11 & 48) == 0) {
            i12 |= iVarG.A(function2) ? 32 : 16;
        }
        if ((i12 & 19) == 18 && iVarG.h()) {
            iVarG.G();
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(1396852028, i12, -1, "androidx.compose.ui.platform.ProvideAndroidCompositionLocals (AndroidCompositionLocals.android.kt:91)");
            }
            Context context = androidComposeView.getContext();
            Object objY = iVarG.y();
            androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3736a;
            if (objY == aVar.a()) {
                objY = androidx.compose.runtime.u2.c(new Configuration(context.getResources().getConfiguration()), null, 2, null);
                iVarG.p(objY);
            }
            final androidx.compose.runtime.i1 i1Var = (androidx.compose.runtime.i1) objY;
            Object objY2 = iVarG.y();
            if (objY2 == aVar.a()) {
                objY2 = new Function1<Configuration, Unit>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                        invoke((Configuration) obj);
                        return Unit.f67061a;
                    }

                    public final void invoke(Configuration configuration) {
                        AndroidCompositionLocals_androidKt.c(i1Var, new Configuration(configuration));
                    }
                };
                iVarG.p(objY2);
            }
            androidComposeView.setConfigurationChangeObserver((Function1) objY2);
            Object objY3 = iVarG.y();
            if (objY3 == aVar.a()) {
                objY3 = new k0(context);
                iVarG.p(objY3);
            }
            final k0 k0Var = (k0) objY3;
            AndroidComposeView.b viewTreeOwners = androidComposeView.getViewTreeOwners();
            if (viewTreeOwners == null) {
                throw new IllegalStateException("Called when the ViewTreeOwnersAvailability is not yet in Available state");
            }
            Object objY4 = iVarG.y();
            if (objY4 == aVar.a()) {
                objY4 = DisposableSaveableStateRegistry_androidKt.b(androidComposeView, viewTreeOwners.b());
                iVarG.p(objY4);
            }
            final u0 u0Var = (u0) objY4;
            Unit unit = Unit.f67061a;
            boolean zA = iVarG.A(u0Var);
            Object objY5 = iVarG.y();
            if (zA || objY5 == aVar.a()) {
                objY5 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2$1

                    public static final class a implements androidx.compose.runtime.c0 {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        final /* synthetic */ u0 f5575a;

                        public a(u0 u0Var) {
                            this.f5575a = u0Var;
                        }

                        @Override // androidx.compose.runtime.c0
                        public void dispose() {
                            this.f5575a.c();
                        }
                    }

                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                        return new a(u0Var);
                    }
                };
                iVarG.p(objY5);
            }
            androidx.compose.runtime.g0.a(unit, (Function1) objY5, iVarG, 6);
            CompositionLocalKt.b(new androidx.compose.runtime.t1[]{f5569a.d(b(i1Var)), f5570b.d(context), LocalLifecycleOwnerKt.a().d(viewTreeOwners.a()), f5573e.d(viewTreeOwners.b()), SaveableStateRegistryKt.d().d(u0Var), f5574f.d(androidComposeView.getView()), f5571c.d(l(context, b(i1Var), iVarG, 0)), f5572d.d(m(context, iVarG, 0)), CompositionLocalsKt.h().d(Boolean.valueOf(((Boolean) iVarG.l(CompositionLocalsKt.i())).booleanValue() | androidComposeView.getScrollCaptureInProgress$ui_release()))}, androidx.compose.runtime.internal.b.d(1471621628, true, new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    if ((i13 & 3) == 2 && iVar2.h()) {
                        iVar2.G();
                        return;
                    }
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.Q(1471621628, i13, -1, "androidx.compose.ui.platform.ProvideAndroidCompositionLocals.<anonymous> (AndroidCompositionLocals.android.kt:131)");
                    }
                    CompositionLocalsKt.a(androidComposeView, k0Var, function2, iVar2, 0);
                    if (androidx.compose.runtime.k.H()) {
                        androidx.compose.runtime.k.P();
                    }
                }
            }, iVarG, 54), iVarG, androidx.compose.runtime.t1.f4041i | 48);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        androidx.compose.runtime.g2 g2VarJ = iVarG.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2<androidx.compose.runtime.i, Integer, Unit>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
                    return Unit.f67061a;
                }

                public final void invoke(androidx.compose.runtime.i iVar2, int i13) {
                    AndroidCompositionLocals_androidKt.a(androidComposeView, function2, iVar2, androidx.compose.runtime.v1.a(i11 | 1));
                }
            });
        }
    }

    private static final Configuration b(androidx.compose.runtime.i1 i1Var) {
        return (Configuration) i1Var.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(androidx.compose.runtime.i1 i1Var, Configuration configuration) {
        i1Var.setValue(configuration);
    }

    public static final androidx.compose.runtime.s1 f() {
        return f5569a;
    }

    public static final androidx.compose.runtime.s1 g() {
        return f5570b;
    }

    public static final androidx.compose.runtime.s1 h() {
        return f5571c;
    }

    public static final androidx.compose.runtime.s1 i() {
        return f5572d;
    }

    public static final androidx.compose.runtime.s1 j() {
        return f5574f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void k(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }

    private static final i0.d l(final Context context, Configuration configuration, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-485908294, i11, -1, "androidx.compose.ui.platform.obtainImageVectorCache (AndroidCompositionLocals.android.kt:172)");
        }
        Object objY = iVar.y();
        androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3736a;
        if (objY == aVar.a()) {
            objY = new i0.d();
            iVar.p(objY);
        }
        i0.d dVar = (i0.d) objY;
        Object objY2 = iVar.y();
        Object obj = objY2;
        if (objY2 == aVar.a()) {
            Configuration configuration2 = new Configuration();
            if (configuration != null) {
                configuration2.setTo(configuration);
            }
            iVar.p(configuration2);
            obj = configuration2;
        }
        Configuration configuration3 = (Configuration) obj;
        Object objY3 = iVar.y();
        if (objY3 == aVar.a()) {
            objY3 = new a(configuration3, dVar);
            iVar.p(objY3);
        }
        final a aVar2 = (a) objY3;
        boolean zA = iVar.A(context);
        Object objY4 = iVar.y();
        if (zA || objY4 == aVar.a()) {
            objY4 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$obtainImageVectorCache$1$1

                public static final class a implements androidx.compose.runtime.c0 {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ Context f5579a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    final /* synthetic */ AndroidCompositionLocals_androidKt.a f5580b;

                    public a(Context context, AndroidCompositionLocals_androidKt.a aVar) {
                        this.f5579a = context;
                        this.f5580b = aVar;
                    }

                    @Override // androidx.compose.runtime.c0
                    public void dispose() {
                        this.f5579a.getApplicationContext().unregisterComponentCallbacks(this.f5580b);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                    context.getApplicationContext().registerComponentCallbacks(aVar2);
                    return new a(context, aVar2);
                }
            };
            iVar.p(objY4);
        }
        androidx.compose.runtime.g0.a(dVar, (Function1) objY4, iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return dVar;
    }

    private static final i0.f m(final Context context, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1348507246, i11, -1, "androidx.compose.ui.platform.obtainResourceIdCache (AndroidCompositionLocals.android.kt:141)");
        }
        Object objY = iVar.y();
        androidx.compose.runtime.i.a aVar = androidx.compose.runtime.i.f3736a;
        if (objY == aVar.a()) {
            objY = new i0.f();
            iVar.p(objY);
        }
        i0.f fVar = (i0.f) objY;
        Object objY2 = iVar.y();
        if (objY2 == aVar.a()) {
            objY2 = new b(fVar);
            iVar.p(objY2);
        }
        final b bVar = (b) objY2;
        boolean zA = iVar.A(context);
        Object objY3 = iVar.y();
        if (zA || objY3 == aVar.a()) {
            objY3 = new Function1<androidx.compose.runtime.d0, androidx.compose.runtime.c0>() { // from class: androidx.compose.ui.platform.AndroidCompositionLocals_androidKt$obtainResourceIdCache$1$1

                public static final class a implements androidx.compose.runtime.c0 {

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    final /* synthetic */ Context f5581a;

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    final /* synthetic */ AndroidCompositionLocals_androidKt.b f5582b;

                    public a(Context context, AndroidCompositionLocals_androidKt.b bVar) {
                        this.f5581a = context;
                        this.f5582b = bVar;
                    }

                    @Override // androidx.compose.runtime.c0
                    public void dispose() {
                        this.f5581a.getApplicationContext().unregisterComponentCallbacks(this.f5582b);
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final androidx.compose.runtime.c0 invoke(androidx.compose.runtime.d0 d0Var) {
                    context.getApplicationContext().registerComponentCallbacks(bVar);
                    return new a(context, bVar);
                }
            };
            iVar.p(objY3);
        }
        androidx.compose.runtime.g0.a(fVar, (Function1) objY3, iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fVar;
    }
}
