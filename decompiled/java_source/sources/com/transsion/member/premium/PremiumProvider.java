package com.transsion.member.premium;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import com.transsion.member.c0;
import com.transsion.member.promotion.PromotionManager;
import com.transsion.member.view.MemberLayoutView;
import com.transsion.memberapi.EntitlementsBean;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.MigrateVipAssetsData;
import com.transsion.memberapi.PremiumConsumeRequestBean;
import com.transsion.memberapi.PremiumV2CheckAccessRequestBean;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class PremiumProvider implements IPremiumApi {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f46627e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f46628f = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f46629a = LazyKt.b(new Function0() { // from class: com.transsion.member.premium.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PremiumProvider.G();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f46630b = LazyKt.b(new Function0() { // from class: com.transsion.member.premium.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PremiumProvider.H();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile MemberDetail f46631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MemberLayoutView f46632d;

    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b extends sg.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ zm.j f46633d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ PremiumProvider f46634e;

        b(zm.j jVar, PremiumProvider premiumProvider) {
            this.f46633d = jVar;
            this.f46634e = premiumProvider;
        }

        @Override // sg.a
        public void a(String str, String str2) {
            lg.a.C0828a.l(lg.a.f68839a, "premium_api", "Fetch member detail failed " + str + ", " + str2, false, 4, null);
            zm.j jVar = this.f46633d;
            if (jVar != null) {
                jVar.a(str, str2);
            }
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MemberDetail memberDetail) {
            super.c(memberDetail);
            if (memberDetail != null) {
                this.f46634e.f46631c = memberDetail;
                c0.f46429a.b().putString("a81j4vNmh4ta13ST", com.blankj.utilcode.util.o.j(this.f46634e.f46631c));
                MemberInfo memberInfo = memberDetail.getMemberInfo();
                if (memberInfo != null) {
                    yg.b.a aVar = yg.b.f79009a;
                    aVar.b("X-PM-Level", String.valueOf(memberInfo.getVipLevel()));
                    aVar.b("X-PM-Active", String.valueOf(memberInfo.isActive()));
                }
                List<EntitlementsBean> entitlements = memberDetail.getEntitlements();
                boolean z10 = false;
                if (entitlements != null) {
                    Iterator<T> it = entitlements.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(((EntitlementsBean) it.next()).getEntitlementKey(), "subject_ad_free")) {
                            z10 = true;
                        }
                    }
                }
                hi.b.f64466a.c(z10);
                lg.a.C0828a.f(lg.a.f68839a, "premium_api", "Fetch member detail succeed --> isActive = " + this.f46634e.c() + " --> FreeDownloadTimes = " + this.f46634e.f() + " --> OnceDownloadLimit = " + this.f46634e.i() + " --> VipResolutionRatio = " + this.f46634e.t(), false, 4, null);
            } else {
                lg.a.C0828a.l(lg.a.f68839a, "premium_api", "Fetch member detail failed", false, 4, null);
            }
            zm.j jVar = this.f46633d;
            if (jVar != null) {
                jVar.b(memberDetail);
            }
        }
    }

    public static final class c extends sg.a {
        c() {
        }

        @Override // sg.a
        public void a(String str, String str2) {
            com.transsion.member.a.f46406a.b("migrateVipAssets failed " + str + ", " + str2);
        }

        @Override // sg.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void c(MigrateVipAssetsData migrateVipAssetsData) {
            super.c(migrateVipAssetsData);
            com.transsion.member.a.f46406a.b("migrateVipAssets onSuccess:" + migrateVipAssetsData);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final native vm.a E();

    private final native PromotionManager F();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native vm.a G();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native PromotionManager H();

    /* JADX INFO: Access modifiers changed from: private */
    public static final native void I(Function0 function0, DialogInterface dialogInterface);

    @Override // com.transsion.memberapi.IPremiumApi
    public native void a(Activity activity, MemberSource memberSource, zm.b bVar, boolean z10, String str);

    @Override // com.transsion.memberapi.IPremiumApi
    public native MemberDetail b();

    @Override // com.transsion.memberapi.IPremiumApi
    public native boolean c();

    @Override // com.transsion.memberapi.IPremiumApi
    public void d(Context context, String sceneId, Function0 function0, Function0 function1, Function0 function2, Function1 function3) {
        Intrinsics.h(context, "context");
        Intrinsics.h(sceneId, "sceneId");
        F().t(context, sceneId, function0, function1, function2, function3);
    }

    @Override // com.transsion.memberapi.IPremiumApi
    public native void e(Context context, Function1 function1, Function1 function2);

    @Override // com.transsion.memberapi.IPremiumApi
    public native int f();

    @Override // com.transsion.memberapi.IPremiumApi
    public native void g(zm.j jVar);

    @Override // com.transsion.memberapi.IPremiumApi
    public native void h(Context context, zm.f fVar, Function0 function0, String str, String str2, String str3, String str4);

    @Override // com.transsion.memberapi.IPremiumApi
    public native int i();

    @Override // com.transsion.memberapi.IPremiumApi
    public native void j(String str, String str2, String str3, String str4);

    @Override // com.transsion.memberapi.IPremiumApi
    public native boolean k();

    @Override // com.transsion.memberapi.IPremiumApi
    public native void l(Context context, Function1 function1, Function0 function0, Function1 function2);

    @Override // com.transsion.memberapi.IPremiumApi
    public native String m();

    @Override // com.transsion.memberapi.IPremiumApi
    public native void n();

    @Override // com.transsion.memberapi.IPremiumApi
    public native Integer o();

    @Override // com.transsion.memberapi.IPremiumApi
    public native void p(String str);

    @Override // com.transsion.memberapi.IPremiumApi
    public native Object q(PremiumV2CheckAccessRequestBean premiumV2CheckAccessRequestBean, Function1 function1, Continuation continuation);

    @Override // com.transsion.memberapi.IPremiumApi
    public View r(Context context, int i11, Function0 function0, Function0 function1, MemberSource memberSource, Function2 function2, String str, String str2, String str3, String str4) {
        Intrinsics.h(context, "context");
        MemberLayoutView memberLayoutView = this.f46632d;
        if (memberLayoutView != null) {
            if ((memberLayoutView != null ? memberLayoutView.getContext() : null) != context) {
                MemberLayoutView memberLayoutView2 = this.f46632d;
                if (memberLayoutView2 != null) {
                    memberLayoutView2.onDestroy();
                }
                this.f46632d = null;
            }
        }
        MemberLayoutView memberLayoutView3 = this.f46632d;
        if (memberLayoutView3 == null) {
            MemberLayoutView memberLayoutView4 = new MemberLayoutView(context, null, 0, 6, null);
            memberLayoutView4.setScreenState(i11);
            memberLayoutView4.setPageName(str == null ? "" : str);
            memberLayoutView4.setTraceId(str2 == null ? "" : str2);
            memberLayoutView4.setSceneId(str3 == null ? "" : str3);
            memberLayoutView4.setSubjectId(str4 != null ? str4 : "");
            memberLayoutView4.init(function0, function1, memberSource, function2);
            this.f46632d = memberLayoutView4;
            return memberLayoutView4;
        }
        if (memberLayoutView3 == null || i11 != memberLayoutView3.getScreenState()) {
            MemberLayoutView memberLayoutView5 = this.f46632d;
            if (memberLayoutView5 != null) {
                memberLayoutView5.setScreenState(i11);
            }
            MemberLayoutView memberLayoutView6 = this.f46632d;
            if (memberLayoutView6 != null) {
                memberLayoutView6.updateViewWithScreenState();
            }
        }
        MemberLayoutView memberLayoutView7 = this.f46632d;
        if (memberLayoutView7 != null) {
            memberLayoutView7.resetControllerFirstShowDlg();
        }
        MemberLayoutView memberLayoutView8 = this.f46632d;
        if (memberLayoutView8 != null) {
            memberLayoutView8.setOnClose(function0);
        }
        MemberLayoutView memberLayoutView9 = this.f46632d;
        if (memberLayoutView9 != null) {
            memberLayoutView9.setOnPurchaseSucceed(function1);
        }
        MemberLayoutView memberLayoutView10 = this.f46632d;
        if (memberLayoutView10 != null) {
            memberLayoutView10.setPageName(str == null ? "" : str);
        }
        MemberLayoutView memberLayoutView11 = this.f46632d;
        if (memberLayoutView11 != null) {
            memberLayoutView11.updateZeroTreasureState();
        }
        MemberLayoutView memberLayoutView12 = this.f46632d;
        if (memberLayoutView12 != null) {
            memberLayoutView12.setTraceId(str2 == null ? "" : str2);
        }
        MemberLayoutView memberLayoutView13 = this.f46632d;
        if (memberLayoutView13 != null) {
            memberLayoutView13.setSceneId(str3 == null ? "" : str3);
        }
        MemberLayoutView memberLayoutView14 = this.f46632d;
        if (memberLayoutView14 != null) {
            memberLayoutView14.setSubjectId(str4 != null ? str4 : "");
        }
        return this.f46632d;
    }

    @Override // com.transsion.memberapi.IPremiumApi
    public native void s(PremiumConsumeRequestBean premiumConsumeRequestBean);

    @Override // com.transsion.memberapi.IPremiumApi
    public native int t();

    @Override // com.transsion.memberapi.IPremiumApi
    public native boolean u();

    @Override // com.transsion.memberapi.IPremiumApi
    public native void v();

    @Override // com.transsion.memberapi.IPremiumApi
    public native int w();

    @Override // com.transsion.memberapi.IPremiumApi
    public native int x();
}
