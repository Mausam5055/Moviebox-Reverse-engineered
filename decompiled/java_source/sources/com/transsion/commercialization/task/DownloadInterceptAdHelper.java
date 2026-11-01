package com.transsion.commercialization.task;

import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.monopoly.manager.AdSceneAssetsManager;
import com.transsion.commercialization.R$string;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.OpType;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class DownloadInterceptAdHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ok.b f43845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MemberCheckResult f43846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f43847c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f43848d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BiddingNativeManager f43849e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private OpType f43850f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AdInterceptDialog f43851g;

    public DownloadInterceptAdHelper(ok.b bVar, MemberCheckResult memberCheckResult, String str, boolean z10) {
        this.f43845a = bVar;
        this.f43846b = memberCheckResult;
        this.f43847c = str;
        this.f43848d = z10;
        this.f43850f = OpType.OP_AD;
    }

    public /* synthetic */ DownloadInterceptAdHelper(ok.b bVar, MemberCheckResult memberCheckResult, String str, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar, (i11 & 2) != 0 ? null : memberCheckResult, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? false : z10);
    }

    private final void i() {
        ok.b bVar = this.f43845a;
        if (bVar != null) {
            bVar.a(false);
        }
        BiddingNativeManager biddingNativeManager = this.f43849e;
        if (biddingNativeManager != null) {
            biddingNativeManager.V();
        }
        this.f43851g = null;
    }

    private final String j(MemberCheckResult memberCheckResult) {
        return (memberCheckResult != null ? memberCheckResult.getMemberPrice() : null) + " " + (memberCheckResult != null ? memberCheckResult.getCurrency() : null) + " ";
    }

    private final void k() {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadInterceptAdHelper$loadNativeAd$1(this, null), 3, null);
    }

    private final void l() {
        com.transsion.commercialization.pslink.a.f43829a.b(AdSceneAssetsManager.f42158b.getClassTag() + " --> showAdInterceptDialog() --> 广告任务 未完成 --> 结束流程");
        uh.b.f76753a.e(Utils.a().getString(R$string.co_cancel_tips));
        ok.b bVar = this.f43845a;
        if (bVar != null) {
            bVar.onFail();
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        com.transsion.commercialization.pslink.a.f43829a.a(AdSceneAssetsManager.f42158b.getClassTag() + " --> showAdInterceptDialog() --> 广告任务完成 --> 继续执行下载任务 --> 结束流程");
        ok.b bVar = this.f43845a;
        if (bVar != null) {
            bVar.onSuccess();
        }
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.n(this.f43850f, new Function1() { // from class: com.transsion.commercialization.task.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DownloadInterceptAdHelper.n(this.f43895a, obj);
                }
            });
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n(DownloadInterceptAdHelper downloadInterceptAdHelper, Object obj) {
        com.transsion.commercialization.pslink.a.f43829a.a(AdSceneAssetsManager.f42158b.getClassTag() + " --> checkMember() --> uploadOperationStat --> " + downloadInterceptAdHelper.f43850f + " --> success");
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p(DownloadInterceptAdHelper downloadInterceptAdHelper, int i11) {
        if (i11 == 1) {
            downloadInterceptAdHelper.l();
        } else if (i11 == 2) {
            downloadInterceptAdHelper.m();
        }
        return Unit.f67061a;
    }

    public final void h() {
        k();
    }

    public final void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        MemberCheckResult memberCheckResult = this.f43846b;
        String interceptType = memberCheckResult != null ? memberCheckResult.getInterceptType() : null;
        OpType opType = OpType.OP_INSTALL;
        if (!Intrinsics.c(interceptType, opType.getValue())) {
            opType = OpType.OP_AD;
            Intrinsics.c(interceptType, opType.getValue());
        }
        this.f43850f = opType;
        ok.b bVar = this.f43845a;
        if (bVar != null) {
            bVar.a(true);
        }
        AdInterceptDialog adInterceptDialog = new AdInterceptDialog();
        this.f43851g = adInterceptDialog;
        adInterceptDialog.N0(j(this.f43846b));
        adInterceptDialog.I0(this.f43847c);
        adInterceptDialog.H0(this.f43848d);
        adInterceptDialog.F0(this.f43849e, biddingIntermediateMaterialBean);
        adInterceptDialog.G0(new Function1() { // from class: com.transsion.commercialization.task.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadInterceptAdHelper.p(this.f43894a, ((Integer) obj).intValue());
            }
        });
        adInterceptDialog.k0(com.blankj.utilcode.util.a.b(), "AdInterceptDialog");
    }
}
