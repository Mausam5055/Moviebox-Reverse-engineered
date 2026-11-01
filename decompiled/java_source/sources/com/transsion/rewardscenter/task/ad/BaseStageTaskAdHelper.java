package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.TAdNativeInfo;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.rewardscenterapi.MemberTaskItem;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseStageTaskAdHelper {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f51031e = new b(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f51032f = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f51033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n0 f51034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f51035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f51036d;

    public interface a {
        void a(Integer num);

        void b();

        void start();
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public BaseStageTaskAdHelper(Context context, n0 n0Var) {
        Intrinsics.h(context, "context");
        this.f51033a = context;
        this.f51034b = n0Var;
    }

    public static /* synthetic */ void A(BaseStageTaskAdHelper baseStageTaskAdHelper, v vVar, Function0 function0, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startClaim");
        }
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        baseStageTaskAdHelper.z(vVar, function0);
    }

    public void c(v.c data) {
        Intrinsics.h(data, "data");
    }

    public void d() {
    }

    public final long e(String str) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(str);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("expDuration")) == null) {
            return 30000L;
        }
        return jsonElement.getAsLong();
    }

    public final void f(Function0 function0) {
        Unit unit;
        if (u.f51122a.j() != null) {
            if (function0 != null) {
                function0.invoke();
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        n0 n0Var = this.f51034b;
        if (n0Var != null) {
            kotlinx.coroutines.k.d(n0Var, null, null, new BaseStageTaskAdHelper$fetchMemberAdTaskInfo$2$1(function0, null), 3, null);
        }
    }

    public final String g(BiddingIntermediateMaterialBean adBean) {
        List<AdMaterialList> adMaterialList;
        AdMaterialList adMaterialList2;
        RecommendInfo psRecommendInfo;
        String packageName;
        AdsDTO adItem;
        Intrinsics.h(adBean, "adBean");
        if (adBean.getNativeInfo() != null) {
            TAdNativeInfo nativeInfo = adBean.getNativeInfo();
            if (nativeInfo == null || (packageName = nativeInfo.getPackageName()) == null) {
                return "";
            }
        } else if (adBean.getSspNativeInfo() != null) {
            TaNativeInfo sspNativeInfo = adBean.getSspNativeInfo();
            if (sspNativeInfo == null || (adItem = sspNativeInfo.getAdItem()) == null) {
                return "";
            }
            String psPackageName = adItem.getPsPackageName();
            packageName = (psPackageName == null || psPackageName.length() == 0) ? adItem.getPackageName() : adItem.getPsPackageName();
            if (packageName == null) {
                return "";
            }
        } else {
            AdPlans plans = adBean.getPlans();
            if (plans == null || (adMaterialList = plans.getAdMaterialList()) == null || (adMaterialList2 = adMaterialList.get(0)) == null || (psRecommendInfo = adMaterialList2.getPsRecommendInfo()) == null || (packageName = psRecommendInfo.getPackageName()) == null) {
                return "";
            }
        }
        return packageName;
    }

    public final long h() {
        return this.f51035c;
    }

    public final boolean i(BiddingIntermediateMaterialBean adBean) {
        RecommendInfo psRecommendInfo;
        Integer adType;
        List<AdMaterialList> adMaterialList;
        AdsDTO adItem;
        Integer pullNewestLive;
        AdsDTO adItem2;
        Integer pullNewestLive2;
        Intrinsics.h(adBean, "adBean");
        if (adBean.getSspNativeInfo() != null) {
            TaNativeInfo sspNativeInfo = adBean.getSspNativeInfo();
            if (sspNativeInfo == null || (adItem2 = sspNativeInfo.getAdItem()) == null || (pullNewestLive2 = adItem2.getPullNewestLive()) == null || pullNewestLive2.intValue() != 1) {
                TaNativeInfo sspNativeInfo2 = adBean.getSspNativeInfo();
                if (sspNativeInfo2 != null && (adItem = sspNativeInfo2.getAdItem()) != null && (pullNewestLive = adItem.getPullNewestLive()) != null && pullNewestLive.intValue() == 2) {
                    return true;
                }
            } else if (!com.transsion.rewardscenter.utils.o.f51311a.a(this.f51033a, g(adBean))) {
                return true;
            }
        } else {
            AdPlans plans = adBean.getPlans();
            AdMaterialList adMaterialList2 = (plans == null || (adMaterialList = plans.getAdMaterialList()) == null) ? null : (AdMaterialList) CollectionsKt.k0(adMaterialList);
            if (adMaterialList2 != null && (psRecommendInfo = adMaterialList2.getPsRecommendInfo()) != null && (adType = psRecommendInfo.getAdType()) != null && adType.intValue() == 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(v.a aVar) {
        return (aVar != null ? aVar.e() : null) == AdTaskState.DOWNLOADING && aVar.g() > 0 && System.currentTimeMillis() - aVar.g() > 180000;
    }

    public final boolean k(v.c cVar) {
        return (cVar != null ? cVar.e() : null) == AdTaskState.DOWNLOADING && cVar.g() > 0 && System.currentTimeMillis() - cVar.g() > 180000;
    }

    public final boolean l(v.c cVar) {
        if (cVar == null || cVar.e() != AdTaskState.PLAYING) {
            return false;
        }
        cVar.q(System.currentTimeMillis() - this.f51035c);
        lg.a.C0828a.f(lg.a.f68839a, "StageTaskAd", "----> onResume playedTime: " + cVar.j(), false, 4, null);
        if (cVar.j() >= e(cVar.c().getSceneId())) {
            cVar.m(AdTaskState.PLAYED);
            u.f51122a.v(cVar.i(), cVar.e());
            return true;
        }
        com.transsion.rewardscenter.utils.p.a(false, "Play for 30 seconds to get the reward.");
        cVar.m(AdTaskState.CLAIMED_STAGE1);
        u.f51122a.v(cVar.i(), cVar.e());
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0050  */
    public final boolean m(v.a aVar) {
        boolean z10;
        boolean z11;
        if (aVar == null) {
            return false;
        }
        if (aVar.e() != AdTaskState.DOWNLOADING) {
            z10 = false;
            z11 = false;
        } else if (com.transsion.rewardscenter.utils.o.f51311a.a(this.f51033a, aVar.i())) {
            aVar.m(AdTaskState.INSTALLED);
            u.f51122a.v(aVar.i(), aVar.e());
            z11 = false;
            z10 = true;
        } else if (j(aVar)) {
            aVar.m(AdTaskState.NORMAL);
            aVar.o(0L);
            u.f51122a.v(aVar.i(), aVar.e());
            z10 = false;
            z11 = true;
        } else {
            z10 = false;
            z11 = false;
        }
        return z10 || z11;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0056  */
    public final boolean n(v.c cVar) {
        boolean z10;
        boolean z11;
        if (cVar == null) {
            return false;
        }
        AdTaskState adTaskStateE = cVar.e();
        AdTaskState adTaskState = AdTaskState.NORMAL;
        if (adTaskStateE != adTaskState && cVar.e() != AdTaskState.DOWNLOADING) {
            z10 = false;
            z11 = false;
        } else if (com.transsion.rewardscenter.utils.o.f51311a.a(this.f51033a, cVar.i())) {
            cVar.m(AdTaskState.INSTALLED);
            u.f51122a.v(cVar.i(), cVar.e());
            z11 = false;
            z10 = true;
        } else if (k(cVar)) {
            cVar.m(adTaskState);
            cVar.o(0L);
            u.f51122a.v(cVar.i(), cVar.e());
            z10 = false;
            z11 = true;
        } else {
            z10 = false;
            z11 = false;
        }
        return z10 || z11;
    }

    public final void o() {
        this.f51035c = System.currentTimeMillis();
    }

    public final void p() {
    }

    public final int q(String str) {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b(str);
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("cooldownDays")) == null) {
            return 3;
        }
        return jsonElement.getAsInt();
    }

    public final void r() {
        if (v() > 0) {
            BiddingSspNativeManager.Companion.b(BiddingSspNativeManager.A, "MemberTaskStageNativeScene", null, 2, null);
        }
        if (u() > 0 || t() > 0) {
            BiddingSspNativeManager.Companion.b(BiddingSspNativeManager.A, "MemberTaskRegularNativeScene", null, 2, null);
        }
    }

    public final int s(MemberTaskItem memberTaskItem) {
        Integer totalProgress;
        if (memberTaskItem == null) {
            return 0;
        }
        Integer status = memberTaskItem.getStatus();
        if ((status != null && status.intValue() == 3) || (totalProgress = memberTaskItem.getTotalProgress()) == null) {
            return 0;
        }
        int iIntValue = totalProgress.intValue();
        Integer progress = memberTaskItem.getProgress();
        return iIntValue - (progress != null ? progress.intValue() : 0);
    }

    public final int t() {
        return s(u.f51122a.g());
    }

    public final int u() {
        return s(u.f51122a.h());
    }

    public final int v() {
        return s(u.f51122a.j());
    }

    public final int w() {
        return s(u.f51122a.k());
    }

    public final void x(a aVar) {
        this.f51036d = aVar;
    }

    public final void y(String packageName, Integer num) {
        Intrinsics.h(packageName, "packageName");
        u.f51122a.u(packageName, num);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x004f  */
    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x006d  */
    /* JADX WARN: Code duplicated, block: B:32:? A[RETURN, SYNTHETIC] */
    public final void z(v vVar, Function0 function0) {
        MemberTaskItem memberTaskItem;
        MemberTaskItem memberTaskItemI;
        a aVar;
        n0 n0Var;
        a aVar2 = this.f51036d;
        if (aVar2 != null) {
            aVar2.start();
        }
        if (vVar instanceof v.c) {
            memberTaskItemI = ((v.c) vVar).e() == AdTaskState.INSTALLED ? u.f51122a.j() : u.f51122a.k();
        } else {
            if (!(vVar instanceof v.a)) {
                if (vVar instanceof v.b) {
                    memberTaskItemI = u.f51122a.i();
                } else {
                    memberTaskItem = null;
                }
                if (memberTaskItem != null) {
                    n0Var = this.f51034b;
                    if ((n0Var != null ? kotlinx.coroutines.k.d(n0Var, null, null, new BaseStageTaskAdHelper$startClaim$1$1(memberTaskItem, this, vVar, function0, null), 3, null) : null) != null) {
                        return;
                    }
                }
                aVar = this.f51036d;
                if (aVar != null) {
                    aVar.b();
                }
                com.transsion.rewardscenter.utils.p.a(false, "Failed to claim points.");
                Unit unit = Unit.f67061a;
            }
            memberTaskItemI = ((v.a) vVar).k() ? u.f51122a.h() : u.f51122a.g();
        }
        memberTaskItem = memberTaskItemI;
        if (memberTaskItem != null) {
            n0Var = this.f51034b;
            if ((n0Var != null ? kotlinx.coroutines.k.d(n0Var, null, null, new BaseStageTaskAdHelper$startClaim$1$1(memberTaskItem, this, vVar, function0, null), 3, null) : null) != null) {
                return;
            }
        }
        aVar = this.f51036d;
        if (aVar != null) {
            aVar.b();
        }
        com.transsion.rewardscenter.utils.p.a(false, "Failed to claim points.");
        Unit unit2 = Unit.f67061a;
    }
}
