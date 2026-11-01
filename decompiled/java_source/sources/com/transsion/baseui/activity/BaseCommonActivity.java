package com.transsion.baseui.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.d0;
import androidx.compose.foundation.layout.e0;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.f3;
import androidx.compose.runtime.g2;
import androidx.compose.runtime.h2;
import androidx.compose.runtime.s;
import androidx.compose.runtime.v1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.t;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.text.font.p;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p009lifecycle.ViewTreeViewModelStoreOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.material.card.MaterialCardView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.util.HashMap;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import nh.m;
import nh.n;
import o0.x;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\r\b'\u0018\u0000 1*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u00032\u00020\u0004:\u00012B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0013\u001a\u00020\u00072\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0011H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00028\u0000H&¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H$¢\u0006\u0004\b\u001a\u0010\u0006J\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0007H\u0016¢\u0006\u0004\b!\u0010\u0006J\u000f\u0010\"\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\"\u0010\u0006J\u000f\u0010#\u001a\u00020\u0007H\u0014¢\u0006\u0004\b#\u0010\u0006J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0007H\u0014¢\u0006\u0004\b%\u0010\u0006J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\fH\u0016¢\u0006\u0004\b)\u0010\u000eJ\u000f\u0010*\u001a\u00020\u0007H\u0007¢\u0006\u0004\b*\u0010+R\"\u0010,\u001a\u00028\u00008\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010\u0019\"\u0004\b/\u00100¨\u00063"}, d2 = {"Lcom/transsion/baseui/activity/BaseCommonActivity;", "Lg4/a;", "T", "Landroidx/appcompat/app/AppCompatActivity;", "Lnh/n;", "<init>", "()V", "", "X", "Landroid/view/View;", "W", "()Landroid/view/View;", "", "getClassTag", "()Ljava/lang/String;", "Landroid/content/Context;", "context", "Landroid/os/Bundle;", "bundle", "intercept", "(Landroid/content/Context;Landroid/os/Bundle;)V", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "getViewBinding", "()Lg4/a;", "setView", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "onDisconnected", "onResume", "onPause", "finish", "onDestroy", "", "isMonitorNetworkState", "()Z", "getPageName", "EnterHomeView", "(Landroidx/compose/runtime/i;I)V", "mViewBinding", "Lg4/a;", "getMViewBinding", "setMViewBinding", "(Lg4/a;)V", "Companion", "a", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class BaseCommonActivity<T extends g4.a> extends AppCompatActivity implements n {
    public static final String EXTRA_SHOW_HOME_BUTTON = "show_enter_home";
    public static final String TAG = "BaseCommonActivity";
    public T mViewBinding;
    public static final int $stable = 8;

    /* JADX INFO: loaded from: classes5.dex */
    static final class b implements Function2 {
        b() {
        }

        public final void a(androidx.compose.runtime.i iVar, int i11) {
            if ((i11 & 3) == 2 && iVar.h()) {
                iVar.G();
                return;
            }
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(-541145127, i11, -1, "com.transsion.baseui.activity.BaseCommonActivity.getEnterHomeView.<anonymous>.<anonymous> (BaseCommonActivity.kt:205)");
            }
            BaseCommonActivity.this.EnterHomeView(iVar, 0);
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((androidx.compose.runtime.i) obj, ((Number) obj2).intValue());
            return Unit.f67061a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U(BaseCommonActivity baseCommonActivity) {
        if (com.transsion.baseui.util.c.f43504a.a(R$mipmap.ic_tab_home, 2000L)) {
            return Unit.f67061a;
        }
        Navigator.x(TheRouter.c("/main/tab").F("tabIndex", 0), baseCommonActivity, null, 2, null);
        hj.i iVar = hj.i.f64505a;
        String pageName = baseCommonActivity.getPageName();
        HashMap map = new HashMap();
        map.put("event_type", "deeplink_enter_home_click");
        Unit unit = Unit.f67061a;
        iVar.p(pageName, map);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(BaseCommonActivity baseCommonActivity, int i11, androidx.compose.runtime.i iVar, int i12) {
        baseCommonActivity.EnterHomeView(iVar, v1.a(i11 | 1));
        return Unit.f67061a;
    }

    private final View W() {
        ComposeView composeView = new ComposeView(this, null, 0, 6, null);
        ViewTreeLifecycleOwner.b(composeView, this);
        ViewTreeViewModelStoreOwner.b(composeView, this);
        ViewTreeSavedStateRegistryOwner.b(composeView, this);
        composeView.setContent(androidx.compose.runtime.internal.b.b(-541145127, true, new b()));
        return composeView;
    }

    private final void X() {
        if (getIntent().getBooleanExtra(EXTRA_SHOW_HOME_BUTTON, false)) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.height = -2;
            layoutParams.width = -2;
            layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            layoutParams.y = a0.a(120.0f);
            layoutParams.flags = Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE;
            layoutParams.format = -3;
            getWindowManager().addView(W(), layoutParams);
            hj.i iVar = hj.i.f64505a;
            String pageName = getPageName();
            HashMap map = new HashMap();
            map.put("event_type", "deeplink_enter_home_browse");
            Unit unit = Unit.f67061a;
            iVar.D(pageName, map);
        }
    }

    public final void EnterHomeView(androidx.compose.runtime.i iVar, final int i11) {
        int i12;
        androidx.compose.runtime.i iVar2;
        androidx.compose.runtime.i iVarG = iVar.g(976578532);
        if ((i11 & 6) == 0) {
            i12 = (iVarG.A(this) ? 4 : 2) | i11;
        } else {
            i12 = i11;
        }
        if ((i12 & 3) == 2 && iVarG.h()) {
            iVarG.G();
            iVar2 = iVarG;
        } else {
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.Q(976578532, i12, -1, "com.transsion.baseui.activity.BaseCommonActivity.EnterHomeView (BaseCommonActivity.kt:213)");
            }
            Painter painterC = i0.e.c(R$mipmap.ic_tab_home, iVarG, 0);
            androidx.compose.ui.b.c cVarH = androidx.compose.ui.b.f4087a.h();
            androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f4178a;
            float f11 = 0;
            float f12 = 20;
            androidx.compose.ui.f fVarA = BackgroundKt.a(SizeKt.e(aVar, o0.i.g(36)), i0.b.a(R$color.bg_01_70_reverse, iVarG, 0), q.g.d(o0.i.g(f11), o0.i.g(f12), o0.i.g(f12), o0.i.g(f11)));
            iVarG.P(1849434622);
            Object objY = iVarG.y();
            androidx.compose.runtime.i.a aVar2 = androidx.compose.runtime.i.f3736a;
            if (objY == aVar2.a()) {
                objY = p.h.a();
                iVarG.p(objY);
            }
            p.i iVar3 = (p.i) objY;
            iVarG.K();
            iVarG.P(5004770);
            boolean zA = iVarG.A(this);
            Object objY2 = iVarG.y();
            if (zA || objY2 == aVar2.a()) {
                objY2 = new Function0() { // from class: com.transsion.baseui.activity.d
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return BaseCommonActivity.U(this.f43402a);
                    }
                };
                iVarG.p(objY2);
            }
            iVarG.K();
            androidx.compose.ui.f fVarB = ClickableKt.b(fVarA, iVar3, null, false, null, null, (Function0) objY2, 28, null);
            iVarG.x(693286680);
            t tVarB = androidx.compose.foundation.layout.a0.b(androidx.compose.foundation.layout.b.f2836a.c(), cVarH, iVarG, 48);
            iVarG.x(-1323940314);
            int iA = androidx.compose.runtime.g.a(iVarG, 0);
            s sVarN = iVarG.n();
            ComposeUiNode.Companion companion = ComposeUiNode.f5224c1;
            Function0 function0A = companion.a();
            Function3 function3A = LayoutKt.a(fVarB);
            if (!(iVarG.i() instanceof androidx.compose.runtime.f)) {
                androidx.compose.runtime.g.b();
            }
            iVarG.C();
            if (iVarG.e()) {
                iVarG.F(function0A);
            } else {
                iVarG.o();
            }
            androidx.compose.runtime.i iVarA = f3.a(iVarG);
            f3.b(iVarA, tVarB, companion.c());
            f3.b(iVarA, sVarN, companion.e());
            Function2 function2B = companion.b();
            if (iVarA.e() || !Intrinsics.c(iVarA.y(), Integer.valueOf(iA))) {
                iVarA.p(Integer.valueOf(iA));
                iVarA.k(Integer.valueOf(iA), function2B);
            }
            function3A.invoke(h2.a(h2.b(iVarG)), iVarG, 0);
            iVarG.x(2058660585);
            d0 d0Var = d0.f2849a;
            e0.a(SizeKt.l(aVar, o0.i.g(8)), iVarG, 6);
            ImageKt.a(painterC, null, SizeKt.j(aVar, o0.i.g(18)), null, null, 0.0f, androidx.compose.ui.graphics.v1.a.b(androidx.compose.ui.graphics.v1.f4675b, i0.b.a(R$color.bg_01, iVarG, 0), 0, 2, null), iVarG, 432, 56);
            e0.a(SizeKt.l(aVar, o0.i.g(4)), iVarG, 6);
            TextKt.a(i0.h.a(R$string.tab_home, iVarG, 0), null, i0.b.a(R$color.bg_01, iVarG, 0), x.c(14), null, p.f6149b.c(), androidx.compose.ui.text.font.h.f6124b.b(), 0L, null, null, 0L, 0, false, 0, 0, null, null, iVarG, 199680, 0, 130962);
            iVar2 = iVarG;
            e0.a(SizeKt.l(aVar, o0.i.g(12)), iVar2, 6);
            iVar2.N();
            iVar2.r();
            iVar2.N();
            iVar2.N();
            if (androidx.compose.runtime.k.H()) {
                androidx.compose.runtime.k.P();
            }
        }
        g2 g2VarJ = iVar2.j();
        if (g2VarJ != null) {
            g2VarJ.a(new Function2() { // from class: com.transsion.baseui.activity.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return BaseCommonActivity.V(this.f43403a, i11, (androidx.compose.runtime.i) obj, ((Integer) obj2).intValue());
                }
            });
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (getIntent().getBooleanExtra(EXTRA_SHOW_HOME_BUTTON, false)) {
            finishAffinity();
        }
        super.finish();
    }

    public final String getClassTag() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final T getMViewBinding() {
        T t11 = this.mViewBinding;
        if (t11 != null) {
            return t11;
        }
        Intrinsics.z("mViewBinding");
        return null;
    }

    public String getPageName() {
        return "";
    }

    public abstract g4.a getViewBinding();

    public final void intercept(Context context, Bundle bundle) {
        Object objM454constructorimpl;
        Set<String> setKeySet;
        try {
            Result.Companion companion = Result.INSTANCE;
            if (bundle == null) {
                return;
            }
            String strN = ih.b.f65241a.n();
            boolean z10 = TextUtils.equals(strN, PrepareException.ERROR_MINI_APP_CLOSE) || TextUtils.equals(strN, "10");
            if (context != null && z10) {
                bundle.setClassLoader(context.getClass().getClassLoader());
                Bundle bundle2 = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
                if (bundle2 != null && (setKeySet = bundle2.keySet()) != null) {
                    for (String str : setKeySet) {
                        Object obj = bundle2.get(str);
                        Bundle bundle3 = obj instanceof Bundle ? (Bundle) obj : null;
                        ClassLoader classLoader = bundle3 != null ? bundle3.getClassLoader() : null;
                        lg.a.f68839a.j("BaseCommonActivity --> intercept() --> classLoader = " + classLoader, true);
                        Object obj2 = bundle2.get(str);
                        Bundle bundle4 = obj2 instanceof Bundle ? (Bundle) obj2 : null;
                        if (bundle4 != null) {
                            bundle4.setClassLoader(context.getClass().getClassLoader());
                        }
                    }
                }
                lg.a.f68839a.j("BaseCommonActivity --> intercept() --> 当前系统版本9、10 替换BootClassLoader -- ClassLoader", true);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        lg.a.f68839a.j("BaseCommonActivity --> intercept() --> it = " + thM457exceptionOrNullimpl, true);
    }

    public boolean isMonitorNetworkState() {
        return true;
    }

    @Override // nh.n
    public void onConnected() {
        n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        intercept(this, savedInstanceState);
        super.onCreate(savedInstanceState);
        if (isMonitorNetworkState()) {
            m.f70474a.l(this);
        }
        setMViewBinding(getViewBinding());
        setView();
        X();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (isMonitorNetworkState()) {
            m.f70474a.m(this);
        }
        k.f(null, this, 1, null);
    }

    @Override // nh.n
    public void onDisconnected() {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        k.k(null, this, 1, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        Intent launchIntentForPackage;
        try {
            super.onResume();
            k.o(null, this, 1, null);
        } catch (IllegalArgumentException unused) {
            if (isTaskRoot()) {
                String simpleName = getClass().getSimpleName();
                Intrinsics.g(simpleName, "getSimpleName(...)");
                if (StringsKt.c0(simpleName, "MainActivity", false, 2, null) && (launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName())) != null) {
                    launchIntentForPackage.addFlags(268468224);
                    startActivity(launchIntentForPackage);
                }
            }
            finish();
        }
    }

    public final void setMViewBinding(T t11) {
        Intrinsics.h(t11, "<set-?>");
        this.mViewBinding = t11;
    }

    protected abstract void setView();
}
