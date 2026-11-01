package com.transsion.player.longvideo.intercept;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.blankj.utilcode.util.ToastUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import com.transsion.memberapi.IPremiumApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J=\u0010\u0017\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;", "interceptionManager", "Lgo/a;", "bean", "", "onShowPremium", "(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;)V", "Lcom/transsion/baselib/db/video/PlaybackRecordTable;", "playbackRecord", "genre", "Lcom/transsion/player/longvideo/intercept/d;", "callback", "onShowResolutionRatio", "(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V", "Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;", "a", "Lcom/transsion/player/longvideo/intercept/VideoPremiumInterceptView;", "premiumView", "Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/longvideo/intercept/VideoResolutionRatioInterceptView;", "resolutionView", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoContentInterceptView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private VideoPremiumInterceptView premiumView;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private VideoResolutionRatioInterceptView resolutionView;

    public static final class a implements d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f48091b;

        a(d dVar) {
            this.f48091b = dVar;
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void a() {
            d.a.d(this);
            ToastUtils.s("Ad not ready, please try again later", new Object[0]);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void b() {
            d.a.b(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public go.b c() {
            return d.a.a(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void d() {
            d.a.e(this);
            VideoContentInterceptView.this.setVisibility(8);
            d dVar = this.f48091b;
            if (dVar != null) {
                dVar.d();
            }
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void e() {
            d.a.g(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void f() {
            d.a.f(this);
        }

        @Override // com.transsion.player.longvideo.intercept.d
        public void onComplete() {
            d.a.c(this);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public VideoContentInterceptView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VideoContentInterceptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        setOnClickListener(new View.OnClickListener() { // from class: com.transsion.player.longvideo.intercept.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VideoContentInterceptView.b(view);
            }
        });
    }

    public /* synthetic */ VideoContentInterceptView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(View view) {
    }

    private final String getClassTag() {
        String simpleName = PlaybackInterceptionManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onShowPremium(PlaybackInterceptionManager interceptionManager, go.a bean) {
        Intrinsics.h(interceptionManager, "interceptionManager");
        removeAllViews();
        setVisibility(0);
        if (this.premiumView == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.premiumView = new VideoPremiumInterceptView(context, null, 2, 0 == true ? 1 : 0);
        }
        VideoPremiumInterceptView videoPremiumInterceptView = this.premiumView;
        if (videoPremiumInterceptView != null) {
            videoPremiumInterceptView.setInterceptionManager(interceptionManager);
        }
        VideoPremiumInterceptView videoPremiumInterceptView2 = this.premiumView;
        if (videoPremiumInterceptView2 != null) {
            videoPremiumInterceptView2.setLongVdPlayerBean(bean);
        }
        addView(this.premiumView);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iPremiumApi != null) {
            Context context2 = getContext();
            Intrinsics.g(context2, "getContext(...)");
            IPremiumApi.a.c(iPremiumApi, context2, "MainDialogInterstitialScene", null, null, null, null, 60, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onShowResolutionRatio(PlaybackRecordTable playbackRecord, String genre, PlaybackInterceptionManager interceptionManager, go.a bean, d callback) {
        Intrinsics.h(interceptionManager, "interceptionManager");
        removeAllViews();
        setVisibility(0);
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", getClassTag() + " --> onShowResolutionRatio() --> 展示分辨率拦截", false, 4, null);
        if (this.resolutionView == null) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            this.resolutionView = new VideoResolutionRatioInterceptView(context, null, 2, 0 == true ? 1 : 0);
        }
        VideoResolutionRatioInterceptView videoResolutionRatioInterceptView = this.resolutionView;
        if (videoResolutionRatioInterceptView != null) {
            videoResolutionRatioInterceptView.setGenre(genre);
        }
        VideoResolutionRatioInterceptView videoResolutionRatioInterceptView2 = this.resolutionView;
        if (videoResolutionRatioInterceptView2 != null) {
            videoResolutionRatioInterceptView2.setVideoDetailPlayBean(playbackRecord);
        }
        VideoResolutionRatioInterceptView videoResolutionRatioInterceptView3 = this.resolutionView;
        if (videoResolutionRatioInterceptView3 != null) {
            videoResolutionRatioInterceptView3.setVideoDetailPlayBean(bean);
        }
        VideoResolutionRatioInterceptView videoResolutionRatioInterceptView4 = this.resolutionView;
        if (videoResolutionRatioInterceptView4 != null) {
            videoResolutionRatioInterceptView4.setPlaybackManager(interceptionManager);
        }
        VideoResolutionRatioInterceptView videoResolutionRatioInterceptView5 = this.resolutionView;
        if (videoResolutionRatioInterceptView5 != null) {
            videoResolutionRatioInterceptView5.setPlaybackCallback(new a(callback));
        }
        addView(this.resolutionView);
    }
}
