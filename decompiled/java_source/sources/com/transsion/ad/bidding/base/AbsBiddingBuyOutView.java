package com.transsion.ad.bidding.base;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b&\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001d\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0013\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0015\u001a\u00020\n2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u0017\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b\"\u0010#J\u0011\u0010$\u001a\u0004\u0018\u00010\u0001H&¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u001dH&¢\u0006\u0004\b&\u0010'J\u0011\u0010(\u001a\u0004\u0018\u00010\u0001H\u0016¢\u0006\u0004\b(\u0010%J\u0015\u0010+\u001a\u00020\n2\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\n2\b\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b/\u00100J\u0011\u00101\u001a\u0004\u0018\u00010-H\u0016¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\n2\b\u00104\u001a\u0004\u0018\u000103¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u0004\u0018\u000103¢\u0006\u0004\b7\u00108J\u0017\u0010;\u001a\u00020\n2\b\u0010:\u001a\u0004\u0018\u000109¢\u0006\u0004\b;\u0010<J\u000f\u0010>\u001a\u0004\u0018\u00010=¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u0004\u0018\u000109¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\n2\b\u0010E\u001a\u0004\u0018\u00010D¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u0004\u0018\u00010D¢\u0006\u0004\bH\u0010IJ\r\u0010J\u001a\u00020\n¢\u0006\u0004\bJ\u0010\fJ\r\u0010K\u001a\u00020\n¢\u0006\u0004\bK\u0010\fJ\u0015\u0010L\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u001d¢\u0006\u0004\bL\u0010 J\u0015\u0010N\u001a\u00020\n2\u0006\u0010M\u001a\u00020\u001d¢\u0006\u0004\bN\u0010 J\r\u0010O\u001a\u00020\n¢\u0006\u0004\bO\u0010\fJ\u0019\u0010Q\u001a\u00020\n2\b\u0010P\u001a\u0004\u0018\u00010-H\u0004¢\u0006\u0004\bQ\u00100J\r\u0010R\u001a\u00020\n¢\u0006\u0004\bR\u0010\fJ\r\u0010S\u001a\u00020\n¢\u0006\u0004\bS\u0010\fR\u0018\u0010V\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010UR\u0018\u0010Y\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u0018\u0010:\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010]R\u0018\u0010_\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010^R\u0018\u0010a\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010`R\u0018\u0010c\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010bR\u0016\u0010f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010gR\u0014\u0010k\u001a\u00020h8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010M\u001a\u00020l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0016\u0010r\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bq\u0010eR\u0016\u0010L\u001a\u00020l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010nR\u0016\u0010v\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010u¨\u0006w"}, d2 = {"Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/ad/strategy/r$a;", "Loi/b;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "", "displayTimestamp", "e", "(J)V", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "adMaterialList", "i", "(Lcom/transsion/ad/monopoly/model/AdMaterialList;)V", "g", "Landroid/widget/ImageView;", "imageView", "setVolumeImage", "(Landroid/widget/ImageView;)V", "Lcom/transsion/player/orplayer/g;", "getOrPlayer", "()Lcom/transsion/player/orplayer/g;", "", "isVisible", "onVisibilityChanged", "(Z)V", "Landroid/view/View;", "getVisibilityView", "()Landroid/view/View;", "getMediaContainer", "()Landroid/widget/FrameLayout;", "isShowVolumeIcon", "()Z", "getVolumeContainer", "Landroid/widget/ImageView$ScaleType;", "scaleType", "setScaleType", "(Landroid/widget/ImageView$ScaleType;)V", "", "sceneId", "setSceneId", "(Ljava/lang/String;)V", "getSceneId", "()Ljava/lang/String;", "Ldi/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setListener", "(Ldi/a;)V", "getListener", "()Ldi/a;", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "maxEcpmObject", "setEcpmObject", "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "Lcom/transsion/ad/monopoly/model/AdPlans;", "getAdPlans", "()Lcom/transsion/ad/monopoly/model/AdPlans;", "getMaxEcpmObject", "()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "getAdMaterialList", "()Lcom/transsion/ad/monopoly/model/AdMaterialList;", "Lcom/transsion/ad/ps/model/RecommendInfo;", "recommendInfo", "setRecommendInfo", "(Lcom/transsion/ad/ps/model/RecommendInfo;)V", "getRecommendInfo", "()Lcom/transsion/ad/ps/model/RecommendInfo;", PushConstants.PROVIDER_FIELD_DESTROY, "reset", "isReportAdDisplay", "isAdMaterialShow", "setAdMaterialShow", "onAdClick", "errorMsg", "f", "addSession", "showMedia", "a", "Ljava/lang/String;", "mSceneId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ldi/a;", "mListener", "c", "Lcom/transsion/ad/monopoly/model/AdPlans;", "mAdPlans", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "mAdMaterialList", "Lcom/transsion/ad/ps/model/RecommendInfo;", "mRecommendInfo", "Lcom/transsion/player/orplayer/g;", "mOrPlayer", "h", "Z", "mIsMute", "Landroid/widget/ImageView;", "Landroid/view/TextureView;", "j", "Landroid/view/TextureView;", "textureView", "Ljava/util/concurrent/atomic/AtomicBoolean;", CampaignEx.JSON_KEY_AD_K, "Ljava/util/concurrent/atomic/AtomicBoolean;", "l", "Landroid/widget/ImageView$ScaleType;", "m", "isInScreen", "n", "o", "J", "showTimestamp", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class AbsBiddingBuyOutView extends FrameLayout implements com.transsion.ad.strategy.r.a, oi.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private String mSceneId;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private di.a mListener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private AdPlans mAdPlans;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean maxEcpmObject;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private AdMaterialList mAdMaterialList;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private RecommendInfo mRecommendInfo;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g mOrPlayer;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private boolean mIsMute;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final ImageView imageView;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final TextureView textureView;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean isAdMaterialShow;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private ImageView.ScaleType scaleType;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isInScreen;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean isReportAdDisplay;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private long showTimestamp;

    public static final class a implements com.transsion.player.orplayer.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.transsion.player.orplayer.g f41850b;

        a(com.transsion.player.orplayer.g gVar) {
            this.f41850b = gVar;
        }

        @Override // com.transsion.player.orplayer.f
        public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
            com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void initPlayer() {
            com.transsion.player.orplayer.f.a.b(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
            com.transsion.player.orplayer.f.a.c(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onBufferedPosition(long j11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.d(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onCompletion(ao.e eVar) {
            com.transsion.player.orplayer.f.a.e(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onFocusChange(boolean z10) {
            com.transsion.player.orplayer.f.a.g(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onIsPlayingChanged(boolean z10) {
            com.transsion.player.orplayer.f.a.h(this, z10);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingBegin(ao.e eVar) {
            com.transsion.player.orplayer.f.a.i(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingEnd(ao.e eVar) {
            com.transsion.player.orplayer.f.a.k(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoadingProgress(int i11, float f11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.m(this, i11, f11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onLoopingStart() {
            com.transsion.player.orplayer.f.a.o(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onMediaItemTransition(String str) {
            com.transsion.player.orplayer.f.a.p(this, str);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayError(PlayError errorInfo, ao.e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
            com.transsion.player.orplayer.f.a.q(this, errorInfo, eVar);
            AbsBiddingBuyOutView.this.f(errorInfo.getErrorMessage());
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerRelease(ao.e eVar) {
            com.transsion.player.orplayer.f.a.t(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPlayerReset() {
            com.transsion.player.orplayer.f.a.v(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onPrepare(ao.e eVar) {
            com.transsion.player.orplayer.f.a.w(this, eVar);
            this.f41850b.play();
        }

        @Override // com.transsion.player.orplayer.f
        public void onProgress(long j11, ao.e eVar) {
            com.transsion.player.orplayer.f.a.y(this, j11, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onRenderFirstFrame() {
            com.transsion.player.orplayer.f.a.A(this);
            AbsBiddingBuyOutView.this.isAdMaterialShow.set(true);
        }

        @Override // com.transsion.player.orplayer.f
        public void onSetDataSource() {
            com.transsion.player.orplayer.f.a.B(this);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksAudioBitrateChange(int i11) {
            com.transsion.player.orplayer.f.a.C(this, i11);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksChange(mo.c cVar) {
            com.transsion.player.orplayer.f.a.D(this, cVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onTracksVideoBitrateChange(int i11) {
            com.transsion.player.orplayer.f.a.E(this, i11);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoPause(ao.e eVar) {
            com.transsion.player.orplayer.f.a.F(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoSizeChanged(int i11, int i12) {
            com.transsion.player.orplayer.f.a.H(this, i11, i12);
        }

        @Override // com.transsion.player.orplayer.f
        public void onVideoStart(ao.e eVar) {
            com.transsion.player.orplayer.f.a.I(this, eVar);
        }

        @Override // com.transsion.player.orplayer.f
        public void setOnSeekCompleteListener() {
            com.transsion.player.orplayer.f.a.K(this);
        }
    }

    public static final class b implements RequestListener {
        b() {
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(target, "target");
            Intrinsics.h(dataSource, "dataSource");
            if (resource instanceof GifDrawable) {
                ((GifDrawable) resource).start();
            }
            AbsBiddingBuyOutView.this.isAdMaterialShow.set(true);
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            AbsBiddingBuyOutView.this.f("图片加载失败 -->" + (glideException != null ? glideException.getMessage() : null));
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public AbsBiddingBuyOutView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AbsBiddingBuyOutView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.mIsMute = true;
        this.imageView = new ImageView(getContext());
        this.textureView = new TextureView(getContext());
        this.isAdMaterialShow = new AtomicBoolean(false);
        this.scaleType = ImageView.ScaleType.FIT_CENTER;
        setOnClickListener(new ti.g(0L, new Function1() { // from class: com.transsion.ad.bidding.base.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AbsBiddingBuyOutView.c(this.f41890a, (View) obj);
            }
        }, 1, null));
        this.isReportAdDisplay = new AtomicBoolean(false);
    }

    public /* synthetic */ AbsBiddingBuyOutView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c(AbsBiddingBuyOutView absBiddingBuyOutView, View it) {
        Intrinsics.h(it, "it");
        absBiddingBuyOutView.onAdClick();
        return Unit.f67061a;
    }

    private final void d() {
        di.a mListener;
        di.a mListener2;
        if (getMAdPlans() != null && (mListener2 = getMListener()) != null) {
            mListener2.c(this.maxEcpmObject);
        }
        RecommendInfo mRecommendInfo = getMRecommendInfo();
        if (mRecommendInfo == null || (mListener = getMListener()) == null) {
            return;
        }
        mListener.t(mRecommendInfo);
    }

    private final void e(long displayTimestamp) {
        di.a mListener;
        di.a mListener2;
        if (getMAdPlans() != null && (mListener2 = getMListener()) != null) {
            mListener2.d(this.maxEcpmObject, displayTimestamp);
        }
        RecommendInfo mRecommendInfo = getMRecommendInfo();
        if (mRecommendInfo == null || (mListener = getMListener()) == null) {
            return;
        }
        mListener.s(mRecommendInfo, displayTimestamp);
    }

    private final void g(AdMaterialList adMaterialList) {
        MbAdVideo video;
        String path;
        MbAdVideo video2;
        String path2;
        MbAdVideo video3;
        String url;
        MbAdVideo video4;
        String url2;
        MbAdVideo video5;
        FrameLayout mediaContainer = getMediaContainer();
        if (mediaContainer == null) {
            oi.b.a.c(this, 6, "playVideo() --> getMediaContainer() == null", null, false, 12, null);
            return;
        }
        com.transsion.player.orplayer.g mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.release();
        }
        mediaContainer.removeAllViews();
        this.mIsMute = true;
        ti.q qVar = ti.q.f76267a;
        qVar.a(this.textureView);
        mediaContainer.addView(this.textureView);
        if (getMIsShowVolumeIcon()) {
            new FrameLayout.LayoutParams(-1, -1).gravity = 17;
            this.imageView.setTag("adVolumeImage");
            this.imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.base.t
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    AbsBiddingBuyOutView.h(this.f41891a, view);
                }
            });
            setVolumeImage(this.imageView);
            qVar.a(this.imageView);
            FrameLayout volumeContainer = getVolumeContainer();
            if (volumeContainer != null) {
                volumeContainer.addView(this.imageView);
            }
        }
        Context context = mediaContainer.getContext();
        Intrinsics.g(context, "getContext(...)");
        com.transsion.player.orplayer.g gVarA = new com.transsion.player.orplayer.g.a(context).b(new bo.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 94207, null)).a();
        gVarA.setMute(true);
        gVarA.setTextureView(this.textureView);
        gVarA.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        gVarA.setLooping(true);
        gVarA.setPlayerListener(new a(gVarA));
        this.mOrPlayer = gVarA;
        if (TextUtils.isEmpty((adMaterialList == null || (video5 = adMaterialList.getVideo()) == null) ? null : video5.getPath())) {
            com.transsion.player.orplayer.g gVar = this.mOrPlayer;
            if (gVar != null) {
                gVar.setDataSource(new ao.e((adMaterialList == null || (video4 = adMaterialList.getVideo()) == null || (url2 = video4.getUrl()) == null) ? "" : url2, (adMaterialList == null || (video3 = adMaterialList.getVideo()) == null || (url = video3.getUrl()) == null) ? "" : url, 0, null, null, 28, null));
            }
        } else {
            com.transsion.player.orplayer.g gVar2 = this.mOrPlayer;
            if (gVar2 != null) {
                gVar2.setDataSource(new ao.e((adMaterialList == null || (video2 = adMaterialList.getVideo()) == null || (path2 = video2.getPath()) == null) ? "" : path2, (adMaterialList == null || (video = adMaterialList.getVideo()) == null || (path = video.getPath()) == null) ? "" : path, 0, null, null, 28, null));
            }
        }
        com.transsion.player.orplayer.g gVar3 = this.mOrPlayer;
        if (gVar3 != null) {
            gVar3.prepare();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(AbsBiddingBuyOutView absBiddingBuyOutView, View view) {
        oi.b.a.c(absBiddingBuyOutView, 3, "playVideo() --> 点击了音频按钮", null, false, 4, null);
        boolean z10 = !absBiddingBuyOutView.mIsMute;
        absBiddingBuyOutView.mIsMute = z10;
        com.transsion.player.orplayer.g gVar = absBiddingBuyOutView.mOrPlayer;
        if (gVar != null) {
            gVar.setMute(z10);
        }
        absBiddingBuyOutView.setVolumeImage(absBiddingBuyOutView.imageView);
    }

    private final void i(AdMaterialList adMaterialList) {
        MbAdImage image;
        MbAdImage image2;
        FrameLayout mediaContainer = getMediaContainer();
        if (mediaContainer == null) {
            return;
        }
        Context context = mediaContainer.getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null || !(activity.isFinishing() || activity.isDestroyed())) {
            mediaContainer.removeAllViews();
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(this.scaleType);
            String path = (adMaterialList == null || (image2 = adMaterialList.getImage()) == null) ? null : image2.getPath();
            Object url = (adMaterialList == null || (image = adMaterialList.getImage()) == null) ? null : image.getUrl();
            if (path != null) {
                String str = new File(path).exists() ? path : null;
                if (str != null) {
                    url = new File(str);
                }
            }
            try {
                Intrinsics.e(Glide.with(mediaContainer).load2(url).listener(new b()).into(imageView));
            } catch (IllegalArgumentException e11) {
                f("加载图片失败 --> " + e11.getMessage());
            }
            mediaContainer.addView(imageView);
        }
    }

    private final void setVolumeImage(ImageView imageView) {
        if (this.mIsMute) {
            imageView.setImageResource(R$mipmap.ad_volumeoff);
        } else {
            imageView.setImageResource(R$mipmap.ad_volumeon);
        }
    }

    public final void addSession() {
        com.transsion.ad.strategy.r.f42240a.g(this);
    }

    public final void destroy() {
        this.isReportAdDisplay.set(false);
        reset();
        com.transsion.ad.strategy.r.f42240a.n(this);
    }

    protected final void f(String errorMsg) {
        di.a mListener;
        if (getMAdPlans() != null) {
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = this.maxEcpmObject;
            if (biddingIntermediateMaterialBean != null) {
                biddingIntermediateMaterialBean.setErrorMsg(errorMsg);
            }
            di.a mListener2 = getMListener();
            if (mListener2 != null) {
                mListener2.p(this.maxEcpmObject);
            }
        }
        RecommendInfo mRecommendInfo = getMRecommendInfo();
        if (mRecommendInfo == null || (mListener = getMListener()) == null) {
            return;
        }
        mListener.u(mRecommendInfo);
    }

    /* JADX INFO: renamed from: getAdMaterialList, reason: from getter */
    public final AdMaterialList getMAdMaterialList() {
        return this.mAdMaterialList;
    }

    /* JADX INFO: renamed from: getAdPlans, reason: from getter */
    public final AdPlans getMAdPlans() {
        return this.mAdPlans;
    }

    @Override // oi.b
    public String getClassTag() {
        return oi.b.a.a(this);
    }

    /* JADX INFO: renamed from: getListener, reason: from getter */
    public final di.a getMListener() {
        return this.mListener;
    }

    public abstract /* synthetic */ String getLogTag();

    public final BiddingIntermediateMaterialBean getMaxEcpmObject() {
        return this.maxEcpmObject;
    }

    public abstract FrameLayout getMediaContainer();

    /* JADX INFO: renamed from: getOrPlayer, reason: from getter */
    protected final com.transsion.player.orplayer.g getMOrPlayer() {
        return this.mOrPlayer;
    }

    /* JADX INFO: renamed from: getRecommendInfo, reason: from getter */
    public final RecommendInfo getMRecommendInfo() {
        return this.mRecommendInfo;
    }

    @Override // oi.b
    /* JADX INFO: renamed from: getSceneId, reason: from getter */
    public String getMSceneId() {
        return this.mSceneId;
    }

    @Override // com.transsion.ad.strategy.r.a
    public double getVisibilityThreshold() {
        return com.transsion.ad.strategy.r.a.C0599a.a(this);
    }

    @Override // com.transsion.ad.strategy.r.a
    public View getVisibilityView() {
        return getMediaContainer();
    }

    public FrameLayout getVolumeContainer() {
        return null;
    }

    public final void isReportAdDisplay(boolean isReportAdDisplay) {
        this.isReportAdDisplay.set(isReportAdDisplay);
    }

    /* JADX INFO: renamed from: isShowVolumeIcon */
    public abstract boolean getMIsShowVolumeIcon();

    public final void onAdClick() {
        di.a mListener;
        di.a mListener2;
        if (getMAdPlans() != null && (mListener2 = getMListener()) != null) {
            mListener2.a(this.maxEcpmObject);
        }
        RecommendInfo mRecommendInfo = getMRecommendInfo();
        if (mRecommendInfo == null || (mListener = getMListener()) == null) {
            return;
        }
        mListener.r(mRecommendInfo);
    }

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        oi.b.a.b(this, i11, str, str2, z10);
    }

    @Override // com.transsion.ad.strategy.r.a
    public void onVisibilityChanged(boolean isVisible) {
        com.transsion.player.orplayer.g mOrPlayer;
        di.a mListener;
        if (!this.isInScreen && isVisible && (mListener = getMListener()) != null) {
            mListener.f(this.maxEcpmObject);
        }
        this.isInScreen = isVisible;
        if (!isVisible) {
            if (this.showTimestamp > 0) {
                e(SystemClock.elapsedRealtime() - this.showTimestamp);
            }
            this.showTimestamp = 0L;
            com.transsion.player.orplayer.g mOrPlayer2 = getMOrPlayer();
            if (mOrPlayer2 != null) {
                mOrPlayer2.pause();
                return;
            }
            return;
        }
        if (this.showTimestamp == 0) {
            this.showTimestamp = SystemClock.elapsedRealtime();
        }
        if (!this.isReportAdDisplay.get() && this.isAdMaterialShow.get()) {
            this.isReportAdDisplay.set(true);
            d();
        }
        com.transsion.player.orplayer.g mOrPlayer3 = getMOrPlayer();
        if (mOrPlayer3 == null || mOrPlayer3.isPlaying() || (mOrPlayer = getMOrPlayer()) == null) {
            return;
        }
        mOrPlayer.play();
    }

    public final void reset() {
        if (this.showTimestamp > 0) {
            e(SystemClock.elapsedRealtime() - this.showTimestamp);
        }
        setListener(null);
        removeAllViews();
        com.transsion.player.orplayer.g gVar = this.mOrPlayer;
        if (gVar != null) {
            gVar.release();
        }
    }

    public final void setAdMaterialShow(boolean isAdMaterialShow) {
        this.isAdMaterialShow.set(isAdMaterialShow);
    }

    public final void setEcpmObject(BiddingIntermediateMaterialBean maxEcpmObject) {
        List<AdMaterialList> adMaterialList;
        List<AdMaterialList> adMaterialList2;
        this.maxEcpmObject = maxEcpmObject;
        AdMaterialList adMaterialList3 = null;
        AdPlans plans = maxEcpmObject != null ? maxEcpmObject.getPlans() : null;
        this.mAdPlans = plans;
        if (plans == null || (adMaterialList = plans.getAdMaterialList()) == null || !(!adMaterialList.isEmpty())) {
            return;
        }
        AdPlans adPlans = this.mAdPlans;
        if (adPlans != null && (adMaterialList2 = adPlans.getAdMaterialList()) != null) {
            adMaterialList3 = (AdMaterialList) CollectionsKt.k0(adMaterialList2);
        }
        this.mAdMaterialList = adMaterialList3;
    }

    public final void setListener(di.a listener) {
        this.mListener = listener;
    }

    public final void setRecommendInfo(RecommendInfo recommendInfo) {
        this.mRecommendInfo = recommendInfo;
    }

    public final void setScaleType(ImageView.ScaleType scaleType) {
        Intrinsics.h(scaleType, "scaleType");
        this.scaleType = scaleType;
    }

    public final void setSceneId(String sceneId) {
        this.mSceneId = sceneId;
    }

    public final void showMedia() {
        if (getMAdMaterialList() == null) {
            return;
        }
        AdMaterialList mAdMaterialList = getMAdMaterialList();
        if (Intrinsics.c(mAdMaterialList != null ? mAdMaterialList.getType() : null, AdMaterialList.NON_AD_TYPE_TEXT)) {
            i(getMAdMaterialList());
        } else {
            g(getMAdMaterialList());
        }
        addSession();
    }
}
