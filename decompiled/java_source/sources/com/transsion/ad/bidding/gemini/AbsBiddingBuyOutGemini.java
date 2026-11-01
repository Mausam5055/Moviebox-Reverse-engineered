package com.transsion.ad.bidding.gemini;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.h5.BiddingBuyOutH5AdSourceActivity;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import oi.b;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbsBiddingBuyOutGemini implements b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f41918g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private di.a f41919a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f41921c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f41923e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f41920b = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Boolean f41922d = Boolean.TRUE;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BroadcastReceiver f41924f = new BroadcastReceiver() { // from class: com.transsion.ad.bidding.gemini.AbsBiddingBuyOutGemini$myReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(intent, "intent");
            this.f41925a.p(context, intent);
        }
    };

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final Class d(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        return AdPlanSourceManager.f42166a.c(biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null) ? BiddingBuyOutH5AdSourceActivity.class : c();
    }

    private final String g() {
        return "com.transsion.ad.bidding." + f() + ".click";
    }

    private final String h() {
        return "com.transsion.ad.bidding." + f() + ".close";
    }

    private final String i() {
        return "com.transsion.ad.bidding." + f() + ".display";
    }

    private final String j() {
        return "com.transsion.ad.bidding." + f() + ".display_timestamp";
    }

    private final di.a k() {
        return this.f41919a;
    }

    private final String l() {
        return "com.transsion.ad.bidding." + f() + ".resume";
    }

    private final String m() {
        return "com.transsion.ad.bidding." + f() + ".rewarded";
    }

    private final String n() {
        return "com.transsion.ad.bidding." + f() + ".show_error";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(Context context, Intent intent) {
        di.a aVarK;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = Build.VERSION.SDK_INT >= 33 ? (BiddingIntermediateMaterialBean) intent.getParcelableExtra("ad_max_ecpm_object", BiddingIntermediateMaterialBean.class) : (BiddingIntermediateMaterialBean) intent.getParcelableExtra("ad_max_ecpm_object");
        long longExtra = intent.getLongExtra("display_timestamp", 0L);
        String action = intent.getAction();
        if (Intrinsics.c(action, l())) {
            di.a aVarK2 = k();
            if (aVarK2 != null) {
                aVarK2.f(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, i())) {
            di.a aVarK3 = k();
            if (aVarK3 != null) {
                aVarK3.c(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, g())) {
            di.a aVarK4 = k();
            if (aVarK4 != null) {
                aVarK4.a(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, m())) {
            di.a aVarK5 = k();
            if (aVarK5 != null) {
                aVarK5.g(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, j())) {
            di.a aVarK6 = k();
            if (aVarK6 != null) {
                aVarK6.d(biddingIntermediateMaterialBean, longExtra);
                return;
            }
            return;
        }
        if (Intrinsics.c(action, h())) {
            di.a aVarK7 = k();
            if (aVarK7 != null) {
                aVarK7.b(biddingIntermediateMaterialBean);
                return;
            }
            return;
        }
        if (!Intrinsics.c(action, n()) || (aVarK = k()) == null) {
            return;
        }
        aVarK.h(null, biddingIntermediateMaterialBean);
    }

    public final void b() {
        r1.a.b(Utils.a()).e(this.f41924f);
        s(null);
        this.f41923e = false;
    }

    public abstract Class c();

    public final String e() {
        return com.transsion.ad.scene.a.f42201a.a(getMSceneId());
    }

    public abstract String f();

    @Override // oi.b
    public String getClassTag() {
        return b.a.a(this);
    }

    @Override // oi.b
    /* JADX INFO: renamed from: getSceneId */
    public String getMSceneId() {
        return this.f41920b;
    }

    public final AbsBiddingBuyOutGemini o(Boolean bool) {
        this.f41922d = bool;
        return this;
    }

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        b.a.b(this, i11, str, str2, z10);
    }

    public final AbsBiddingBuyOutGemini q() {
        if (!this.f41923e) {
            this.f41923e = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(l());
            intentFilter.addAction(i());
            intentFilter.addAction(g());
            intentFilter.addAction(m());
            intentFilter.addAction(j());
            intentFilter.addAction(h());
            intentFilter.addAction(n());
            r1.a.b(Utils.a()).c(this.f41924f, intentFilter);
        }
        return this;
    }

    public final AbsBiddingBuyOutGemini r(Integer num) {
        this.f41921c = num;
        return this;
    }

    public final AbsBiddingBuyOutGemini s(di.a aVar) {
        this.f41919a = aVar;
        return this;
    }

    public final AbsBiddingBuyOutGemini t(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.f41920b = sceneId;
        return this;
    }

    public final void u(Context context, String sceneId, BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        Object objM454constructorimpl;
        di.a aVarK;
        Unit unit;
        Intrinsics.h(sceneId, "sceneId");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (context != null) {
                Intent intent = new Intent(context, (Class<?>) d(biddingIntermediateMaterialBean));
                intent.putExtra("scene_id", sceneId);
                intent.putExtra("ad_max_ecpm_object", biddingIntermediateMaterialBean);
                intent.putExtra("app_layout_id", this.f41921c);
                intent.putExtra("is_show_member_btn", this.f41922d);
                intent.putExtra("action_resume", l());
                intent.putExtra("action_display", i());
                intent.putExtra("action_click", g());
                intent.putExtra("action_display_timestamp", j());
                intent.putExtra("action_rewarded", m());
                intent.putExtra("action_close", h());
                intent.putExtra("show_error", n());
                context.startActivity(intent);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null || (aVarK = k()) == null) {
            return;
        }
        aVarK.h(new TAdErrorCode(102, String.valueOf(thM457exceptionOrNullimpl.getMessage())), null);
    }
}
