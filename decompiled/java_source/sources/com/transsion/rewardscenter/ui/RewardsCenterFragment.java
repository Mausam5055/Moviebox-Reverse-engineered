package com.transsion.rewardscenter.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.member.MemberViewModel;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskItemInvite;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.prize.PrizeListView;
import com.transsion.rewardscenter.redeem.RedeemView;
import com.transsion.rewardscenter.utils.AppInstallBroadcastHelper;
import com.transsion.rewardscenter.view.PrizeFlowView;
import com.transsion.rewardscenter.view.RewardsCenterTaskView;
import com.transsion.rewardscenterapi.Banner;
import com.transsion.rewardscenterapi.DrawResult;
import com.transsion.rewardscenterapi.IRewardsCenterApi;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.PrizeFlow;
import com.transsion.rewardscenterapi.Redeem;
import com.transsion.rewardscenterapi.Rule;
import com.transsion.rewardscenterapi.SkuPoint;
import com.transsion.rewardscenterapi.Task;
import com.transsion.rewardscenterapi.TopUpType;
import com.transsion.rewardscenterapi.User;
import com.transsion.rewardscenterapi.UserPrize;
import com.transsnet.loginapi.ILoginApi;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 t2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001uB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0019\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u0011\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0014¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010!\u001a\u0004\u0018\u00010\u001eH\u0014¢\u0006\u0004\b!\u0010 J\u0019\u0010$\u001a\u00020\u00062\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0005J\u0017\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0012H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\r\u00106\u001a\u00020\u0006¢\u0006\u0004\b6\u0010\u0005J\r\u00107\u001a\u00020\u0006¢\u0006\u0004\b7\u0010\u0005J\r\u00108\u001a\u00020\u0006¢\u0006\u0004\b8\u0010\u0005J\u0015\u0010;\u001a\u00020\u00062\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<J\u0017\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0016¢\u0006\u0004\b?\u0010@J!\u0010E\u001a\u00020\u00062\u0006\u0010B\u001a\u00020A2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010C¢\u0006\u0004\bE\u0010FR\u0018\u0010I\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010HR\u0016\u0010O\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0018\u0010R\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001b\u0010X\u001a\u00020S8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\bV\u0010WR\u001b\u0010]\u001a\u00020Y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010U\u001a\u0004\b[\u0010\\R\u001b\u0010b\u001a\u00020^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010U\u001a\u0004\b`\u0010aR\u001d\u0010g\u001a\u0004\u0018\u00010c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010U\u001a\u0004\be\u0010fR\u0018\u0010k\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010m\u001a\u00020L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010NR\"\u0010s\u001a\u0010\u0012\f\u0012\n p*\u0004\u0018\u00010o0o0n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010r¨\u0006v"}, d2 = {"Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;", "Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;", "Lvp/d;", "Ldz/a;", "<init>", "()V", "", "S0", "Lcom/transsion/rewardscenterapi/Lottery;", "lottery", "E1", "(Lcom/transsion/rewardscenterapi/Lottery;)V", "Lcom/transsion/rewardscenterapi/User;", "info", "H1", "(Lcom/transsion/rewardscenterapi/User;)V", "", "point", "", "X0", "(I)Ljava/lang/String;", "prizeId", "v1", "(Ljava/lang/String;)V", "C1", "I1", "z1", "F1", "W0", "x1", "Landroid/view/View;", "n0", "()Landroid/view/View;", "o0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "b1", "(Landroid/view/LayoutInflater;)Lvp/d;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "initViewData", "initViewModel", "initListener", "retryLoadData", "A1", "showLoading", "V0", "Lcom/transsion/rewardscenterapi/DrawResult;", "drawResult", "u1", "(Lcom/transsion/rewardscenterapi/DrawResult;)V", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "Lcom/transsion/rewardscenterapi/TopUpType;", "topUpType", "Lcom/transsion/rewardscenterapi/SkuPoint;", "skuPoint", "J1", "(Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", EventConstants.KEY_SOURCE, "c", "sceneId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isFromAdTask", "e", "Lcom/transsion/rewardscenterapi/SkuPoint;", "bannerSkuPoint", "Lcom/transsion/rewardscenter/model/RewardsCenterModel;", "f", "Lkotlin/Lazy;", "a1", "()Lcom/transsion/rewardscenter/model/RewardsCenterModel;", "rewardsCenterModel", "Lcom/transsion/member/MemberViewModel;", "g", "Z0", "()Lcom/transsion/member/MemberViewModel;", "memberViewModel", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "h", "Y0", "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "loadingDialog", "Lcom/transsnet/loginapi/ILoginApi;", "i", "getLoginApi", "()Lcom/transsnet/loginapi/ILoginApi;", "loginApi", "Lcom/transsion/member/adapter/l;", "j", "Lcom/transsion/member/adapter/l;", "taskAdapter", CampaignEx.JSON_KEY_AD_K, "isFirstResume", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "l", "Landroidx/activity/result/b;", "claimRewardLauncher", "m", "a", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RewardsCenterFragment extends FitStatusBarFragment<vp.d> implements dz.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f51230n = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String source;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String sceneId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isFromAdTask;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private SkuPoint bannerSkuPoint;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final Lazy rewardsCenterModel;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final Lazy memberViewModel;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy loadingDialog;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy loginApi;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private com.transsion.member.adapter.l taskAdapter;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isFirstResume;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b claimRewardLauncher;

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51242a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51242a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51242a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f51242a.invoke(obj);
        }
    }

    public static final class c implements RequestListener {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            CardView cardView;
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            vp.d dVar = (vp.d) RewardsCenterFragment.this.getMViewBinding();
            if (dVar != null && (cardView = dVar.f77371h) != null) {
                ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.height = -2;
                } else {
                    layoutParams = null;
                }
                cardView.setLayoutParams(layoutParams);
                com.transsion.rewardscenter.utils.q.c("banner", null, 2, null);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            CardView cardView;
            Intrinsics.h(target, "target");
            vp.d dVar = (vp.d) RewardsCenterFragment.this.getMViewBinding();
            if (dVar != null && (cardView = dVar.f77371h) != null) {
                jg.c.g(cardView);
            }
            lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "--> banner image load failed", false, 4, null);
            return false;
        }
    }

    public RewardsCenterFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.transsion.rewardscenter.ui.RewardsCenterFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.rewardsCenterModel = FragmentViewModelLazyKt.a(this, Reflection.b(RewardsCenterModel.class), new Function0<x0>() { // from class: com.transsion.rewardscenter.ui.RewardsCenterFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.rewardscenter.ui.RewardsCenterFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        final Function0<Fragment> function1 = new Function0<Fragment>() { // from class: com.transsion.rewardscenter.ui.RewardsCenterFragment$special$$inlined$viewModels$default$4
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return this;
            }
        };
        this.memberViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MemberViewModel.class), new Function0<x0>() { // from class: com.transsion.rewardscenter.ui.RewardsCenterFragment$special$$inlined$viewModels$default$5
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function1.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.rewardscenter.ui.RewardsCenterFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final v0.c invoke() {
                Object objInvoke = function1.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.loadingDialog = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.ui.t0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RewardsCenterFragment.w1();
            }
        });
        this.loginApi = LazyKt.b(new Function0() { // from class: com.transsion.rewardscenter.ui.u0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RewardsCenterFragment.loginApi_delegate$lambda$1();
            }
        });
        this.isFirstResume = true;
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.rewardscenter.ui.w
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                RewardsCenterFragment.U0(this.f51284a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.claimRewardLauncher = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B1(RewardsCenterFragment rewardsCenterFragment) {
        rewardsCenterFragment.V0();
        return Unit.f67061a;
    }

    private final void C1() {
        FragmentManager supportFragmentManager;
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        supportFragmentManager.G1("treasure_wheel_result_dismissed", getViewLifecycleOwner(), new androidx.fragment.app.t() { // from class: com.transsion.rewardscenter.ui.k0
            @Override // androidx.fragment.app.t
            public final void a(String str, Bundle bundle) {
                RewardsCenterFragment.D1(this.f51264a, str, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D1(RewardsCenterFragment rewardsCenterFragment, String str, Bundle bundle) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(bundle, "<unused var>");
        lg.a.C0828a.f(lg.a.f68839a, "RewardsCenter", "--> TreasureWheelStateDialog dismissed", false, 4, null);
        RewardsCenterModel.j(rewardsCenterFragment.a1(), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void E1(Lottery lottery) {
        ConstraintLayout constraintLayout;
        List<DrawResult> prizeItems;
        PrizeListView prizeListView;
        String imageUrl;
        AppCompatImageView appCompatImageView;
        CardView cardView;
        PrizeFlowView prizeFlowView;
        PrizeFlowView prizeFlowView2;
        if (lottery != null) {
            List<PrizeFlow> prizeFlows = lottery.getPrizeFlows();
            if (prizeFlows != null && !prizeFlows.isEmpty()) {
                vp.d dVar = (vp.d) getMViewBinding();
                if (dVar != null && (prizeFlowView2 = dVar.f77370g) != null) {
                    prizeFlowView2.setPrizeFlows(prizeFlows);
                }
                vp.d dVar2 = (vp.d) getMViewBinding();
                if (dVar2 != null && (prizeFlowView = dVar2.f77370g) != null) {
                    jg.c.k(prizeFlowView);
                }
            }
            Banner banner = lottery.getBanner();
            if (banner != null && (imageUrl = banner.getImageUrl()) != null && !StringsKt.q0(imageUrl) && banner.getEnable()) {
                this.bannerSkuPoint = banner.getSku();
                vp.d dVar3 = (vp.d) getMViewBinding();
                if (dVar3 != null && (cardView = dVar3.f77371h) != null) {
                    jg.c.k(cardView);
                    ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
                    layoutParams.height = 0;
                    cardView.setLayoutParams(layoutParams);
                }
                vp.d dVar4 = (vp.d) getMViewBinding();
                if (dVar4 != null && (appCompatImageView = dVar4.f77366c) != null) {
                    Glide.with(this).load2(banner.getImageUrl()).listener(new c()).into(appCompatImageView);
                }
            }
            UserPrize userPrize = lottery.getUserPrize();
            if (userPrize != null) {
                vp.d dVar5 = (vp.d) getMViewBinding();
                if (dVar5 != null && (prizeListView = dVar5.f77373j) != null) {
                    prizeListView.setData(userPrize);
                }
                if (userPrize.getDrawChance() == null && ((prizeItems = userPrize.getPrizeItems()) == null || prizeItems.isEmpty())) {
                    return;
                }
                vp.d dVar6 = (vp.d) getMViewBinding();
                if (dVar6 != null && (constraintLayout = dVar6.f77374k) != null) {
                    jg.c.k(constraintLayout);
                }
                com.transsion.rewardscenter.utils.q.c("prize_list", null, 2, null);
            }
        }
    }

    private final void F1() {
        getParentFragmentManager().G1("phone_bottom_sheet_result", getViewLifecycleOwner(), new androidx.fragment.app.t() { // from class: com.transsion.rewardscenter.ui.l0
            @Override // androidx.fragment.app.t
            public final void a(String str, Bundle bundle) {
                RewardsCenterFragment.G1(this.f51266a, str, bundle);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G1(RewardsCenterFragment rewardsCenterFragment, String str, Bundle bundle) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(bundle, "bundle");
        rewardsCenterFragment.W0();
        TopUpType topUpType = TopUpType.BANNER;
        int i11 = bundle.getInt(EventConstants.KEY_SOURCE, topUpType.getValue());
        String string = bundle.getString("number");
        if (string == null) {
            string = "";
        }
        String string2 = bundle.getString("cc");
        if (string2 == null) {
            string2 = "";
        }
        String string3 = bundle.getString("iso");
        String str2 = string3 != null ? string3 : "";
        com.transsion.rewardscenter.utils.b.f51295a.g(string2, str2, string);
        if (i11 != topUpType.getValue() && i11 != TopUpType.REDEEM.getValue()) {
            if (i11 == TopUpType.PHONE_CREDIT.getValue()) {
                rewardsCenterFragment.a1().B(string2, string, str2);
            }
        } else {
            RewardsCenterModel rewardsCenterModelA1 = rewardsCenterFragment.a1();
            FragmentActivity activity = rewardsCenterFragment.getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            rewardsCenterModelA1.y((AppCompatActivity) activity, string, i11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void H1(User info) {
        String nickname;
        vp.d dVar;
        vp.h hVar;
        ShapeableImageView shapeableImageView;
        vp.h hVar2;
        AppCompatTextView appCompatTextView;
        vp.h hVar3;
        AppCompatTextView appCompatTextView2;
        vp.d dVar2 = (vp.d) getMViewBinding();
        if (dVar2 != null && (hVar3 = dVar2.f77369f) != null && (appCompatTextView2 = hVar3.f77413g) != null) {
            appCompatTextView2.setText(X0(info.getPoint()));
        }
        if (info.isLogin()) {
            nickname = info.getNickname();
            if (nickname == null) {
                nickname = "";
            }
        } else {
            nickname = "Log in";
        }
        String strM = androidx.core.text.a.c().m(nickname, androidx.core.text.u.f8253a);
        vp.d dVar3 = (vp.d) getMViewBinding();
        if (dVar3 != null && (hVar2 = dVar3.f77369f) != null && (appCompatTextView = hVar2.f77412f) != null) {
            appCompatTextView.setText(strM);
        }
        String avatar = info.getAvatar();
        if (avatar == null || (dVar = (vp.d) getMViewBinding()) == null || (hVar = dVar.f77369f) == null || (shapeableImageView = hVar.f77409c) == null) {
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        aVar.m(contextRequireContext).g(avatar).i(R$mipmap.profile_default_avatar).d(shapeableImageView);
    }

    private final void I1() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            ILoginApi loginApi = getLoginApi();
            if (loginApi != null) {
                loginApi.p(this);
            }
            ILoginApi loginApi2 = getLoginApi();
            if (loginApi2 != null) {
                loginApi2.g(this);
            }
            ILoginApi loginApi3 = getLoginApi();
            if (loginApi3 != null) {
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                loginApi3.j(contextRequireContext);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public static /* synthetic */ void K1(RewardsCenterFragment rewardsCenterFragment, TopUpType topUpType, SkuPoint skuPoint, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            skuPoint = null;
        }
        rewardsCenterFragment.J1(topUpType, skuPoint);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void S0() {
        Intent intent;
        Intent intent2;
        RecyclerView recyclerView;
        FragmentActivity activity = getActivity();
        if (activity == null || (intent = activity.getIntent()) == null || !intent.getBooleanExtra("extra_rewards_center_scroll_bottom", false)) {
            return;
        }
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar != null && (recyclerView = dVar.f77368e) != null) {
            recyclerView.postDelayed(new Runnable() { // from class: com.transsion.rewardscenter.ui.v
                @Override // java.lang.Runnable
                public final void run() {
                    RewardsCenterFragment.T0(this.f51283a);
                }
            }, 500L);
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 == null || (intent2 = activity2.getIntent()) == null) {
            return;
        }
        intent2.removeExtra("extra_rewards_center_scroll_bottom");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void T0(RewardsCenterFragment rewardsCenterFragment) {
        NestedScrollView nestedScrollView;
        vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
        if (dVar == null || (nestedScrollView = dVar.f77380q) == null) {
            return;
        }
        nestedScrollView.fullScroll(130);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void U0(RewardsCenterFragment rewardsCenterFragment, ActivityResult it) {
        vp.d dVar;
        PrizeListView prizeListView;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            rewardsCenterFragment.a1().A(null);
            return;
        }
        String strQ = rewardsCenterFragment.a1().q();
        rewardsCenterFragment.a1().A(null);
        if (strQ != null && (dVar = (vp.d) rewardsCenterFragment.getMViewBinding()) != null && (prizeListView = dVar.f77373j) != null) {
            prizeListView.markClaimed(strQ);
        }
        String string = rewardsCenterFragment.getString(R$string.success_claim);
        Intrinsics.g(string, "getString(...)");
        com.transsion.rewardscenter.utils.p.a(true, string);
    }

    private final void W0() {
        Fragment fragmentK0 = getParentFragmentManager().k0("PhoneBottomSheetFragment");
        PhoneBottomSheetFragment phoneBottomSheetFragment = fragmentK0 instanceof PhoneBottomSheetFragment ? (PhoneBottomSheetFragment) fragmentK0 : null;
        if (phoneBottomSheetFragment == null) {
            return;
        }
        phoneBottomSheetFragment.dismissAllowingStateLoss();
    }

    private final String X0(int point) {
        if (point < 1000) {
            return String.valueOf(point);
        }
        if (point < 10000) {
            String str = String.format("%,d", Arrays.copyOf(new Object[]{Integer.valueOf(point)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (point < 1000000) {
            return (point / 1000) + CampaignEx.JSON_KEY_AD_K;
        }
        return (point / 1000000) + "M";
    }

    private final BaseMemberLoadingDialog Y0() {
        return (BaseMemberLoadingDialog) this.loadingDialog.getValue();
    }

    private final MemberViewModel Z0() {
        return (MemberViewModel) this.memberViewModel.getValue();
    }

    private final RewardsCenterModel a1() {
        return (RewardsCenterModel) this.rewardsCenterModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c1(RewardsCenterFragment rewardsCenterFragment, View it) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        Intrinsics.h(it, "it");
        rewardsCenterFragment.getParentFragmentManager().g1();
        FragmentActivity activity = rewardsCenterFragment.getActivity();
        if (activity != null && (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) != null) {
            onBackPressedDispatcher.l();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d1(RewardsCenterFragment rewardsCenterFragment, View it) {
        Intrinsics.h(it, "it");
        rewardsCenterFragment.z1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e1(RewardsCenterFragment rewardsCenterFragment, View it) {
        Intrinsics.h(it, "it");
        rewardsCenterFragment.z1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(RewardsCenterFragment rewardsCenterFragment, View it) {
        Intrinsics.h(it, "it");
        rewardsCenterFragment.x1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit g1(RewardsCenterFragment rewardsCenterFragment, View it) {
        RewardsCenterTaskView rewardsCenterTaskView;
        Intrinsics.h(it, "it");
        vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
        if (dVar != null && (rewardsCenterTaskView = dVar.f77378o) != null) {
            rewardsCenterTaskView.scrollToSelf();
        }
        return Unit.f67061a;
    }

    private final ILoginApi getLoginApi() {
        return (ILoginApi) this.loginApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(RewardsCenterFragment rewardsCenterFragment, View view) {
        User userW = rewardsCenterFragment.a1().w();
        if (userW == null || userW.isLogin()) {
            return;
        }
        rewardsCenterFragment.I1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit i1(RewardsCenterFragment rewardsCenterFragment, Redeem redeem) {
        CardView cardView;
        List<SkuPoint> skuPointList;
        RedeemView redeemView;
        if (redeem != null) {
            vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
            if (dVar != null && (redeemView = dVar.f77376m) != null) {
                redeemView.setRedeemData(redeem);
            }
            if (redeem.getLotteryPrize() != null || ((skuPointList = redeem.getSkuPointList()) != null && !skuPointList.isEmpty())) {
                vp.d dVar2 = (vp.d) rewardsCenterFragment.getMViewBinding();
                if (dVar2 != null && (cardView = dVar2.f77375l) != null) {
                    jg.c.k(cardView);
                }
                com.transsion.rewardscenter.utils.q.c("redeem_rewards", null, 2, null);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit j1(final RewardsCenterFragment rewardsCenterFragment, Task task) {
        vp.d dVar;
        RewardsCenterTaskView rewardsCenterTaskView;
        CardView cardView;
        RewardsCenterTaskView rewardsCenterTaskView2;
        if (task != null) {
            vp.d dVar2 = (vp.d) rewardsCenterFragment.getMViewBinding();
            if (dVar2 != null && (rewardsCenterTaskView2 = dVar2.f77378o) != null) {
                rewardsCenterTaskView2.setTaskData(task);
            }
            vp.d dVar3 = (vp.d) rewardsCenterFragment.getMViewBinding();
            if (dVar3 != null && (cardView = dVar3.f77377n) != null) {
                jg.c.k(cardView);
            }
            com.transsion.rewardscenter.utils.q.c("earn_points", null, 2, null);
            if (rewardsCenterFragment.isFromAdTask && (dVar = (vp.d) rewardsCenterFragment.getMViewBinding()) != null && (rewardsCenterTaskView = dVar.f77378o) != null) {
                rewardsCenterTaskView.postDelayed(new Runnable() { // from class: com.transsion.rewardscenter.ui.m0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RewardsCenterFragment.k1(this.f51268a);
                    }
                }, 500L);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void k1(RewardsCenterFragment rewardsCenterFragment) {
        RewardsCenterTaskView rewardsCenterTaskView;
        vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
        if (dVar == null || (rewardsCenterTaskView = dVar.f77378o) == null) {
            return;
        }
        rewardsCenterTaskView.scrollToSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit l1(RewardsCenterFragment rewardsCenterFragment, Rule rule) {
        ArrayList arrayList;
        String strS0;
        AppCompatTextView appCompatTextView;
        if (rule != null) {
            List<String> terms = rule.getTerms();
            if (terms != null) {
                arrayList = new ArrayList();
                for (Object obj : terms) {
                    if (((String) obj).length() > 0) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null || arrayList.size() != 0) {
                List<String> terms2 = rule.getTerms();
                if (terms2 == null || (strS0 = CollectionsKt.s0(terms2, "\n", null, null, 0, null, null, 62, null)) == null) {
                    strS0 = "";
                }
                vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
                if (dVar != null && (appCompatTextView = dVar.f77383t) != null) {
                    appCompatTextView.setText(strS0);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ILoginApi loginApi_delegate$lambda$1() {
        return (ILoginApi) TheRouter.d(ILoginApi.class, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m1(RewardsCenterFragment rewardsCenterFragment, Boolean bool) {
        if (bool.booleanValue()) {
            rewardsCenterFragment.showLoading();
        } else {
            rewardsCenterFragment.V0();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n1(RewardsCenterFragment rewardsCenterFragment, Pair pair) {
        String string;
        if (pair == null) {
            return Unit.f67061a;
        }
        rewardsCenterFragment.a1().m().n(null);
        if (Intrinsics.c((String) pair.getFirst(), "400")) {
            string = (String) pair.getSecond();
            if (string == null) {
                string = rewardsCenterFragment.getString(R$string.claim_failed);
                Intrinsics.g(string, "getString(...)");
            }
        } else {
            string = rewardsCenterFragment.getString(R$string.claim_failed);
            Intrinsics.g(string, "getString(...)");
        }
        com.transsion.rewardscenter.utils.p.a(false, string);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit o1(RewardsCenterFragment rewardsCenterFragment, Pair pair) {
        PrizeListView prizeListView;
        PrizeListView prizeListView2;
        if (pair == null) {
            return Unit.f67061a;
        }
        String str = (String) pair.component1();
        boolean zBooleanValue = ((Boolean) pair.component2()).booleanValue();
        rewardsCenterFragment.a1().n().n(null);
        if (zBooleanValue) {
            vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
            if (dVar != null && (prizeListView2 = dVar.f77373j) != null) {
                prizeListView2.markClaimed(str);
            }
            String string = rewardsCenterFragment.getString(R$string.success_claim);
            Intrinsics.g(string, "getString(...)");
            com.transsion.rewardscenter.utils.p.a(true, string);
        } else {
            vp.d dVar2 = (vp.d) rewardsCenterFragment.getMViewBinding();
            if (dVar2 != null && (prizeListView = dVar2.f77373j) != null) {
                prizeListView.markTopUp(str);
            }
        }
        IRewardsCenterApi iRewardsCenterApi = (IRewardsCenterApi) TheRouter.d(IRewardsCenterApi.class, new Object[0]);
        if (iRewardsCenterApi != null) {
            iRewardsCenterApi.d();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit p1(RewardsCenterFragment rewardsCenterFragment, List list) {
        com.transsion.member.adapter.l lVar = rewardsCenterFragment.taskAdapter;
        if (lVar != null) {
            lVar.n1(list);
        }
        rewardsCenterFragment.S0();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(RewardsCenterFragment rewardsCenterFragment, zm.d dVar) {
        List<Object> data;
        Object obj;
        Object next;
        List<MemberTaskItemInvite> inviteList;
        com.transsion.member.adapter.l lVar = rewardsCenterFragment.taskAdapter;
        if (lVar != null && (data = lVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 2) {
                    break;
                }
            }
            MemberTaskItem memberTaskItem = (MemberTaskItem) next;
            if (memberTaskItem != null) {
                int iA = dVar.a();
                String strD = dVar.d();
                MemberTaskRewardInfo memberTaskRewardInfoB = dVar.b();
                if (memberTaskRewardInfoB != null) {
                    if (Intrinsics.c(strD, "0")) {
                        List<MemberTaskItemInvite> inviteList2 = memberTaskItem.getInviteList();
                        if (inviteList2 != null) {
                            for (MemberTaskItemInvite memberTaskItemInvite : inviteList2) {
                                if (memberTaskItemInvite.getStatus() == 1) {
                                    memberTaskItemInvite.setStatus(2);
                                }
                            }
                        }
                    } else if (iA >= 0 && (inviteList = memberTaskItem.getInviteList()) != null) {
                        for (Object obj2 : inviteList) {
                            if (Intrinsics.c(strD, ((MemberTaskItemInvite) obj2).getRewardId())) {
                                obj = obj2;
                                break;
                            }
                        }
                        MemberTaskItemInvite memberTaskItemInvite2 = (MemberTaskItemInvite) obj;
                        if (memberTaskItemInvite2 != null) {
                            memberTaskItemInvite2.setStatus(2);
                        }
                    }
                    memberTaskItem.setRewardInfo(memberTaskRewardInfoB);
                }
                com.transsion.member.adapter.l lVar2 = rewardsCenterFragment.taskAdapter;
                if (lVar2 != null) {
                    lVar2.notifyDataSetChanged();
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(RewardsCenterFragment rewardsCenterFragment, Pair pair) {
        List<Object> data;
        Object next;
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
        com.transsion.member.adapter.l lVar = rewardsCenterFragment.taskAdapter;
        if (lVar != null && (data = lVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 8) {
                    break;
                }
            }
            MemberTaskItem memberTaskItem = (MemberTaskItem) next;
            if (memberTaskItem != null) {
                int iIntValue = ((Number) pair.getFirst()).intValue();
                MemberTaskSubmitCheckInRes memberTaskSubmitCheckInRes = (MemberTaskSubmitCheckInRes) pair.getSecond();
                if (memberTaskSubmitCheckInRes != null) {
                    List<MemberTaskItemCheckInInfo> checkInList = memberTaskItem.getCheckInList();
                    if (checkInList != null && (memberTaskItemCheckInInfo = checkInList.get(iIntValue)) != null) {
                        memberTaskItemCheckInInfo.setHasCheckIn(true);
                    }
                    if (memberTaskSubmitCheckInRes.getRewardType() == 2) {
                        User userW = rewardsCenterFragment.a1().w();
                        rewardsCenterFragment.a1().C((userW != null ? userW.getPoint() : 0) + memberTaskSubmitCheckInRes.getRewardAmount());
                    }
                }
                com.transsion.member.adapter.l lVar2 = rewardsCenterFragment.taskAdapter;
                if (lVar2 != null) {
                    lVar2.notifyDataSetChanged();
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(RewardsCenterFragment rewardsCenterFragment, Lottery lottery) {
        rewardsCenterFragment.E1(lottery);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(RewardsCenterFragment rewardsCenterFragment, User user) {
        if (user != null) {
            rewardsCenterFragment.H1(user);
        }
        return Unit.f67061a;
    }

    private final void v1(String prizeId) {
        Intent intentL = TheRouter.c("/rewards/claim_reward").l(requireContext());
        intentL.putExtra("prize_id", prizeId);
        this.claimRewardLauncher.a(intentL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaseMemberLoadingDialog w1() {
        return new BaseMemberLoadingDialog();
    }

    private final void x1() {
        User userW = a1().w();
        if (userW != null) {
            if (userW.isLogin()) {
                J1(TopUpType.BANNER, this.bannerSkuPoint);
            } else {
                I1();
            }
            HashMap map = new HashMap();
            map.put("is_login", userW.isLogin() ? "1" : "0");
            com.transsion.rewardscenter.utils.q.a("banner", map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit y1(RewardsCenterFragment rewardsCenterFragment, String it) {
        RewardsCenterTaskView rewardsCenterTaskView;
        Intrinsics.h(it, "it");
        vp.d dVar = (vp.d) rewardsCenterFragment.getMViewBinding();
        if (dVar != null && (rewardsCenterTaskView = dVar.f77378o) != null) {
            rewardsCenterTaskView.onPackageInstall(it);
        }
        return Unit.f67061a;
    }

    private final void z1() {
        Navigator.x(TheRouter.c("/member/point_history"), requireContext(), null, 2, null);
    }

    public final void A1() {
        showLoading();
        a1().i(new Function0() { // from class: com.transsion.rewardscenter.ui.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RewardsCenterFragment.B1(this.f51285a);
            }
        });
        Z0().y();
    }

    public final void J1(TopUpType topUpType, SkuPoint skuPoint) {
        Intrinsics.h(topUpType, "topUpType");
        if (getParentFragmentManager().k0("PhoneBottomSheetFragment") != null) {
            return;
        }
        PhoneBottomSheetFragment.INSTANCE.a(topUpType, skuPoint).show(getParentFragmentManager(), "PhoneBottomSheetFragment");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(EventConstants.KEY_SOURCE, String.valueOf(topUpType.getValue()));
        com.transsion.rewardscenter.utils.q.b("payment", linkedHashMap);
    }

    public final void V0() {
        try {
            Result.Companion companion = Result.INSTANCE;
            Y0().dismissAllowingStateLoss();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: b1, reason: merged with bridge method [inline-methods] */
    public vp.d getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        vp.d dVarC = vp.d.c(inflater);
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        vp.h hVar;
        vp.h hVar2;
        vp.h hVar3;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        vp.h hVar4;
        AppCompatTextView appCompatTextView2;
        vp.h hVar5;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar != null && (appCompatImageView3 = dVar.f77365b) != null) {
            jg.c.c(appCompatImageView3, 0L, new Function1() { // from class: com.transsion.rewardscenter.ui.n0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.c1(this.f51270a, (View) obj);
                }
            }, 1, null);
        }
        vp.d dVar2 = (vp.d) getMViewBinding();
        if (dVar2 != null && (hVar5 = dVar2.f77369f) != null && (appCompatImageView2 = hVar5.f77408b) != null) {
            jg.c.c(appCompatImageView2, 0L, new Function1() { // from class: com.transsion.rewardscenter.ui.o0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.d1(this.f51272a, (View) obj);
                }
            }, 1, null);
        }
        vp.d dVar3 = (vp.d) getMViewBinding();
        if (dVar3 != null && (hVar4 = dVar3.f77369f) != null && (appCompatTextView2 = hVar4.f77413g) != null) {
            jg.c.c(appCompatTextView2, 0L, new Function1() { // from class: com.transsion.rewardscenter.ui.p0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.e1(this.f51274a, (View) obj);
                }
            }, 1, null);
        }
        vp.d dVar4 = (vp.d) getMViewBinding();
        if (dVar4 != null && (appCompatImageView = dVar4.f77366c) != null) {
            jg.c.c(appCompatImageView, 0L, new Function1() { // from class: com.transsion.rewardscenter.ui.q0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.f1(this.f51276a, (View) obj);
                }
            }, 1, null);
        }
        vp.d dVar5 = (vp.d) getMViewBinding();
        if (dVar5 != null && (hVar3 = dVar5.f77369f) != null && (appCompatTextView = hVar3.f77411e) != null) {
            jg.c.c(appCompatTextView, 0L, new Function1() { // from class: com.transsion.rewardscenter.ui.r0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.g1(this.f51278a, (View) obj);
                }
            }, 1, null);
        }
        com.transsion.baseui.util.o oVar = com.transsion.baseui.util.o.f43532a;
        vp.d dVar6 = (vp.d) getMViewBinding();
        ShapeableImageView shapeableImageView = null;
        AppCompatTextView appCompatTextView3 = (dVar6 == null || (hVar2 = dVar6.f77369f) == null) ? null : hVar2.f77412f;
        vp.d dVar7 = (vp.d) getMViewBinding();
        if (dVar7 != null && (hVar = dVar7.f77369f) != null) {
            shapeableImageView = hVar.f77409c;
        }
        oVar.a(new View[]{appCompatTextView3, shapeableImageView}, new View.OnClickListener() { // from class: com.transsion.rewardscenter.ui.s0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RewardsCenterFragment.h1(this.f51280a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.rewardscenter.ui.FitStatusBarFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        PrizeListView prizeListView;
        RewardsCenterTaskView rewardsCenterTaskView;
        RedeemView redeemView;
        super.initViewData();
        androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        RewardsCenterModel rewardsCenterModelA1 = a1();
        WeakReference weakReference = new WeakReference(this);
        androidx.p009lifecycle.u viewLifecycleOwner2 = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner2, "getViewLifecycleOwner(...)");
        wp.a aVar = new wp.a(viewLifecycleOwner, rewardsCenterModelA1, weakReference, androidx.p009lifecycle.v.a(viewLifecycleOwner2));
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar != null && (redeemView = dVar.f77376m) != null) {
            redeemView.setCtxConfig(aVar);
        }
        vp.d dVar2 = (vp.d) getMViewBinding();
        if (dVar2 != null && (rewardsCenterTaskView = dVar2.f77378o) != null) {
            rewardsCenterTaskView.setCtxConfig(aVar);
        }
        vp.d dVar3 = (vp.d) getMViewBinding();
        if (dVar3 != null && (prizeListView = dVar3.f77373j) != null) {
            prizeListView.setCtxConfig(aVar);
        }
        vp.d dVar4 = (vp.d) getMViewBinding();
        if (dVar4 == null || (recyclerView = dVar4.f77368e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.addItemDecoration(new com.transsion.member.adapter.l.a());
        androidx.p009lifecycle.u viewLifecycleOwner3 = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner3, "getViewLifecycleOwner(...)");
        com.transsion.member.adapter.l lVar = new com.transsion.member.adapter.l(viewLifecycleOwner3, Z0(), this);
        this.taskAdapter = lVar;
        recyclerView.setAdapter(lVar);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        a1().p().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.s1(this.f51286a, (Lottery) obj);
            }
        }));
        a1().x().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.t1(this.f51245a, (User) obj);
            }
        }));
        a1().r().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.i1(this.f51247a, (Redeem) obj);
            }
        }));
        a1().v().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.j1(this.f51249a, (Task) obj);
            }
        }));
        a1().t().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.l1(this.f51251a, (Rule) obj);
            }
        }));
        a1().o().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.m1(this.f51253a, (Boolean) obj);
            }
        }));
        a1().m().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.n1(this.f51255a, (Pair) obj);
            }
        }));
        a1().n().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.o1(this.f51259a, (Pair) obj);
            }
        }));
        Z0().N().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.p1(this.f51261a, (List) obj);
            }
        }));
        Z0().M().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.q1(this.f51263a, (zm.d) obj);
            }
        }));
        Z0().L().j(getViewLifecycleOwner(), new b(new Function1() { // from class: com.transsion.rewardscenter.ui.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.r1(this.f51287a, (Pair) obj);
            }
        }));
        F1();
        C1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.rewardscenter.ui.FitStatusBarFragment
    protected View n0() {
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar != null) {
            return dVar.f77382s;
        }
        return null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        UserInfo userInfoI;
        String userId = null;
        hj.b bVar = new hj.b("rewards_center", false, 2, null);
        bVar.g().put("user_status", "me");
        HashMap mapG = bVar.g();
        ILoginApi loginApi = getLoginApi();
        if (loginApi != null && (userInfoI = loginApi.i()) != null) {
            userId = userInfoI.getUserId();
        }
        mapG.put("user_id", String.valueOf(userId));
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.rewardscenter.ui.FitStatusBarFragment
    protected View o0() {
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar != null) {
            return dVar.f77380q;
        }
        return null;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        HashMap mapG2;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.source = arguments.getString(EventConstants.KEY_SOURCE);
            this.sceneId = arguments.getString("scene_id");
            this.isFromAdTask = arguments.getBoolean("is_from_ad_task", false);
            hj.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
            }
            hj.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            }
        }
        hj.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null) {
            logViewConfig3.k(true);
        }
        AppInstallBroadcastHelper appInstallBroadcastHelper = AppInstallBroadcastHelper.f51288a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        appInstallBroadcastHelper.a(contextRequireContext, new Function1() { // from class: com.transsion.rewardscenter.ui.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.y1(this.f51257a, (String) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        Unit unit;
        RewardsCenterTaskView rewardsCenterTaskView;
        PrizeFlowView prizeFlowView;
        super.onDestroy();
        AppInstallBroadcastHelper appInstallBroadcastHelper = AppInstallBroadcastHelper.f51288a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        appInstallBroadcastHelper.b(contextRequireContext);
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar != null && (prizeFlowView = dVar.f77370g) != null) {
            prizeFlowView.destroy();
        }
        vp.d dVar2 = (vp.d) getMViewBinding();
        if (dVar2 != null && (rewardsCenterTaskView = dVar2.f77378o) != null) {
            rewardsCenterTaskView.destroy();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            ILoginApi loginApi = getLoginApi();
            if (loginApi != null) {
                loginApi.p(this);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    @Override // dz.a
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        dz.a.C0737a.a(this, user);
        RewardsCenterModel.j(a1(), null, 1, null);
    }

    @Override // dz.a
    public void onLogout() {
        dz.a.C0737a.b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onPause() {
        RewardsCenterTaskView rewardsCenterTaskView;
        super.onPause();
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar == null || (rewardsCenterTaskView = dVar.f77378o) == null) {
            return;
        }
        rewardsCenterTaskView.onPause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        RewardsCenterTaskView rewardsCenterTaskView;
        super.onResume();
        if (this.isFirstResume) {
            this.isFirstResume = false;
            A1();
        } else {
            Z0().y();
        }
        com.transsion.member.adapter.l lVar = this.taskAdapter;
        if (lVar != null) {
            lVar.notifyDataSetChanged();
        }
        S0();
        vp.d dVar = (vp.d) getMViewBinding();
        if (dVar == null || (rewardsCenterTaskView = dVar.f77378o) == null) {
            return;
        }
        rewardsCenterTaskView.onResume();
    }

    @Override // dz.a
    public void onUpdateUserInfo(UserInfo userInfo) {
        dz.a.C0737a.c(this, userInfo);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    public final void showLoading() {
        Y0().l0(this, "LoadingDialog");
    }

    public final void u1(DrawResult drawResult) {
        Intrinsics.h(drawResult, "drawResult");
        User userW = a1().w();
        if (userW == null || !userW.isLogin()) {
            I1();
            return;
        }
        String drawResultId = drawResult.getDrawResultId();
        if (drawResultId == null) {
            String string = getString(com.tn.lib.widget.R$string.common_failed);
            Intrinsics.g(string, "getString(...)");
            com.transsion.rewardscenter.utils.p.a(false, string);
            return;
        }
        a1().A(drawResultId);
        String prizeType = drawResult.getPrizeType();
        if (prizeType != null) {
            int iHashCode = prizeType.hashCode();
            if (iHashCode == -277650678) {
                if (prizeType.equals("PHONE_CREDIT")) {
                    K1(this, TopUpType.PHONE_CREDIT, null, 2, null);
                }
            } else if (iHashCode == -206450473) {
                if (prizeType.equals("PHYSICAL")) {
                    v1(drawResultId);
                }
            } else if (iHashCode == 84989 && prizeType.equals("VIP")) {
                a1().f(drawResultId);
            }
        }
    }
}
