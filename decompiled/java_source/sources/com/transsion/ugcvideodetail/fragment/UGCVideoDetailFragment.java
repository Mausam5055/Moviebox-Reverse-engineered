package com.transsion.ugcvideodetail.fragment;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.viewpager2.widget.ViewPager2;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity;
import com.transsion.ugcvideodetail.api.UGCVideoType;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.hepler.UGCVideoFloatManager;
import com.transsion.ugcvideodetail.hepler.UGCVideoPlayFrom;
import com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCLocalVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailAboutCourseView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailInfoView;
import com.transsion.ugcvideodetail.widget.UGCVideoDetailPlayListView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0006\u0018\u0000 t2\u00020\u0001:\u0001uB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\n\u0010\bJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\bJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0003J\u000f\u0010\u001e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u0003J\u0019\u0010\u001f\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001f\u0010\u0019J%\u0010%\u001a\b\u0012\u0004\u0012\u00020$0#2\u000e\u0010\"\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010 H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0006H\u0016¢\u0006\u0004\b'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0003J\u000f\u0010)\u001a\u00020\u0006H\u0014¢\u0006\u0004\b)\u0010\u0003J\u000f\u0010*\u001a\u00020\u0006H\u0014¢\u0006\u0004\b*\u0010\u0003J\u000f\u0010+\u001a\u00020\u001aH\u0016¢\u0006\u0004\b+\u0010,J\u0011\u0010-\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b-\u0010.J\u0011\u0010/\u001a\u0004\u0018\u00010\u000fH\u0014¢\u0006\u0004\b/\u0010.J\u000f\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u0010\u0003J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0003J\u000f\u00102\u001a\u00020\u0006H\u0014¢\u0006\u0004\b2\u0010\u0003J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0003J\u000f\u00105\u001a\u000204H\u0016¢\u0006\u0004\b5\u00106J\u0017\u00108\u001a\u0002042\u0006\u00107\u001a\u00020\u001aH\u0016¢\u0006\u0004\b8\u00109J\u0011\u0010:\u001a\u0004\u0018\u000104H\u0016¢\u0006\u0004\b:\u00106J\u0017\u0010=\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020;H\u0014¢\u0006\u0004\b=\u0010>J\u0011\u0010@\u001a\u0004\u0018\u00010?H\u0014¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0006H\u0016¢\u0006\u0004\bB\u0010\u0003J\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0003R\u001b\u0010I\u001a\u00020D8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0018\u0010L\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010N\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010KR\u0018\u0010P\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010KR\u0018\u0010R\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010KR\u0016\u0010V\u001a\u00020S8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0016\u0010Y\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0016\u0010^\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010XR\u0018\u0010`\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010KR\u001a\u0010c\u001a\u00020\u000f8\u0016X\u0096D¢\u0006\f\n\u0004\ba\u0010K\u001a\u0004\bb\u0010.R\u001a\u0010f\u001a\u00020\u000f8\u0016X\u0096D¢\u0006\f\n\u0004\bd\u0010K\u001a\u0004\be\u0010.R\u001c\u0010k\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010h0g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u001c\u0010m\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010jR\u001c\u0010o\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010jR\u0016\u0010s\u001a\u00020p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010r¨\u0006v"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailFragment;", "Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;", "<init>", "()V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "", "E1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "previousVideo", "w1", "detail", "D1", "C1", "loadData", "", "errorMsg", "x1", "(Ljava/lang/String;)V", "r1", "A1", "l1", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "playInfo", "p1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V", "", "i1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)Z", "B1", "j1", "v1", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;", "videoDetailStream", "", "Lgo/c;", "o1", "(Ljava/util/List;)Ljava/util/List;", "receiveArguments", "initViewData", "F0", "H0", "isAudioShowNoNetworkLayout", "()Z", "w0", "()Ljava/lang/String;", "B0", "initViewModel", TmcConstants.NAVIGATION_ON_START, "q0", "retryLoadData", "Landroid/view/View;", "getNoNetworkView", "()Landroid/view/View;", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "getLoadingView", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "V0", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Lpx/a;", "u0", "()Lpx/a;", "logResume", "logPause", "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "n", "Lkotlin/Lazy;", "m1", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;", "detailViewModel", "o", "Ljava/lang/String;", "ops", TtmlNode.TAG_P, "collectionId", CampaignEx.JSON_KEY_AD_Q, "subjectId", CampaignEx.JSON_KEY_AD_R, "fromOptId", "", "s", "I", "bottomFragmentSelected", "t", "Z", "withoutHistory", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "ugcVideo", "v", "showNetErr", "w", "previousUgcVideoId", "x", "x0", "PAGE_NAME", "y", "getTAG", "TAG", "Landroidx/lifecycle/c0;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "z", "Landroidx/lifecycle/c0;", "historyObserver", "A", "detailObserver", "B", "playInfoObserver", "", "C", "J", "resumeTimeStamp", "D", "a", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCVideoDetailFragment extends UGCVideoDetailBaseFragment {

    /* JADX INFO: renamed from: D, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: C, reason: from kotlin metadata */
    private long resumeTimeStamp;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String ops;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private String collectionId;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private String subjectId;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private String fromOptId;

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private int bottomFragmentSelected;

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private boolean withoutHistory;

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private UGCVideo ugcVideo;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private boolean showNetErr;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private String previousUgcVideoId;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDetailFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCVideoDetailFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final String PAGE_NAME = "/ugc_video/detail";

    /* JADX INFO: renamed from: y, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "UGCVideoDetail";

    /* JADX INFO: renamed from: z, reason: collision with root package name and from kotlin metadata */
    private final androidx.p009lifecycle.c0 historyObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.w0
        @Override // androidx.p009lifecycle.c0
        public final void onChanged(Object obj) {
            UGCVideoDetailFragment.q1(this.f56279a, (UGCVideoDetailPlayBean) obj);
        }
    };

    /* JADX INFO: renamed from: A, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 detailObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.x0
        @Override // androidx.p009lifecycle.c0
        public final void onChanged(Object obj) {
            UGCVideoDetailFragment.k1(this.f56282a, (UGCVideo) obj);
        }
    };

    /* JADX INFO: renamed from: B, reason: from kotlin metadata */
    private final androidx.p009lifecycle.c0 playInfoObserver = new androidx.p009lifecycle.c0() { // from class: com.transsion.ugcvideodetail.fragment.y0
        @Override // androidx.p009lifecycle.c0
        public final void onChanged(Object obj) {
            UGCVideoDetailFragment.u1(this.f56284a, (UGCVideoPlayInfo) obj);
        }
    };

    /* JADX INFO: renamed from: com.transsion.ugcvideodetail.fragment.UGCVideoDetailFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCVideoDetailFragment a() {
            return new UGCVideoDetailFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f56166a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f56166a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f56166a;
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
            this.f56166a.invoke(obj);
        }
    }

    public static final class c implements sx.a {
        c() {
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            return UGCVideoFloatManager.f56290b.q(aVar);
        }

        @Override // sx.a
        public void b(px.a aVar) {
            sx.a.C0918a.a(this, aVar);
            UGCVideoFloatManager.f56290b.p(aVar);
        }

        @Override // sx.a
        public void c(px.a aVar) {
            UGCVideoFloatManager uGCVideoFloatManager = UGCVideoFloatManager.f56290b;
            uGCVideoFloatManager.o();
            uGCVideoFloatManager.s(aVar);
        }
    }

    public static final class d implements fo.a.b {
        d() {
        }

        @Override // fo.a.b
        public void a() {
            UGCVideoDetailFragment.this.j1();
        }

        @Override // fo.a.b
        public boolean b() {
            String ugcVideoId;
            if (UGCVideoDetailFragment.this.showNetErr && nh.m.f70474a.e() && (ugcVideoId = UGCVideoDetailFragment.this.getUgcVideoId()) != null) {
                UGCVideoDetailFragment uGCVideoDetailFragment = UGCVideoDetailFragment.this;
                uGCVideoDetailFragment.m1().c0(ugcVideoId, uGCVideoDetailFragment.collectionId);
            }
            return UGCVideoDetailFragment.this.showNetErr;
        }

        @Override // fo.a.b
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return UGCVideoDetailFragment.this.V0(actionType);
        }

        @Override // fo.a.b
        public void d(LongVodUiType uiType) {
            UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
            Intrinsics.h(uiType, "uiType");
            UGCVideoDetailFragment.this.O0(uiType);
            boolean z10 = uiType != LongVodUiType.MIDDLE;
            com.transsion.ugcvideodetail.hepler.e bottomRecHelper = UGCVideoDetailFragment.this.getBottomRecHelper();
            if (bottomRecHelper != null) {
                bottomRecHelper.s(z10);
            }
            UGCVideoDetailFragment.this.m0();
            qv.i mViewBinding = UGCVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null) {
                return;
            }
            uGCVideoDetailPlayListView.pauseAnimatedImageSpans(z10);
        }

        @Override // fo.a.b
        public View e() {
            return null;
        }

        @Override // fo.a.b
        public void f(go.a aVar) {
            UGCVideoDetailBaseFragment.p0(UGCVideoDetailFragment.this, null, 1, null);
        }

        @Override // fo.a.b
        public void g(boolean z10) {
            AppCompatImageView appCompatImageView;
            qv.i mViewBinding = UGCVideoDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f73767i) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override // fo.a.b
        public void h(String str) {
            fo.a.b.C0761a.a(this, str);
        }

        @Override // fo.a.b
        public void onCompletion() {
            UGCVideoDetailFragment.this.j1();
        }
    }

    private final void A1() {
        fo.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.showNoNetError();
        }
        this.showNetErr = true;
    }

    private final void B1() {
        Context context;
        String value;
        List<UGCVideoHashTag> hashTags;
        UGCVideoHashTag uGCVideoHashTag;
        if (getPlayerControl() == null && (context = getContext()) != null) {
            UGCVideo uGCVideo = this.ugcVideo;
            if (uGCVideo == null || (value = uGCVideo.getCategory()) == null) {
                value = UGCVideoType.MOVIE.getValue();
            }
            LongVodPageType longVodPageType = Intrinsics.c(value, UGCVideoType.MUSIC.getValue()) ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            qv.i iVar = (qv.i) getMViewBinding();
            if (iVar != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String page_name = getPAGE_NAME();
                String strName = longVodPageType.name();
                UGCVideo uGCVideo2 = this.ugcVideo;
                String title = null;
                longVodPlayerView.init(page_name, longVodPageType, strName + (uGCVideo2 != null ? uGCVideo2.getUgcVideoId() : null), null, null, CollectionsKt.l(), LongVodContentType.UGC_VIDEO_ONLINE);
                UGCVideo uGCVideo3 = this.ugcVideo;
                if (uGCVideo3 != null && (hashTags = uGCVideo3.getHashTags()) != null && (uGCVideoHashTag = (UGCVideoHashTag) CollectionsKt.k0(hashTags)) != null) {
                    title = uGCVideoHashTag.getTitle();
                }
                longVodPlayerView.initAdHelper(title);
                longVodPlayerView.setFeedBackVisible(true);
                iVar.f73765g.addView(longVodPlayerView);
                P0(longVodPlayerView);
            }
            fo.a playerControl = getPlayerControl();
            if (playerControl != null) {
                playerControl.setCallback(new d());
            }
        }
    }

    private final void C1() {
        LinearLayout linearLayout;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        boolean zI = ak.o.f646a.i();
        qv.i mViewBinding = getMViewBinding();
        boolean z10 = false;
        if (mViewBinding != null && (uGCVideoDetailPlayListView = mViewBinding.f73772n) != null && uGCVideoDetailPlayListView.getVisibility() == 0) {
            z10 = true;
        }
        qv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (linearLayout = mViewBinding2.f73768j) == null) {
            return;
        }
        int iB = (!zI || z10) ? dk.a.b(20) : dk.a.b(8);
        if (linearLayout.getPaddingBottom() != iB) {
            linearLayout.setPadding(linearLayout.getPaddingLeft(), linearLayout.getPaddingTop(), linearLayout.getPaddingRight(), iB);
        }
    }

    private final void D1(UGCVideo detail) {
        UGCVideoDetailAboutCourseView uGCVideoDetailAboutCourseView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        detail.setOps(this.ops);
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (uGCVideoDetailInfoView = mViewBinding.f73763e) != null) {
            uGCVideoDetailInfoView.setData(detail);
        }
        qv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCVideoDetailAboutCourseView = mViewBinding2.f73760b) != null) {
            uGCVideoDetailAboutCourseView.setData(detail);
        }
        C1();
    }

    private final void E1(UGCVideo video) {
        hj.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        hj.b logViewConfig2;
        HashMap mapG3;
        hj.b logViewConfig3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        HashMap mapG7;
        String collectionId;
        HashMap mapG8;
        hj.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            String ops = video.getOps();
            if (ops == null) {
                ops = this.ops;
            }
            logViewConfig4.n(ops);
        }
        hj.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG8 = logViewConfig5.g()) != null) {
            String ugcVideoId = video.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
        }
        hj.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 != null && (mapG7 = logViewConfig6.g()) != null) {
            UGCVideoBelongToCollection belongToCollection = video.getBelongToCollection();
            if ((belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) && (collectionId = this.collectionId) == null) {
                collectionId = "";
            }
        }
        hj.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG6 = logViewConfig7.g()) != null) {
            String subjectId = video.getSubjectId();
        }
        hj.b logViewConfig8 = getLogViewConfig();
        if (logViewConfig8 != null && (mapG5 = logViewConfig8.g()) != null) {
        }
        String str = this.fromOptId;
        if (str != null && (logViewConfig3 = getLogViewConfig()) != null && (mapG4 = logViewConfig3.g()) != null) {
        }
        String previousPageVideoId = getPreviousPageVideoId();
        if (previousPageVideoId != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG3 = logViewConfig2.g()) != null) {
        }
        hj.b logViewConfig9 = getLogViewConfig();
        if (logViewConfig9 != null && (mapG2 = logViewConfig9.g()) != null) {
        }
        String previousTrackId = getPreviousTrackId();
        if (previousTrackId != null && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        hj.b logViewConfig10 = getLogViewConfig();
        if (logViewConfig10 != null) {
            logViewConfig10.k(true);
        }
    }

    private final boolean i1(UGCVideoPlayInfo playInfo) {
        ArrayList arrayList;
        Object next;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        List<lj.i1> playListData;
        qv.i mViewBinding = getMViewBinding();
        Object obj = null;
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null || (playListData = uGCVideoDetailPlayListView.getPlayListData()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (lj.i1 i1Var : playListData) {
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return false;
        }
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((UGCVideo) next).getUgcVideoId(), playInfo.getUgcVideoId()));
        UGCVideo uGCVideo2 = (UGCVideo) next;
        if (uGCVideo2 == null) {
            return false;
        }
        int iVideoUGCPosition = uGCVideo2.videoUGCPosition() + 1;
        for (Object obj2 : arrayList) {
            if (((UGCVideo) obj2).videoUGCPosition() == iVideoUGCPosition) {
                obj = obj2;
                break;
            }
        }
        UGCVideo uGCVideo3 = (UGCVideo) obj;
        if (uGCVideo3 != null) {
            return !Intrinsics.c(uGCVideo3.getUgcVideoId(), playInfo.getUgcVideoId());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j1() {
        ArrayList arrayList;
        Object next;
        String ugcVideoId;
        String ugcVideoId2;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        List<lj.i1> playListData;
        UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) m1().L().f();
        if (!(uGCVideoPlayInfo != null ? i1(uGCVideoPlayInfo) : false)) {
            lg.a.C0828a.f(lg.a.f68839a, getTAG(), "checkPlayInfo 没有下一集", false, 4, null);
            fo.a playerControl = getPlayerControl();
            if (playerControl != null) {
                playerControl.showReplay();
                return;
            }
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
        qv.i mViewBinding = getMViewBinding();
        Object obj = null;
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null || (playListData = uGCVideoDetailPlayListView.getPlayListData()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (lj.i1 i1Var : playListData) {
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
        }
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                ugcVideoId2 = ((UGCVideo) next).getUgcVideoId();
                Intrinsics.e(uGCVideoPlayInfo);
            }
        } while (!Intrinsics.c(ugcVideoId2, uGCVideoPlayInfo.getUgcVideoId()));
        UGCVideo uGCVideo2 = (UGCVideo) next;
        if (uGCVideo2 != null) {
            int iVideoUGCPosition = uGCVideo2.videoUGCPosition() + 1;
            for (Object obj2 : arrayList) {
                if (((UGCVideo) obj2).videoUGCPosition() == iVideoUGCPosition) {
                    obj = obj2;
                    break;
                }
            }
            UGCVideo uGCVideo3 = (UGCVideo) obj;
            if (uGCVideo3 == null || (ugcVideoId = uGCVideo3.getUgcVideoId()) == null) {
                return;
            }
            m1().c0(ugcVideoId, this.collectionId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideo uGCVideo) {
        UGCVideo uGCVideo2;
        lg.a.C0828a.f(lg.a.f68839a, uGCVideoDetailFragment.getTAG(), "detailObserver: " + uGCVideo, false, 4, null);
        if (uGCVideo == null) {
            uGCVideoDetailFragment.x1("视频信息为空");
            return;
        }
        String ugcVideoId = uGCVideo.getUgcVideoId();
        String str = uGCVideoDetailFragment.previousUgcVideoId;
        boolean z10 = (str == null || Intrinsics.c(str, ugcVideoId) || ugcVideoId == null) ? false : true;
        if (z10 && (uGCVideo2 = uGCVideoDetailFragment.ugcVideo) != null) {
            uGCVideoDetailFragment.w1(uGCVideo2);
        }
        uGCVideoDetailFragment.l0();
        uGCVideoDetailFragment.ugcVideo = uGCVideo;
        uGCVideoDetailFragment.T0(ugcVideoId);
        uGCVideoDetailFragment.m1().D().q(uGCVideoDetailFragment.getUgcVideoId());
        String str2 = uGCVideoDetailFragment.collectionId;
        if (str2 == null || str2.length() == 0) {
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            uGCVideoDetailFragment.collectionId = belongToCollection != null ? belongToCollection.getCollectionId() : null;
            uGCVideoDetailFragment.m1().B().q(uGCVideoDetailFragment.collectionId);
        }
        uGCVideoDetailFragment.K0(uGCVideo.getCategory());
        uGCVideoDetailFragment.r1();
        uGCVideoDetailFragment.D1(uGCVideo);
        uGCVideoDetailFragment.showContentView();
        if (z10) {
            uGCVideoDetailFragment.Q0(uGCVideoDetailFragment.previousUgcVideoId);
            uGCVideoDetailFragment.R0(uGCVideoDetailFragment.getTrackId());
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "toString(...)");
            uGCVideoDetailFragment.S0(string);
        }
        uGCVideoDetailFragment.E1(uGCVideo);
        FragmentActivity activity = uGCVideoDetailFragment.getActivity();
        UGCVideoDetailActivity uGCVideoDetailActivity = activity instanceof UGCVideoDetailActivity ? (UGCVideoDetailActivity) activity : null;
        if (uGCVideoDetailActivity != null) {
            uGCVideoDetailActivity.O0(uGCVideo.getCategory());
        }
        uGCVideoDetailFragment.previousUgcVideoId = ugcVideoId;
    }

    private final void l1() {
        fo.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.removeNoNetError();
        }
        this.showNetErr = false;
    }

    private final void loadData() {
        String ugcVideoId = getUgcVideoId();
        if (ugcVideoId != null) {
            if (StringsKt.q0(ugcVideoId)) {
                ugcVideoId = null;
            }
            if (ugcVideoId != null) {
                m1().c0(ugcVideoId, this.collectionId);
                return;
            }
        }
        String str = this.subjectId;
        if (str != null) {
            String str2 = StringsKt.q0(str) ? null : str;
            if (str2 != null) {
                m1().d0(str2);
                return;
            }
        }
        x1("视频ID不能为空");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailViewModel m1() {
        return (UGCVideoDetailViewModel) this.detailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n1(UGCVideoDetailFragment uGCVideoDetailFragment, View view) {
        uGCVideoDetailFragment.requireActivity().finish();
    }

    private final List o1(List videoDetailStream) {
        ArrayList arrayList = new ArrayList();
        if (videoDetailStream != null) {
            Iterator it = videoDetailStream.iterator();
            while (it.hasNext()) {
                UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) it.next();
                go.c cVar = new go.c(UGCVideoFloatManager.f56290b.i(uGCVideoPlayStream.getFormat()), uGCVideoPlayStream.getId(), uGCVideoPlayStream.getUrl(), uGCVideoPlayStream.getResolutions(), uGCVideoPlayStream.getSize(), uGCVideoPlayStream.getDuration(), uGCVideoPlayStream.getSignCookie(), null, 128, null);
                cVar.l(uGCVideoPlayStream.getIdType());
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    private final void p1(UGCVideoPlayInfo playInfo) {
        if (this.ugcVideo == null) {
            lg.a.C0828a.f(lg.a.f68839a, getTAG(), "handlePlayInfo, ugcVideo is null", false, 4, null);
            return;
        }
        fo.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.hasNextEpisode(i1(playInfo));
        }
        v1(playInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
        lg.a.C0828a.f(lg.a.f68839a, uGCVideoDetailFragment.getTAG(), "historyObserver: " + uGCVideoDetailPlayBean + ", withoutHistory=" + uGCVideoDetailFragment.withoutHistory, false, 4, null);
        if (uGCVideoDetailPlayBean != null && !uGCVideoDetailFragment.withoutHistory) {
            uGCVideoDetailFragment.T0(uGCVideoDetailPlayBean.getUgcVideoId());
            uGCVideoDetailFragment.m1().D().q(uGCVideoDetailFragment.getUgcVideoId());
        }
        uGCVideoDetailFragment.loadData();
    }

    private final void r1() {
        UGCVideoDetailViewModel uGCVideoDetailViewModelM1 = m1();
        UGCVideo uGCVideo = this.ugcVideo;
        qv.i mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f73770l : null;
        qv.i mViewBinding2 = getMViewBinding();
        ViewPager2 viewPager2 = mViewBinding2 != null ? mViewBinding2.f73777s : null;
        String page_name = getPAGE_NAME();
        UGCVideoPlayFrom uGCVideoPlayFrom = UGCVideoPlayFrom.ON_LINE_VIDEO;
        String str = this.fromOptId;
        int i11 = this.bottomFragmentSelected;
        qv.i mViewBinding3 = getMViewBinding();
        N0(new com.transsion.ugcvideodetail.hepler.e(this, uGCVideoDetailViewModelM1, uGCVideo, null, magicIndicator, viewPager2, page_name, uGCVideoPlayFrom, str, i11, mViewBinding3 != null ? mViewBinding3.f73761c : null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoDetailViewModel.b bVar) {
        List<lj.i1> listL;
        if (bVar != null) {
            String strA = bVar.a();
            List<? extends lj.i1> listB = bVar.b();
            qv.i mViewBinding = uGCVideoDetailFragment.getMViewBinding();
            UGCVideoDetailPlayListView uGCVideoDetailPlayListView = mViewBinding != null ? mViewBinding.f73772n : null;
            if (uGCVideoDetailPlayListView == null || (listL = uGCVideoDetailPlayListView.getPlayListData()) == null) {
                listL = CollectionsKt.l();
            }
            List<lj.i1> list = listL;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.c(((lj.i1) it.next()).videoUGCId(), strA)) {
                        lg.a.C0828a.f(lg.a.f68839a, uGCVideoDetailFragment.getTAG(), "replacePlayListDataLiveData: Video " + strA + " already exists in detail play list, skipping replace", false, 4, null);
                        return Unit.f67061a;
                    }
                }
            }
            lg.a.C0828a.f(lg.a.f68839a, uGCVideoDetailFragment.getTAG(), "replacePlayListDataLiveData: Received " + listB.size() + " items to replace play list for video " + strA, false, 4, null);
            if (uGCVideoDetailPlayListView != null) {
                uGCVideoDetailPlayListView.replacePlayListData(listB);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoList uGCVideoList) {
        uGCVideoDetailFragment.C1();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(UGCVideoDetailFragment uGCVideoDetailFragment, UGCVideoPlayInfo uGCVideoPlayInfo) {
        lg.a.C0828a.f(lg.a.f68839a, uGCVideoDetailFragment.getTAG(), "playInfoObserver: " + uGCVideoPlayInfo, false, 4, null);
        if (uGCVideoPlayInfo != null) {
            uGCVideoDetailFragment.p1(uGCVideoPlayInfo);
        }
        if (uGCVideoPlayInfo != null || nh.m.f70474a.e()) {
            uGCVideoDetailFragment.l1();
        } else {
            uGCVideoDetailFragment.A1();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004b  */
    private final void v1(UGCVideoPlayInfo playInfo) {
        long progress;
        String format;
        String averageHueLight;
        String thumbnail;
        String url;
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || !uGCVideo.isFamilyModeIntercept()) {
            if (playInfo == null || playInfo.getResources().isEmpty()) {
                lg.a.C0828a.l(lg.a.f68839a, getTAG(), "空返回", false, 4, null);
                return;
            }
            UGCVideoDetailPlayBean uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) m1().J().f();
            if (this.withoutHistory) {
                progress = 0;
            } else {
                if (!Intrinsics.c(uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.getUgcVideoId() : null, playInfo.getUgcVideoId()) || uGCVideoDetailPlayBean == null) {
                    progress = 0;
                } else {
                    progress = uGCVideoDetailPlayBean.getProgress();
                }
            }
            UGCVideoFloatManager uGCVideoFloatManager = UGCVideoFloatManager.f56290b;
            UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(playInfo.getResources());
            if (uGCVideoPlayStream == null || (format = uGCVideoPlayStream.getFormat()) == null) {
                format = "";
            }
            PlayMimeType playMimeTypeI = uGCVideoFloatManager.i(format);
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = getTAG();
            String ugcVideoId = playInfo.getUgcVideoId();
            UGCVideo uGCVideo2 = this.ugcVideo;
            String ugcVideoId2 = uGCVideo2 != null ? uGCVideo2.getUgcVideoId() : null;
            c0828a.c(tag, "playVideo  playInfo:" + ugcVideoId + "  ugcVideo:" + ugcVideoId2 + ", historyProgress:" + progress + ", withoutHistory:" + this.withoutHistory, true);
            UGCVideo uGCVideo3 = this.ugcVideo;
            if (uGCVideo3 != null) {
                String title = uGCVideo3.getTitle();
                String str = title == null ? "" : title;
                String title2 = uGCVideo3.getTitle();
                String lastPageFrom = getLastPageFrom();
                String str2 = lastPageFrom == null ? "" : lastPageFrom;
                String page_name = getPAGE_NAME();
                List listO1 = o1(playInfo.getResources());
                Cover cover = uGCVideo3.getCover();
                String str3 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
                Cover cover2 = uGCVideo3.getCover();
                String str4 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
                Cover cover3 = uGCVideo3.getCover();
                String str5 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
                Long duration = uGCVideo3.getDuration();
                go.a aVar = new go.a("", playMimeTypeI, progress, 0, 0, str, title2, str2, page_name, listO1, str3, str4, str5, (int) (duration != null ? duration.longValue() : 0L), null, false, uGCVideo3.getTitle(), uGCVideo3.getOps(), 49152, null);
                aVar.B(uGCVideo3);
                B1();
                fo.a playerControl = getPlayerControl();
                if (playerControl != null) {
                    playerControl.updateReportId(getPreviousPageVideoId(), getTrackId(), getPreviousTrackId());
                }
                fo.a playerControl2 = getPlayerControl();
                if (playerControl2 != null) {
                    playerControl2.setDataSource(aVar);
                }
            }
        }
    }

    private final void w1(UGCVideo previousVideo) {
        if (previousVideo == null) {
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, getTAG(), "reportVideoSwitch: previousVideo=" + previousVideo.getUgcVideoId(), false, 4, null);
        logPause();
        logResume();
    }

    private final void x1(String errorMsg) {
        lg.a.C0828a.l(lg.a.f68839a, getTAG(), "showErrorView: " + errorMsg, false, 4, null);
        if (nh.m.f70474a.e()) {
            PageStatusFragment.showEmptyView$default(this, false, 1, null);
        } else {
            PageStatusFragment.showNoNetworkView$default(this, false, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y1(FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType, UGCVideoDetailFragment uGCVideoDetailFragment) {
        ox.e.f72197a.b().k(fragmentActivity, aVar, floatActionType, uGCVideoDetailFragment.getCurPlayerUiType() == LongVodUiType.LAND);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z1(UGCVideoDetailFragment uGCVideoDetailFragment, FragmentActivity fragmentActivity, boolean z10) {
        fo.a playerControl;
        if (z10 && (playerControl = uGCVideoDetailFragment.getPlayerControl()) != null) {
            playerControl.exitFullScreen();
        }
        fo.a playerControl2 = uGCVideoDetailFragment.getPlayerControl();
        if (playerControl2 != null) {
            playerControl2.setFloatIsShow(z10);
        }
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    /* JADX INFO: renamed from: B0, reason: from getter */
    protected String getSubjectId() {
        return this.subjectId;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected void F0() {
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView2;
        UGCLocalVideoDetailInfoView uGCLocalVideoDetailInfoView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView3;
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (uGCVideoDetailInfoView3 = mViewBinding.f73763e) != null) {
            jg.c.k(uGCVideoDetailInfoView3);
        }
        qv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCLocalVideoDetailInfoView = mViewBinding2.f73769k) != null) {
            jg.c.g(uGCLocalVideoDetailInfoView);
        }
        qv.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (uGCVideoDetailInfoView2 = mViewBinding3.f73763e) != null) {
            uGCVideoDetailInfoView2.setParentFragment(this);
        }
        qv.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (uGCVideoDetailInfoView = mViewBinding4.f73763e) == null) {
            return;
        }
        uGCVideoDetailInfoView.setPageName(getPAGE_NAME());
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected void H0() {
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null) {
            return;
        }
        uGCVideoDetailPlayListView.setParentFragment(this, UGCVideoPlayFrom.ON_LINE_VIDEO);
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected boolean V0(final FloatActionType actionType) {
        String value;
        ConstraintLayout constraintLayoutB;
        Intrinsics.h(actionType, "actionType");
        UGCVideo uGCVideo = this.ugcVideo;
        if (uGCVideo == null || (value = uGCVideo.getCategory()) == null) {
            value = UGCVideoType.MOVIE.getValue();
        }
        if (Intrinsics.c(value, UGCVideoType.MUSIC.getValue())) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "showFloat2Window----music return", false, 4, null);
            return false;
        }
        final FragmentActivity activity = getActivity();
        if (activity != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_pip_enable", true)) {
                lg.a.f68839a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final px.a aVarU0 = u0();
            if (aVarU0 != null) {
                if (actionType != floatActionType && !aVarU0.f().isPlaying()) {
                    lg.a.f68839a.c("VideoFloat-pip", "stream 视频暂停，无需触发画中画", true);
                    return false;
                }
                ox.e.a aVar = ox.e.f72197a;
                if (aVar.b().c()) {
                    fo.a playerControl = getPlayerControl();
                    if (playerControl != null) {
                        playerControl.hideBottomController(true);
                    }
                    lg.a.f68839a.c("VideoFloat-pip", "stream 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().k(activity, aVarU0, actionType, getCurPlayerUiType() == LongVodUiType.LAND);
                    } else {
                        qv.i mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
                            constraintLayoutB.postDelayed(new Runnable() { // from class: com.transsion.ugcvideodetail.fragment.u0
                                @Override // java.lang.Runnable
                                public final void run() {
                                    UGCVideoDetailFragment.y1(activity, aVarU0, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "checkShowFloatView----actionType:" + actionType, false, 4, null);
                ox.b.f72191a.c().g(activity, aVarU0, actionType == floatActionType, getCurPlayerUiType() == LongVodUiType.LAND, new Function1() { // from class: com.transsion.ugcvideodetail.fragment.v0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return UGCVideoDetailFragment.z1(this.f56275a, activity, ((Boolean) obj).booleanValue());
                    }
                }, new c());
            }
        }
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        View emptyView = super.getEmptyView(isShowTitleLayout);
        yr.b.a(emptyView);
        return emptyView;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.layout_ugc_video_detail_default_skeleton, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCVideoDetailFragment.n1(this.f56259a, view);
            }
        });
        return viewInflate;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getNoNetworkView() {
        View noNetworkView = super.getNoNetworkView();
        yr.b.a(noNetworkView);
        return noNetworkView;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    public String getTAG() {
        return this.TAG;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        showLoadingView();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        m1().D().q(getUgcVideoId());
        m1().B().q(this.collectionId);
        m1().J().j(this, this.historyObserver);
        m1().G().j(this, this.detailObserver);
        m1().L().j(this, this.playInfoObserver);
        m1().Q().j(this, new b(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailFragment.s1(this.f56262a, (UGCVideoDetailViewModel.b) obj);
            }
        }));
        m1().M().j(this, new b(new Function1() { // from class: com.transsion.ugcvideodetail.fragment.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCVideoDetailFragment.t1(this.f56266a, (UGCVideoList) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            lg.a.C0828a.r(lg.a.f68839a, "Report", new String[]{"UGCNormalVideoDetailFragment fb log duration:" + jElapsedRealtime}, false, 4, null);
            com.transsion.baselib.report.e.f43344a.n("UGCNormalVideoDetailFragment", Long.valueOf(jElapsedRealtime), getContext());
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        UGCVideoDetailInfoView uGCVideoDetailInfoView;
        UGCVideoDetailInfoView uGCVideoDetailInfoView2;
        super.onStart();
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailInfoView = mViewBinding.f73763e) == null || !uGCVideoDetailInfoView.isAutoPlayShowing() || !com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false)) {
            return;
        }
        qv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (uGCVideoDetailInfoView2 = mViewBinding2.f73763e) != null) {
            uGCVideoDetailInfoView2.removeAutoPlay();
        }
        fo.a playerControl = getPlayerControl();
        if (playerControl != null) {
            playerControl.ugcAutoPause2PlayVideo();
        }
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected void q0() {
        String ugcVideoId = getUgcVideoId();
        if (ugcVideoId != null) {
            if (StringsKt.q0(ugcVideoId)) {
                ugcVideoId = null;
            }
            if (ugcVideoId != null) {
                m1().b0(ugcVideoId);
                return;
            }
        }
        String str = this.subjectId;
        if (str != null) {
            String str2 = StringsKt.q0(str) ? null : str;
            if (str2 != null) {
                m1().d0(str2);
                return;
            }
        }
        x1("--视频ID不能为空");
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        super.receiveArguments();
        Bundle arguments = getArguments();
        T0(arguments != null ? arguments.getString("id") : null);
        Bundle arguments2 = getArguments();
        this.collectionId = arguments2 != null ? arguments2.getString("collection_id") : null;
        Bundle arguments3 = getArguments();
        this.subjectId = arguments3 != null ? arguments3.getString("subject_id") : null;
        Bundle arguments4 = getArguments();
        U0(arguments4 != null ? arguments4.getString("ugcCategory") : null);
        Bundle arguments5 = getArguments();
        this.ops = arguments5 != null ? arguments5.getString("ops") : null;
        Bundle arguments6 = getArguments();
        this.fromOptId = arguments6 != null ? arguments6.getString("from_opt_id") : null;
        Bundle arguments7 = getArguments();
        Q0(arguments7 != null ? arguments7.getString("parent_video_id") : null);
        Bundle arguments8 = getArguments();
        this.bottomFragmentSelected = arguments8 != null ? arguments8.getInt("ugc_bottom_fragment_selected", 0) : 0;
        Bundle arguments9 = getArguments();
        this.withoutHistory = arguments9 != null ? arguments9.getBoolean("ugc_without_history", false) : false;
        super.Q0(getPreviousPageVideoId());
        lg.a.f68839a.c(getTAG(), "receiveArguments: ugcVideoId=" + getUgcVideoId() + ", collectionId:" + this.collectionId + " subjectId:" + this.subjectId + ", ops=" + this.ops + ", fromOptId=" + this.fromOptId + ", previousPageVideoId=" + getPreviousPageVideoId() + ", bottomFragmentSelected=" + this.bottomFragmentSelected + ", withoutHistory=" + this.withoutHistory, true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        showLoadingView();
        loadData();
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    protected px.a u0() {
        ArrayList<UGCVideo> arrayList;
        String format;
        ArrayList arrayList2;
        String str;
        String ops;
        String averageHueLight;
        String thumbnail;
        String url;
        UGCVideoDetailPlayListView uGCVideoDetailPlayListView;
        List<lj.i1> playListData;
        UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) m1().L().f();
        if (uGCVideoPlayInfo == null) {
            return null;
        }
        qv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (uGCVideoDetailPlayListView = mViewBinding.f73772n) == null || (playListData = uGCVideoDetailPlayListView.getPlayListData()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (lj.i1 i1Var : playListData) {
                UGCVideo uGCVideo = i1Var instanceof UGCVideo ? (UGCVideo) i1Var : null;
                if (uGCVideo != null) {
                    arrayList.add(uGCVideo);
                }
            }
        }
        fo.a playerControl = getPlayerControl();
        com.transsion.player.orplayer.g player = playerControl != null ? playerControl.getPlayer() : null;
        fo.a playerControl2 = getPlayerControl();
        ORPlayerView playerView = playerControl2 != null ? playerControl2.getOrPlayerView() : null;
        fo.a playerControl3 = getPlayerControl();
        SimpleSubtitleView subtitleView = playerControl3 != null ? playerControl3.getSubtitleView() : null;
        fo.a playerControl4 = getPlayerControl();
        ViewGroup subtitleViewGroup = playerControl4 != null ? playerControl4.getSubtitleViewGroup() : null;
        if (playerView == null || player == null || this.ugcVideo == null || subtitleView == null) {
            return null;
        }
        UGCVideoFloatManager uGCVideoFloatManager = UGCVideoFloatManager.f56290b;
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) CollectionsKt.k0(uGCVideoPlayInfo.getResources());
        if (uGCVideoPlayStream == null || (format = uGCVideoPlayStream.getFormat()) == null) {
            format = "";
        }
        PlayMimeType playMimeTypeI = uGCVideoFloatManager.i(format);
        UGCVideo uGCVideo2 = this.ugcVideo;
        if (uGCVideo2 == null) {
            return null;
        }
        ArrayList arrayList3 = new ArrayList();
        if (arrayList != null) {
            String strA = "";
            for (UGCVideo uGCVideo3 : arrayList) {
                String title = uGCVideo2.getTitle();
                String str2 = title == null ? "" : title;
                String lastPageFrom = getLastPageFrom();
                String str3 = lastPageFrom == null ? "" : lastPageFrom;
                String page_name = getPAGE_NAME();
                Cover cover = uGCVideo2.getCover();
                String str4 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
                Cover cover2 = uGCVideo2.getCover();
                String str5 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
                Cover cover3 = uGCVideo2.getCover();
                String str6 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
                Long duration = uGCVideo2.getDuration();
                ArrayList arrayList4 = arrayList3;
                go.a aVar = new go.a("", playMimeTypeI, 0L, 0, 0, str2, null, str3, page_name, null, str4, str5, str6, (int) (duration != null ? duration.longValue() : 0L), null, false, uGCVideo2.getTitle(), uGCVideo2.getOps(), 49728, null);
                strA = io.a.f65273a.a(aVar);
                aVar.B(uGCVideo2);
                arrayList4.add(aVar);
                arrayList3 = arrayList4;
            }
            arrayList2 = arrayList3;
            str = strA;
        } else {
            arrayList2 = arrayList3;
            str = "";
        }
        lg.a.C0828a c0828a = lg.a.f68839a;
        UGCVideo uGCVideo4 = this.ugcVideo;
        c0828a.c("VideoFloat", "stream-----showFloat, title:" + (uGCVideo4 != null ? uGCVideo4.getTitle() : null), true);
        UGCVideoFloatManager.f56290b.u(arrayList2);
        fo.a playerControl5 = getPlayerControl();
        go.c playingStream = playerControl5 != null ? playerControl5.getPlayingStream() : null;
        px.a aVar2 = new px.a(playerView, player, subtitleViewGroup, FloatPlayType.STREAM, "", 0, 0, playingStream != null ? playingStream.e() : null, getPAGE_NAME());
        aVar2.I(playMimeTypeI);
        aVar2.C(str);
        String str7 = this.ops;
        if (str7 == null) {
            UGCVideo uGCVideo5 = this.ugcVideo;
            ops = uGCVideo5 != null ? uGCVideo5.getOps() : null;
        } else {
            ops = str7;
        }
        aVar2.A(ops);
        aVar2.L(this.ugcVideo);
        aVar2.B(getLastPageFrom());
        return aVar2;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    /* JADX INFO: renamed from: w0, reason: from getter */
    public String getOps() {
        return this.ops;
    }

    @Override // com.transsion.ugcvideodetail.fragment.UGCVideoDetailBaseFragment
    /* JADX INFO: renamed from: x0, reason: from getter */
    public String getPAGE_NAME() {
        return this.PAGE_NAME;
    }
}
