package com.transsion.commercialization.task;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.animation.RotateAnimation;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.v;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.bean.AdditionalInfo;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$string;
import com.tn.lib.widget.R$style;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.icon.BiddingIconAdManager;
import com.transsion.ad.bidding.icon.BiddingWrapperIconBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.commercialization.R$layout;
import com.transsion.memberapi.IMemberApi;
import com.transsion.memberapi.MemberSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0095\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u0001w\u0018\u0000 {2\u00020\u0001:\u0001|B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0003J\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0003J\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u0019\u0010\u0018\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0003J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0003J\u0019\u0010\u001c\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001c\u0010\u0019J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0003J\u0019\u0010\u001e\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001e\u0010\u0019J\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0003J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0003J\u000f\u0010!\u001a\u00020\u0006H\u0002¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0003J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0003J\u000f\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0004\b$\u0010\u0003J\u000f\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b%\u0010\u0003J\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020&H\u0002¢\u0006\u0004\b)\u0010(J\u000f\u0010*\u001a\u00020\u0006H\u0002¢\u0006\u0004\b*\u0010\u0003J\u0019\u0010-\u001a\u00020\u00062\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b-\u0010.J!\u0010/\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010,\u001a\u0004\u0018\u00010+H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0003J\u0017\u00104\u001a\u00020\u00062\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u001a\u0010>\u001a\b\u0012\u0004\u0012\u00020;0:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR&\u0010F\u001a\u0012\u0012\u0004\u0012\u00020&\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0016\u0010I\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010PR\u001b\u0010W\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010(R\u0016\u0010Y\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010PR\u0016\u0010[\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010PR\u0016\u0010]\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010HR\u001b\u0010`\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010U\u001a\u0004\b_\u0010(R\u0014\u0010b\u001a\u00020N8\u0002X\u0082D¢\u0006\u0006\n\u0004\ba\u0010PR\u0014\u0010d\u001a\u00020N8\u0002X\u0082D¢\u0006\u0006\n\u0004\bc\u0010PR\u0016\u0010h\u001a\u00020e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010l\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0018\u0010p\u001a\u0004\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u0016\u0010r\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010PR\u0014\u0010v\u001a\u00020s8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bt\u0010uR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010y¨\u0006}"}, d2 = {"Lcom/transsion/commercialization/task/DownloadInterceptDialog;", "Lcom/transsion/baseui/dialog/BaseDialog;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "g1", "(Landroid/view/View;)V", "f1", "w1", "m1", "u1", "loadData", "G1", "W0", "B1", "Z0", "t1", "s1", "D1", "j1", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "F1", "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "Y0", "i1", "E1", "X0", "q1", "r1", "n1", "l1", "o1", "p1", "v1", "h1", "", "d1", "()I", "a1", "C1", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onDestroy", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "(Landroid/content/DialogInterface;)V", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "c", "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;", "adManager", "", "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/List;", "iconList", "Lkk/d;", "e", "Lkk/d;", "bind", "Lkotlin/Function1;", "f", "Lkotlin/jvm/functions/Function1;", "mCallback", "g", "I", "finishTaskType", "Lcom/transsion/commercialization/task/n;", "h", "Lcom/transsion/commercialization/task/n;", "mDownloadAdapter", "", "i", "Z", "isLoading", "j", "mIsTask", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "b1", "iconFetchCount", "l", "isRewardedAdShow", "m", "shouldCheckIconAd", "n", "curShowErrorTimes", "o", "c1", "maxShowErrorTimes", TtmlNode.TAG_P, "isRewardedOff", CampaignEx.JSON_KEY_AD_Q, "isRewardInterstitialOff", "", CampaignEx.JSON_KEY_AD_R, "Ljava/lang/String;", "interceptSceneId", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "s", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "rewardedAdManager", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "t", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "interstitialAdManager", TmcStartParams.KEY_URL_SHORT, "isRewarded", "Ldi/a;", "v", "Ldi/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "com/transsion/commercialization/task/DownloadInterceptDialog$d", "w", "Lcom/transsion/commercialization/task/DownloadInterceptDialog$d;", "rewardInterceptListener", "x", "a", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadInterceptDialog extends BaseDialog {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private BiddingIconAdManager adManager;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final List iconList;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private kk.d bind;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Function1 mCallback;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int finishTaskType;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private n mDownloadAdapter;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isLoading;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private boolean mIsTask;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy iconFetchCount;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isRewardedAdShow;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean shouldCheckIconAd;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int curShowErrorTimes;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Lazy maxShowErrorTimes;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final boolean isRewardedOff;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final boolean isRewardInterstitialOff;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String interceptSceneId;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private BiddingVideoManager rewardedAdManager;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private BiddingInterstitialManager interstitialAdManager;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private boolean isRewarded;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final di.a listener;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private final d rewardInterceptListener;

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter != null) {
                if (adapter.getItemCount() == 1) {
                    outRect.top = a0.a(8.0f);
                    return;
                }
                if (childAdapterPosition == 0) {
                    outRect.top = a0.a(8.0f);
                    outRect.bottom = a0.a(12.0f);
                } else if (childAdapterPosition == adapter.getItemCount() - 1) {
                    outRect.bottom = a0.a(4.0f);
                } else {
                    outRect.bottom = a0.a(12.0f);
                }
            }
        }
    }

    public static final class c extends di.a {
        c() {
        }

        @Override // com.hisavana.common.interfacz.TAdditionalListener
        public void onClick(TAdNativeInfo tAdNativeInfo, AdditionalInfo p11) {
            Intrinsics.h(p11, "p1");
            super.onClick(tAdNativeInfo, p11);
            DownloadInterceptDialog.this.m1();
        }

        @Override // di.a
        public void r(RecommendInfo recommendInfo) {
            super.r(recommendInfo);
            DownloadInterceptDialog.this.m1();
        }

        @Override // di.a
        public void w(List list) {
            super.w(list);
            DownloadInterceptDialog.this.iconList.clear();
            if (list != null && (!list.isEmpty())) {
                DownloadInterceptDialog.this.iconList.addAll(list);
            }
            DownloadInterceptDialog.this.B1();
        }
    }

    public static final class d extends di.a {
        d() {
        }

        @Override // di.a
        public void i(TAdErrorCode tAdErrorCode) {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> rewardedListener --> onBiddingError() --> 广告加载失败");
            DownloadInterceptDialog.this.o1();
        }

        @Override // di.a
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> rewardedListener --> onLoad() --> 广告加载成功");
            DownloadInterceptDialog.this.q1(biddingIntermediateMaterialBean);
        }

        @Override // di.a
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> rewardedListener --> onClosed() --> 广告关闭");
            DownloadInterceptDialog.this.n1();
        }

        @Override // di.a
        public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> rewardedListener --> onShow() --> 广告展示");
            DownloadInterceptDialog.this.r1();
        }

        @Override // di.a
        public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> rewardedListener --> onRewarded() --> 激励广告奖励");
            DownloadInterceptDialog.this.l1();
        }

        @Override // di.a
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> rewardedListener --> onShowError() --> 广告展示失败");
            DownloadInterceptDialog.this.p1();
        }
    }

    public static final class e implements zm.b {
        e() {
        }

        @Override // zm.b
        public void a() {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> startMemberPage() --> onFailed() --> 开通会员失败");
        }

        @Override // zm.b
        public void onSuccess() {
            com.transsion.commercialization.pslink.a.f43829a.a(DownloadInterceptDialog.this.getClassTag() + " --> startMemberPage() --> onSuccess() --> 开通会员成功，直接下载不需要做任务了");
            DownloadInterceptDialog.this.finishTaskType = 2;
            DownloadInterceptDialog.this.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: renamed from: com.transsion.commercialization.task.DownloadInterceptDialog$loadData$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.commercialization.task.DownloadInterceptDialog$loadData$1", f = "DownloadInterceptDialog.kt", l = {328}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DownloadInterceptDialog.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            Object objF = IntrinsicsKt.f();
            int i11 = this.label;
            if (i11 == 0) {
                ResultKt.b(obj);
                BiddingIconAdManager biddingIconAdManager = DownloadInterceptDialog.this.adManager;
                int iB1 = DownloadInterceptDialog.this.b1();
                di.a aVar = DownloadInterceptDialog.this.listener;
                this.label = 1;
                if (BiddingIconAdManager.S(biddingIconAdManager, "DownloadInterceptIconAdScene", true, iB1, aVar, null, this, 16, null) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
    }

    public DownloadInterceptDialog() {
        super(R$layout.dialog_download_intercept_v2_layout);
        this.adManager = new BiddingIconAdManager();
        this.iconList = new ArrayList();
        this.finishTaskType = 1;
        this.iconFetchCount = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.task.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(DownloadInterceptDialog.e1(this.f43896a));
            }
        });
        this.shouldCheckIconAd = true;
        this.maxShowErrorTimes = LazyKt.b(new Function0() { // from class: com.transsion.commercialization.task.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Integer.valueOf(DownloadInterceptDialog.k1(this.f43897a));
            }
        });
        this.isRewardedOff = true;
        this.isRewardInterstitialOff = true;
        this.interceptSceneId = "";
        this.listener = new c();
        this.rewardInterceptListener = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(DownloadInterceptDialog downloadInterceptDialog, View view) {
        downloadInterceptDialog.D1();
        com.transsion.commercialization.pslink.f.f43830a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B1() {
        kk.h hVar;
        ConstraintLayout constraintLayout;
        Context context;
        ConstraintLayout constraintLayout2;
        if (isDetached() || getActivity() == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.iconList.isEmpty()) {
            arrayList.add(this.iconList.get(0));
            this.iconList.remove(0);
        }
        if (!arrayList.isEmpty()) {
            u1();
            n nVar = this.mDownloadAdapter;
            if (nVar != null) {
                nVar.n1(arrayList);
            }
        } else if (this.shouldCheckIconAd) {
            kk.d dVar = this.bind;
            if (dVar != null && (constraintLayout2 = dVar.f66821b) != null) {
                jg.c.g(constraintLayout2);
            }
            if (this.isRewardedOff) {
                Z0();
            }
        } else {
            uh.b.a aVar = uh.b.f76753a;
            kk.d dVar2 = this.bind;
            aVar.e((dVar2 == null || (hVar = dVar2.f66829j) == null || (constraintLayout = hVar.f66878c) == null || (context = constraintLayout.getContext()) == null) ? null : context.getString(R$string.no_more_ad_tips));
        }
        this.shouldCheckIconAd = false;
        this.isLoading = false;
        W0();
        com.transsion.commercialization.pslink.a.f43829a.b(getClassTag() + " --> show() --> 组装数据 ..... --> excessiveList.size = " + arrayList.size() + " 一次数据加载结束 -- isLoading = false");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1() {
        if (this.mIsTask) {
            return;
        }
        uh.b.f76753a.g(R$layout.download_toast_layout, "+1 download granted", (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : a0.a(66.0f));
    }

    private final void D1() {
        String str = this.interceptSceneId;
        if (Intrinsics.c(str, "DownloadInterceptRewarded")) {
            j1();
        } else if (Intrinsics.c(str, "DownloadInterceptInterstitial")) {
            i1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E1(BiddingIntermediateMaterialBean maxEcpmObject) {
        Context context = getContext();
        if (context != null) {
            this.interceptSceneId = "DownloadInterceptInterstitial";
            kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$showInterstitialAd$1$1(this, context, maxEcpmObject, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F1(BiddingIntermediateMaterialBean maxEcpmObject) {
        Context context = getContext();
        if (context != null) {
            this.interceptSceneId = "DownloadInterceptRewarded";
            kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$showRewardedAd$1$1(this, context, maxEcpmObject, null), 3, null);
        }
    }

    private final void G1() {
        AppCompatImageView appCompatImageView;
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setDuration(1000L);
        rotateAnimation.setRepeatCount(-1);
        kk.d dVar = this.bind;
        if (dVar == null || (appCompatImageView = dVar.f66826g) == null) {
            return;
        }
        appCompatImageView.startAnimation(rotateAnimation);
    }

    private final void W0() {
        AppCompatImageView appCompatImageView;
        kk.d dVar = this.bind;
        if (dVar == null || (appCompatImageView = dVar.f66826g) == null) {
            return;
        }
        appCompatImageView.clearAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void X0() {
        BiddingInterstitialManager biddingInterstitialManager = this.interstitialAdManager;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        this.interstitialAdManager = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Y0() {
        BiddingVideoManager biddingVideoManager = this.rewardedAdManager;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
        this.rewardedAdManager = null;
    }

    private final void Z0() {
        this.finishTaskType = 3;
        dismissAllowingStateLoss();
    }

    private final int a1() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("DownloadInterceptRewarded");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("iconFetchCount")) == null) {
            return 10;
        }
        return jsonElement.getAsInt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int b1() {
        return ((Number) this.iconFetchCount.getValue()).intValue();
    }

    private final int c1() {
        return ((Number) this.maxShowErrorTimes.getValue()).intValue();
    }

    private final int d1() {
        JsonElement jsonElement;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f42204a.b("DownloadInterceptRewarded");
        if (jsonObjectB == null || (jsonElement = jsonObjectB.get("maxShowErrorTimes")) == null) {
            return 3;
        }
        return jsonElement.getAsInt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e1(DownloadInterceptDialog downloadInterceptDialog) {
        return downloadInterceptDialog.a1();
    }

    private final void f1() {
        RecyclerView recyclerView;
        kk.d dVar = this.bind;
        if (dVar == null || (recyclerView = dVar.f66830k) == null) {
            return;
        }
        n nVar = new n(this.adManager);
        this.mDownloadAdapter = nVar;
        recyclerView.setAdapter(nVar);
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        recyclerView.addItemDecoration(new b());
    }

    private final void g1(View view) {
        LinearLayoutCompat linearLayoutCompat;
        ConstraintLayout constraintLayout;
        kk.h hVar;
        ConstraintLayout constraintLayout2;
        Window window;
        Window window2;
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-1, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(false);
        }
        this.bind = kk.d.a(view);
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (!(iMemberApi != null ? iMemberApi.B() : false) || this.mIsTask) {
            kk.d dVar = this.bind;
            if (dVar != null && (constraintLayout = dVar.f66822c) != null) {
                constraintLayout.setVisibility(8);
            }
            kk.d dVar2 = this.bind;
            if (dVar2 != null && (linearLayoutCompat = dVar2.f66828i) != null) {
                linearLayoutCompat.setVisibility(8);
            }
        }
        kk.d dVar3 = this.bind;
        if (dVar3 == null || (hVar = dVar3.f66829j) == null || (constraintLayout2 = hVar.f66878c) == null) {
            return;
        }
        constraintLayout2.setVisibility(this.isRewardedOff ? 8 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h1() {
        kk.h hVar;
        ConstraintLayout constraintLayout;
        Context context;
        ConstraintLayout constraintLayout2;
        kk.h hVar2;
        ConstraintLayout constraintLayout3;
        Context context2;
        X0();
        kk.d dVar = this.bind;
        String string = null;
        if (dVar == null || (constraintLayout2 = dVar.f66821b) == null || jg.c.i(constraintLayout2)) {
            uh.b.a aVar = uh.b.f76753a;
            kk.d dVar2 = this.bind;
            if (dVar2 != null && (hVar = dVar2.f66829j) != null && (constraintLayout = hVar.f66878c) != null && (context = constraintLayout.getContext()) != null) {
                string = context.getString(R$string.common_failed);
            }
            aVar.e(string);
            return;
        }
        Z0();
        uh.b.a aVar2 = uh.b.f76753a;
        kk.d dVar3 = this.bind;
        if (dVar3 != null && (hVar2 = dVar3.f66829j) != null && (constraintLayout3 = hVar2.f66878c) != null && (context2 = constraintLayout3.getContext()) != null) {
            string = context2.getString(com.transsion.commercialization.R$string.reward_intercept_skip);
        }
        aVar2.e(string);
    }

    private final void i1() {
        Context context;
        if (this.isRewardInterstitialOff || (context = getContext()) == null) {
            return;
        }
        this.interceptSceneId = "DownloadInterceptInterstitial";
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$loadInterstitialAd$1$1(this, context, null), 3, null);
    }

    private final void j1() {
        Context context;
        if (this.isRewardedOff || (context = getContext()) == null) {
            return;
        }
        this.interceptSceneId = "DownloadInterceptRewarded";
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$loadRewardedAd$1$1(this, context, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int k1(DownloadInterceptDialog downloadInterceptDialog) {
        return downloadInterceptDialog.d1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$onAdRewarded$1(this, null), 3, null);
    }

    private final void loadData() {
        this.isLoading = true;
        G1();
        kotlinx.coroutines.k.d(v.a(this), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m1() {
        this.finishTaskType = 2;
        dismissAllowingStateLoss();
        C1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n1() {
        this.isRewardedAdShow = false;
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$onRewardAdClose$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o1() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$onRewardLoadError$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p1() {
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$onRewardShowError$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q1(BiddingIntermediateMaterialBean maxEcpmObject) {
        kotlinx.coroutines.k.d(v.a(this), null, null, new DownloadInterceptDialog$onRewardedLoad$1(this, maxEcpmObject, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r1() {
        this.isRewardedAdShow = true;
        this.curShowErrorTimes = 0;
    }

    private final void s1() {
        if (this.isRewardInterstitialOff) {
            return;
        }
        this.interceptSceneId = "DownloadInterceptInterstitial";
        BiddingInterstitialManager.Companion.b(BiddingInterstitialManager.f41965w, "DownloadInterceptInterstitial", null, 2, null);
    }

    private final void t1() {
        if (this.isRewardedOff) {
            return;
        }
        this.interceptSceneId = "DownloadInterceptRewarded";
        BiddingVideoManager.Companion.b(BiddingVideoManager.f42049w, "DownloadInterceptRewarded", null, 2, null);
    }

    private final void u1() {
        List<Object> data;
        TAdNativeInfo nativeInfo;
        n nVar = this.mDownloadAdapter;
        if (nVar == null || (data = nVar.getData()) == null) {
            return;
        }
        Iterator<T> it = data.iterator();
        while (it.hasNext()) {
            BiddingWrapperIconBean biddingWrapperIconBean = (BiddingWrapperIconBean) it.next();
            if (biddingWrapperIconBean.getType() == 2 && (nativeInfo = biddingWrapperIconBean.getNativeInfo()) != null) {
                nativeInfo.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v1() {
        kk.d dVar;
        ConstraintLayout constraintLayout;
        kk.h hVar;
        ConstraintLayout constraintLayout2;
        Context context;
        uh.b.a aVar = uh.b.f76753a;
        kk.d dVar2 = this.bind;
        aVar.e((dVar2 == null || (hVar = dVar2.f66829j) == null || (constraintLayout2 = hVar.f66878c) == null || (context = constraintLayout2.getContext()) == null) ? null : context.getString(R$string.common_failed));
        if (!this.isRewardInterstitialOff) {
            Y0();
            s1();
            return;
        }
        int i11 = this.curShowErrorTimes + 1;
        this.curShowErrorTimes = i11;
        if (i11 < c1() || (dVar = this.bind) == null || (constraintLayout = dVar.f66821b) == null || jg.c.i(constraintLayout)) {
            return;
        }
        Z0();
    }

    private final void w1() {
        kk.h hVar;
        ConstraintLayout constraintLayout;
        ConstraintLayout constraintLayout2;
        AppCompatImageView appCompatImageView;
        kk.d dVar = this.bind;
        if (dVar != null && (appCompatImageView = dVar.f66823d) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadInterceptDialog.x1(this.f43898a, view);
                }
            });
        }
        kk.d dVar2 = this.bind;
        if (dVar2 != null && (constraintLayout2 = dVar2.f66822c) != null) {
            constraintLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.j
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadInterceptDialog.y1(this.f43899a, view);
                }
            });
        }
        com.transsion.baseui.util.o oVar = com.transsion.baseui.util.o.f43532a;
        kk.d dVar3 = this.bind;
        oVar.a(new View[]{dVar3 != null ? dVar3.f66835p : null, dVar3 != null ? dVar3.f66826g : null}, new View.OnClickListener() { // from class: com.transsion.commercialization.task.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadInterceptDialog.z1(this.f43900a, view);
            }
        });
        kk.d dVar4 = this.bind;
        if (dVar4 == null || (hVar = dVar4.f66829j) == null || (constraintLayout = hVar.f66878c) == null) {
            return;
        }
        constraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.task.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadInterceptDialog.A1(this.f43901a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x1(DownloadInterceptDialog downloadInterceptDialog, View view) {
        downloadInterceptDialog.dismissAllowingStateLoss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(DownloadInterceptDialog downloadInterceptDialog, View view) {
        com.transsion.commercialization.pslink.f.f43830a.a();
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            IMemberApi.a.c(iMemberApi, downloadInterceptDialog.getActivity(), MemberSource.SOURCE_DOWNLOAD_DIALOG, downloadInterceptDialog.new e(), false, null, 24, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z1(DownloadInterceptDialog downloadInterceptDialog, View view) {
        if (downloadInterceptDialog.isLoading) {
            return;
        }
        com.transsion.commercialization.pslink.f.f43830a.c();
        if (downloadInterceptDialog.iconList.isEmpty()) {
            downloadInterceptDialog.loadData();
        } else {
            downloadInterceptDialog.B1();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.center_DialogStyle);
        com.transsion.commercialization.pslink.a.f43829a.a(getClassTag() + " --> onCreate() --> 下载应用弹窗");
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        u1();
        this.adManager.I();
        com.transsion.commercialization.pslink.a.f43829a.a(getClassTag() + " --> onDestroy() -> " + this.isRewardedAdShow);
        if (this.isRewardedAdShow) {
            return;
        }
        Y0();
        X0();
    }

    @Override // com.transsion.baseui.dialog.BaseDialog, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Function1 function1;
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        com.transsion.commercialization.pslink.a.f43829a.a(getClassTag() + " --> onDismiss() --> " + this.isRewardedAdShow);
        if (this.isRewardedAdShow || (function1 = this.mCallback) == null) {
            return;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        t1();
        com.transsion.commercialization.pslink.f.f43830a.g();
        g1(view);
        f1();
        w1();
        loadData();
    }
}
