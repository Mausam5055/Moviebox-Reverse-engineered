package com.transsion.rewardscenter.model;

import android.app.Application;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.rewardscenter.utils.p;
import com.transsion.rewardscenter.utils.q;
import com.transsion.rewardscenterapi.Banner;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.SkuPoint;
import com.transsion.rewardscenterapi.User;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class RewardsCenterModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f50956c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f50957d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f50958e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f50959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f50960g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f50961h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f50962i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f50963j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f50964k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsCenterModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50955b = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.model.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RewardsCenterModel.z();
            }
        });
        this.f50956c = new b0();
        this.f50957d = new b0();
        this.f50958e = new b0();
        this.f50959f = new b0();
        this.f50960g = new b0();
        this.f50961h = new b0(Boolean.FALSE);
        this.f50962i = new b0();
        this.f50964k = new b0();
    }

    public static /* synthetic */ void h(RewardsCenterModel rewardsCenterModel, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = null;
        }
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        rewardsCenterModel.g(str, z10);
    }

    public static /* synthetic */ void j(RewardsCenterModel rewardsCenterModel, Function0 function0, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            function0 = null;
        }
        rewardsCenterModel.i(function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final up.a s() {
        return (up.a) this.f50955b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final up.a z() {
        return (up.a) zg.c.f79414e.a().h(up.a.class);
    }

    public final void A(String str) {
        this.f50963j = str;
    }

    public final void B(String cc2, String number, String iso) {
        Intrinsics.h(cc2, "cc");
        Intrinsics.h(number, "number");
        Intrinsics.h(iso, "iso");
        String str = this.f50963j;
        if (str == null || str.length() == 0) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$submitAndClaim$1(this, str, cc2, number, iso, null), 3, null);
    }

    public final void C(int i11) {
        User user = (User) this.f50957d.f();
        if (user == null) {
            return;
        }
        this.f50957d.q(User.copy$default(user, i11, null, null, false, 14, null));
    }

    public final void e(String drawResultId) {
        Intrinsics.h(drawResultId, "drawResultId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$claim$1(drawResultId, this, null), 3, null);
    }

    public final void f(String drawResultId) {
        Intrinsics.h(drawResultId, "drawResultId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$claimVip$1(this, drawResultId, null), 3, null);
    }

    public final void g(String str, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$drawTask$1(this, str, z10, null), 3, null);
    }

    public final void i(Function0 function0) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RewardsCenterModel$fetchRewardsCenterData$1(function0, this, null), 3, null);
    }

    public final String k() {
        Lottery lottery = (Lottery) this.f50956c.f();
        if (lottery != null) {
            return lottery.getActivityId();
        }
        return null;
    }

    public final SkuPoint l() {
        Banner banner;
        Lottery lottery = (Lottery) this.f50956c.f();
        if (lottery == null || (banner = lottery.getBanner()) == null) {
            return null;
        }
        return banner.getSku();
    }

    public final b0 m() {
        return this.f50962i;
    }

    public final b0 n() {
        return this.f50964k;
    }

    public final b0 o() {
        return this.f50961h;
    }

    public final b0 p() {
        return this.f50956c;
    }

    public final String q() {
        return this.f50963j;
    }

    public final b0 r() {
        return this.f50958e;
    }

    public final b0 t() {
        return this.f50960g;
    }

    public final String u() {
        Banner banner;
        Lottery lottery = (Lottery) this.f50956c.f();
        if (lottery == null || (banner = lottery.getBanner()) == null) {
            return null;
        }
        return banner.getSkuId();
    }

    public final b0 v() {
        return this.f50959f;
    }

    public final User w() {
        return (User) this.f50957d.f();
    }

    public final b0 x() {
        return this.f50957d;
    }

    public final void y(AppCompatActivity activity, String phone, int i11) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(phone, "phone");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("phone", phone);
        linkedHashMap.put("activity", "lottery");
        linkedHashMap.put(EventConstants.KEY_SOURCE, String.valueOf(i11));
        q.a("payment", linkedHashMap);
        com.transsion.payment.lib.f fVarA = com.transsion.payment.lib.f.f47794b.a();
        String strU = u();
        if (strU == null) {
            strU = "";
        }
        fVarA.e(activity, strU, (148 & 4) != 0 ? null : null, (148 & 8) != 0 ? null : null, (148 & 16) != 0 ? false : false, (148 & 32) != 0 ? null : linkedHashMap, new com.transsion.payment.lib.b() { // from class: com.transsion.rewardscenter.model.RewardsCenterModel$payment$1
            @Override // com.transsion.payment.lib.b
            public void a(Integer num, String str, boolean z10, String str2) {
                lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "Payment failed " + str + ", " + num, false, 4, null);
                if (str == null) {
                    str = "top-up failed, Please try again.";
                }
                p.a(false, str);
            }

            @Override // com.transsion.payment.lib.b
            public void b(boolean z10) {
                lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "onPendingTransition()", false, 4, null);
            }

            @Override // com.transsion.payment.lib.b
            public void c(int i12, String balance, String str) {
                Intrinsics.h(balance, "balance");
                RewardsCenterModel.h(this.f50965a, str, false, 2, null);
                kotlinx.coroutines.k.d(u0.a(this.f50965a), null, null, new RewardsCenterModel$payment$1$success$1(this.f50965a, null), 3, null);
            }
        }, (148 & 128) != 0 ? null : null);
    }
}
