package com.transsion.player.longvideo.intercept;

import android.app.Application;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.Utils;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\b\u0005*\u0001;\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0014\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0014\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0017\u0010-\u001a\u00020(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00107R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010%R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006?"}, d2 = {"Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "", "g", "()V", "i", "genre", "setGenre", "(Ljava/lang/String;)V", "Lcom/transsion/baselib/db/video/PlaybackRecordTable;", "bean", "setVideoDetailPlayBean", "(Lcom/transsion/baselib/db/video/PlaybackRecordTable;)V", "Lgo/a;", "(Lgo/a;)V", "Lcom/transsion/player/longvideo/intercept/d;", "callback", "setPlaybackCallback", "(Lcom/transsion/player/longvideo/intercept/d;)V", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "playbackManager", "setPlaybackManager", "(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;)V", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "a", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "rewardedAdManager", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "Lcom/transsion/player/longvideo/intercept/d;", "Lho/q;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lho/q;", "getBinding", "()Lho/q;", "binding", "Lcom/transsion/baselib/db/video/PlaybackRecordDao;", "e", "Lkotlin/Lazy;", "getPlaybackRecordDao", "()Lcom/transsion/baselib/db/video/PlaybackRecordDao;", "playbackRecordDao", "f", "Lcom/transsion/baselib/db/video/PlaybackRecordTable;", "videoDetailPlayBean", "Lgo/a;", "h", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "traceId", "com/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1", "j", "Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView$rewardInterceptListener$1;", "rewardInterceptListener", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoResolutionRatioInterceptView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private BiddingVideoManager rewardedAdManager;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String genre;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private d callback;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final ho.q binding;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy playbackRecordDao;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private PlaybackRecordTable videoDetailPlayBean;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private go.a bean;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private PlaybackInterceptionManager playbackManager;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private String traceId;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final VideoResolutionRatioInterceptView$rewardInterceptListener$1 rewardInterceptListener;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public VideoResolutionRatioInterceptView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.transsion.player.longvideo.intercept.VideoResolutionRatioInterceptView$rewardInterceptListener$1] */
    @JvmOverloads
    public VideoResolutionRatioInterceptView(final Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        ho.q qVarC = ho.q.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(qVarC, "inflate(...)");
        this.binding = qVarC;
        this.playbackRecordDao = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.intercept.p0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoResolutionRatioInterceptView.j();
            }
        });
        this.traceId = "";
        this.rewardInterceptListener = new di.a() { // from class: com.transsion.player.longvideo.intercept.VideoResolutionRatioInterceptView$rewardInterceptListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                this.g();
                d dVar = this.callback;
                if (dVar != null) {
                    dVar.a();
                }
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                BiddingVideoManager biddingVideoManager;
                Context context2 = context;
                AppCompatActivity appCompatActivity = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
                if (appCompatActivity == null || (biddingVideoManager = this.rewardedAdManager) == null) {
                    return;
                }
                AbsAdBidding.R0(biddingVideoManager, appCompatActivity, biddingIntermediateMaterialBean, false, 4, null);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                this.g();
            }

            @Override // di.a
            public void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            }

            @Override // di.a
            public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                LifecycleCoroutineScope lifecycleCoroutineScopeA;
                PlaybackRecordTable playbackRecordTable = this.videoDetailPlayBean;
                if (playbackRecordTable != null) {
                    Context context2 = context;
                    VideoResolutionRatioInterceptView videoResolutionRatioInterceptView = this;
                    AppCompatActivity appCompatActivity = context2 instanceof AppCompatActivity ? (AppCompatActivity) context2 : null;
                    if (appCompatActivity != null && (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) != null) {
                        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new VideoResolutionRatioInterceptView$rewardInterceptListener$1$onBiddingWrapperAdRewarded$1$1(videoResolutionRatioInterceptView, playbackRecordTable, null), 3, null);
                    }
                }
                lg.a.C0828a.f(lg.a.f68839a, "premium_p", this.getClassTag() + " --> onBiddingWrapperAdRewarded() --> 获取激励 --> 回调出去", false, 4, null);
                this.setVisibility(8);
                d dVar = this.callback;
                if (dVar != null) {
                    dVar.d();
                }
            }

            @Override // di.a
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                this.g();
                d dVar = this.callback;
                if (dVar != null) {
                    dVar.a();
                }
            }
        };
        qVarC.f64696b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoResolutionRatioInterceptView.e(this.f48167a, view);
            }
        });
        qVarC.f64699e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.r0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoResolutionRatioInterceptView.f(this.f48169a, view);
            }
        });
    }

    public /* synthetic */ VideoResolutionRatioInterceptView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(VideoResolutionRatioInterceptView videoResolutionRatioInterceptView, View view) {
        String strI;
        String strO;
        com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
        go.a aVar = videoResolutionRatioInterceptView.bean;
        if (aVar == null || (strI = aVar.i()) == null) {
            strI = "";
        }
        String str = videoResolutionRatioInterceptView.traceId;
        go.a aVar2 = videoResolutionRatioInterceptView.bean;
        fVar.f(strI, "player/hd_preview_expire", str, (aVar2 == null || (strO = aVar2.o()) == null) ? "" : strO, 0);
        PlaybackInterceptionManager playbackInterceptionManager = videoResolutionRatioInterceptView.playbackManager;
        if (playbackInterceptionManager != null) {
            PlaybackInterceptionManager.X(playbackInterceptionManager, true, "player/hd_preview_expire", videoResolutionRatioInterceptView.traceId, false, 8, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(final VideoResolutionRatioInterceptView videoResolutionRatioInterceptView, View view) {
        com.transsion.baseui.util.d.a(2000L, new Function0() { // from class: com.transsion.player.longvideo.intercept.s0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoResolutionRatioInterceptView.h(this.f48170a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g() {
        BiddingVideoManager biddingVideoManager = this.rewardedAdManager;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
        this.rewardedAdManager = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getClassTag() {
        String simpleName = PlaybackInterceptionManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlaybackRecordDao getPlaybackRecordDao() {
        return (PlaybackRecordDao) this.playbackRecordDao.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(VideoResolutionRatioInterceptView videoResolutionRatioInterceptView) {
        videoResolutionRatioInterceptView.i();
        return Unit.f67061a;
    }

    private final void i() {
        setVisibility(0);
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new VideoResolutionRatioInterceptView$loadRewardedAd$1$1(this, appCompatActivity, null), 3, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlaybackRecordDao j() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).v1();
    }

    public final ho.q getBinding() {
        return this.binding;
    }

    public final void setGenre(String genre) {
        this.genre = genre;
    }

    public final void setPlaybackCallback(d callback) {
        this.callback = callback;
    }

    public final void setPlaybackManager(PlaybackInterceptionManager playbackManager) {
        this.playbackManager = playbackManager;
    }

    public final void setVideoDetailPlayBean(PlaybackRecordTable bean) {
        this.videoDetailPlayBean = bean;
    }

    public final void setVideoDetailPlayBean(go.a bean) {
        String strI;
        String strO;
        this.bean = bean;
        this.traceId = ti.n.f76264a.b();
        com.transsion.baselib.helper.f fVar = com.transsion.baselib.helper.f.f43269a;
        if (bean == null || (strI = bean.i()) == null) {
            strI = "";
        }
        fVar.h(strI, "player/hd_preview_expire", this.traceId, (bean == null || (strO = bean.o()) == null) ? "" : strO, 0);
    }
}
