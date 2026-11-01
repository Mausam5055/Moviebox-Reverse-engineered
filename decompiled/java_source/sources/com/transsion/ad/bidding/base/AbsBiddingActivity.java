package com.transsion.ad.bidding.base;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.MBAd;
import com.transsion.ad.R$mipmap;
import com.transsion.ad.monopoly.model.AdMaterialList;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.monopoly.model.MbAdImage;
import com.transsion.ad.monopoly.model.MbAdVideo;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.ScaleMode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u00ad\u00012\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001uB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u0006J\u000f\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\u0006J\u000f\u0010\u0015\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0015\u0010\u0006J\u000f\u0010\u0016\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0016\u0010\u0006J\u000f\u0010\u0017\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0006J\u0019\u0010\u001a\u001a\u00020\n2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\nH\u0014¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\nH\u0014¢\u0006\u0004\b\u001d\u0010\u0006J\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0011\u0010#\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u0010H\u0016¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\n¢\u0006\u0004\b(\u0010\u0006J\r\u0010)\u001a\u00020\n¢\u0006\u0004\b)\u0010\u0006J!\u0010.\u001a\u00020\n2\u0006\u0010+\u001a\u00020*2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\n2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b0\u00101J\u000f\u00102\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u0010\u0006J\u0019\u00103\u001a\u00020\n2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b3\u00101J\u0019\u00104\u001a\u00020\n2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b4\u00101J\u0019\u00105\u001a\u00020\n2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b5\u00101J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u000f\u0010:\u001a\u000209H&¢\u0006\u0004\b:\u0010;J\u0011\u0010<\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\b<\u0010$J\u000f\u0010=\u001a\u00020\nH&¢\u0006\u0004\b=\u0010\u0006J\u0011\u0010?\u001a\u0004\u0018\u00010>H&¢\u0006\u0004\b?\u0010@J\u0011\u0010A\u001a\u0004\u0018\u00010>H&¢\u0006\u0004\bA\u0010@J\u0017\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u000209H&¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\nH&¢\u0006\u0004\bE\u0010\u0006J\u0011\u0010F\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\bF\u0010$J\u0011\u0010G\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\bG\u0010$J\u0011\u0010H\u001a\u0004\u0018\u00010\"H&¢\u0006\u0004\bH\u0010$J\u000f\u0010I\u001a\u000209H\u0016¢\u0006\u0004\bI\u0010;J-\u0010N\u001a\u00020\n2\b\u0010K\u001a\u0004\u0018\u00010J2\b\u0010L\u001a\u0004\u0018\u0001092\b\u0010M\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0010H\u0016¢\u0006\u0004\bP\u0010\u0012J\u000f\u0010Q\u001a\u00020\u0010H\u0016¢\u0006\u0004\bQ\u0010\u0012J\u000f\u0010R\u001a\u00020\nH\u0016¢\u0006\u0004\bR\u0010\u0006J\u0017\u0010U\u001a\u00020\n2\u0006\u0010T\u001a\u00020SH\u0016¢\u0006\u0004\bU\u0010VJ\u0011\u0010W\u001a\u0004\u0018\u00010\"H\u0014¢\u0006\u0004\bW\u0010$J\u0017\u0010Y\u001a\u00020\n2\u0006\u0010X\u001a\u00020\"H\u0004¢\u0006\u0004\bY\u0010ZJ\u000f\u0010\\\u001a\u00020[H\u0016¢\u0006\u0004\b\\\u0010]J\u000f\u0010_\u001a\u00020^H\u0016¢\u0006\u0004\b_\u0010`J\r\u0010a\u001a\u00020\n¢\u0006\u0004\ba\u0010\u0006J\r\u0010b\u001a\u00020\n¢\u0006\u0004\bb\u0010\u0006J\u000f\u0010c\u001a\u00020\nH\u0017¢\u0006\u0004\bc\u0010\u0006J\u0015\u0010e\u001a\u00020\n2\u0006\u0010d\u001a\u00020\u0010¢\u0006\u0004\be\u0010'J\r\u0010f\u001a\u000209¢\u0006\u0004\bf\u0010;J\r\u0010g\u001a\u000209¢\u0006\u0004\bg\u0010;J\u000f\u0010i\u001a\u0004\u0018\u00010h¢\u0006\u0004\bi\u0010jJ\u000f\u0010l\u001a\u0004\u0018\u00010k¢\u0006\u0004\bl\u0010mJ\r\u0010n\u001a\u00020\n¢\u0006\u0004\bn\u0010\u0006J\r\u0010o\u001a\u00020\n¢\u0006\u0004\bo\u0010\u0006J\r\u0010p\u001a\u00020\n¢\u0006\u0004\bp\u0010\u0006J\r\u0010q\u001a\u00020\n¢\u0006\u0004\bq\u0010\u0006J\u0017\u0010s\u001a\u00020\n2\b\u0010r\u001a\u0004\u0018\u000106¢\u0006\u0004\bs\u0010tR\u0018\u0010w\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010vR$\u0010\u007f\u001a\u0004\u0018\u00010x8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\by\u0010z\u001a\u0004\b{\u0010|\"\u0004\b}\u0010~R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0085\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001b\u0010\u0088\u0001\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001a\u0010\u008c\u0001\u001a\u00030\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u0090\u0001\u001a\u00030\u008d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R*\u0010\u0096\u0001\u001a\u00030\u008d\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0018\n\u0006\b\u0091\u0001\u0010\u008f\u0001\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001\"\u0006\b\u0094\u0001\u0010\u0095\u0001R\u0017\u0010\u0097\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010qR\u0018\u0010\u009b\u0001\u001a\u00030\u0098\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u0019\u0010\u009d\u0001\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0084\u0001R\u001b\u0010 \u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u0018\u0010¢\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¡\u0001\u0010qR\u001a\u0010¦\u0001\u001a\u00030£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u001a\u0010¨\u0001\u001a\u00030£\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010¥\u0001R\u0018\u0010¬\u0001\u001a\u00030©\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001¨\u0006®\u0001"}, d2 = {"Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/transsion/ad/strategy/r$a;", "Loi/b;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "Lcom/transsion/player/orplayer/g;", "s0", "()Lcom/transsion/player/orplayer/g;", "", "K0", "X", "x0", "A0", "Q0", "", "L0", "()Z", "S0", "P0", "G0", "U0", "F0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onDestroy", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroid/view/View;", "getVisibilityView", "()Landroid/view/View;", "isVisible", "onVisibilityChanged", "(Z)V", "I0", "J0", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "Lao/e;", "mediaSource", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onPrepare", "(Lao/e;)V", "onRenderFirstFrame", "onVideoPause", "onVideoStart", "onCompletion", "", "getSceneId", "()Ljava/lang/String;", "", "h0", "()I", "u0", "O0", "Landroid/widget/FrameLayout;", "o0", "()Landroid/widget/FrameLayout;", "w0", "i", "H0", "(I)V", "z0", "e0", "p0", "q0", "j0", "Landroidx/appcompat/widget/AppCompatImageView;", "imageView", "width", "height", "B0", "(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V", "m0", "r0", "E0", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "W0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "t0", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "a0", "(Landroid/view/View;)V", "Landroid/widget/ImageView$ScaleType;", "l0", "()Landroid/widget/ImageView$ScaleType;", "Lcom/transsion/player/enum/ScaleMode;", "v0", "()Lcom/transsion/player/enum/ScaleMode;", "d0", "V0", "M0", "isShow", "N0", "k0", "i0", "Lcom/transsion/ad/monopoly/model/AdPlans;", "g0", "()Lcom/transsion/ad/monopoly/model/AdPlans;", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "f0", "()Lcom/transsion/ad/monopoly/model/AdMaterialList;", "Y", "c0", "W", "Z", "errorMsg", "C0", "(Ljava/lang/String;)V", "a", "Lcom/transsion/ad/monopoly/model/AdPlans;", "mAdPlan", "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "n0", "()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;", "setMaxEcpmObject", "(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V", "maxEcpmObject", "c", "Lcom/transsion/ad/monopoly/model/AdMaterialList;", "mAdMaterialList", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "mAppLayoutId", "e", "Ljava/lang/String;", "mSceneId", "", "f", "J", "displayTimestamp", "Ljava/util/concurrent/atomic/AtomicBoolean;", "g", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isReportAdDisplay", "h", "y0", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "setAdMaterialShow", "(Ljava/util/concurrent/atomic/AtomicBoolean;)V", "isAdMaterialShow", "mIsMute", "Landroid/os/Handler;", "j", "Landroid/os/Handler;", "mHandler", CampaignEx.JSON_KEY_AD_K, "countDownTimes", "l", "Lcom/transsion/player/orplayer/g;", "mOrPlayer", "m", "isInScreen", "", "n", "F", "touchStartX", "o", "touchStartY", "Ljava/lang/Runnable;", TtmlNode.TAG_P, "Ljava/lang/Runnable;", "countdownRunnable", CampaignEx.JSON_KEY_AD_Q, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class AbsBiddingActivity extends AppCompatActivity implements com.transsion.ad.strategy.r.a, oi.b, com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private AdPlans mAdPlan;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private BiddingIntermediateMaterialBean maxEcpmObject;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private AdMaterialList mAdMaterialList;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int mAppLayoutId;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mSceneId;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private long displayTimestamp;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int countDownTimes;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private com.transsion.player.orplayer.g mOrPlayer;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isInScreen;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private float touchStartX;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private float touchStartY;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean isReportAdDisplay = new AtomicBoolean(false);

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean isAdMaterialShow = new AtomicBoolean(false);

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean mIsMute = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final Runnable countdownRunnable = new Runnable() { // from class: com.transsion.ad.bidding.base.l
        @Override // java.lang.Runnable
        public final void run() {
            AbsBiddingActivity.b0(this.f41878a);
        }
    };

    public static final class b extends androidx.activity.u {
        b() {
            super(true);
        }

        @Override // androidx.activity.u
        public void handleOnBackPressed() {
        }
    }

    public static final class c implements RequestListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AppCompatImageView f41833b;

        c(AppCompatImageView appCompatImageView) {
            this.f41833b = appCompatImageView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(AbsBiddingActivity absBiddingActivity, AppCompatImageView appCompatImageView, int i11, int i12) {
            absBiddingActivity.B0(appCompatImageView, Integer.valueOf(i11), Integer.valueOf(i12));
        }

        @Override // com.bumptech.glide.request.RequestListener
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            if (resource instanceof GifDrawable) {
                ((GifDrawable) resource).start();
            }
            AbsBiddingActivity.this.getIsAdMaterialShow().set(true);
            final int intrinsicWidth = resource.getIntrinsicWidth();
            final int intrinsicHeight = resource.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                return false;
            }
            final AppCompatImageView appCompatImageView = this.f41833b;
            final AbsBiddingActivity absBiddingActivity = AbsBiddingActivity.this;
            appCompatImageView.post(new Runnable() { // from class: com.transsion.ad.bidding.base.p
                @Override // java.lang.Runnable
                public final void run() {
                    AbsBiddingActivity.c.c(absBiddingActivity, appCompatImageView, intrinsicWidth, intrinsicHeight);
                }
            });
            return false;
        }

        @Override // com.bumptech.glide.request.RequestListener
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            AbsBiddingActivity.this.C0("图片加载失败 --> " + (glideException != null ? glideException.getMessage() : null));
            return false;
        }
    }

    private final void A0() {
        getOnBackPressedDispatcher().i(this, new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(AbsBiddingActivity absBiddingActivity, String str) {
        Intent intent = absBiddingActivity.getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("show_error") : null;
        if (stringExtra != null) {
            Intent intent2 = new Intent(stringExtra);
            BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = absBiddingActivity.maxEcpmObject;
            if (biddingIntermediateMaterialBean != null) {
                biddingIntermediateMaterialBean.setErrorMsg(str);
            }
            intent2.putExtra("ad_max_ecpm_object", absBiddingActivity.maxEcpmObject);
            r1.a.b(absBiddingActivity).d(intent2);
        }
        absBiddingActivity.d0();
    }

    private final void F0() {
        this.mHandler.removeCallbacksAndMessages(null);
    }

    private final void G0() {
        AdMaterialList mAdMaterialList;
        MbAdVideo video;
        String path;
        AdMaterialList mAdMaterialList2;
        MbAdVideo video2;
        MbAdVideo video3;
        FrameLayout frameLayoutO0 = o0();
        if (frameLayoutO0 == null) {
            C0("视频广告容器为空");
            return;
        }
        TextureView textureView = new TextureView(this);
        com.transsion.player.orplayer.g gVarA = new com.transsion.player.orplayer.g.a(this).b(new bo.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, true, false, false, false, null, 94207, null)).a();
        gVarA.setMute(r0());
        gVarA.setTextureView(textureView);
        gVarA.setLooping(m0());
        gVarA.setPlayerListener(this);
        this.mOrPlayer = gVarA;
        AdMaterialList mAdMaterialList3 = getMAdMaterialList();
        String str = (!TextUtils.isEmpty((mAdMaterialList3 == null || (video3 = mAdMaterialList3.getVideo()) == null) ? null : video3.getPath()) ? !((mAdMaterialList = getMAdMaterialList()) == null || (video = mAdMaterialList.getVideo()) == null || (path = video.getPath()) == null) : !((mAdMaterialList2 = getMAdMaterialList()) == null || (video2 = mAdMaterialList2.getVideo()) == null || (path = video2.getUrl()) == null)) ? "" : path;
        com.transsion.player.orplayer.g gVar = this.mOrPlayer;
        if (gVar != null) {
            gVar.setScaleMode(v0());
        }
        com.transsion.player.orplayer.g gVar2 = this.mOrPlayer;
        if (gVar2 != null) {
            gVar2.setDataSource(new ao.e(str, str, 0, null, null, 28, null));
        }
        com.transsion.player.orplayer.g gVar3 = this.mOrPlayer;
        if (gVar3 != null) {
            gVar3.prepare();
        }
        oi.b.a.c(this, 0, "mOrPlayer?.prepare()", "zxb_video", false, 9, null);
        frameLayoutO0.addView(textureView, new ViewGroup.LayoutParams(-1, -1));
    }

    private final void K0() {
        Intent intent;
        String stringExtra;
        if (this.displayTimestamp <= 0 || (intent = getIntent()) == null || (stringExtra = intent.getStringExtra("action_display_timestamp")) == null) {
            return;
        }
        Intent intent2 = new Intent(stringExtra);
        intent2.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        intent2.putExtra("display_timestamp", SystemClock.elapsedRealtime() - this.displayTimestamp);
        r1.a.b(this).d(intent2);
        this.displayTimestamp = 0L;
    }

    private final boolean L0() {
        this.mIsMute = !this.mIsMute;
        com.transsion.player.orplayer.g mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.setMute(this.mIsMute);
        }
        return this.mIsMute;
    }

    private final void P0() {
        MbAdImage image;
        FrameLayout frameLayoutO0 = o0();
        if (frameLayoutO0 == null) {
            C0("图片广告容器为空");
            return;
        }
        AppCompatImageView appCompatImageView = new AppCompatImageView(this);
        appCompatImageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        appCompatImageView.setScaleType(l0());
        AdMaterialList mAdMaterialList = getMAdMaterialList();
        if (mAdMaterialList == null || (image = mAdMaterialList.getImage()) == null) {
            C0("图片广告素材为空");
        } else {
            String path = image.getPath();
            Object url = image.getUrl();
            if (path != null) {
                if (!new File(path).exists()) {
                    path = null;
                }
                if (path != null) {
                    url = new File(path);
                }
            }
            Glide.with((FragmentActivity) this).load2(url).listener(new c(appCompatImageView)).into(appCompatImageView);
            if (image.getWidth() == null || image.getHeight() == null) {
                B0(appCompatImageView, Integer.valueOf(y.e()), Integer.valueOf(y.c()));
            } else {
                B0(appCompatImageView, image.getWidth(), image.getHeight());
            }
        }
        frameLayoutO0.removeAllViews();
        frameLayoutO0.addView(appCompatImageView);
    }

    private final void Q0() {
        AdMaterialList mAdMaterialList = getMAdMaterialList();
        if (Intrinsics.c(mAdMaterialList != null ? mAdMaterialList.getType() : null, AdMaterialList.NON_AD_TYPE_TEXT)) {
            P0();
        } else {
            G0();
        }
        FrameLayout frameLayoutO0 = o0();
        if (frameLayoutO0 != null) {
            frameLayoutO0.setOnClickListener(new ti.g(0L, new Function1() { // from class: com.transsion.ad.bidding.base.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AbsBiddingActivity.R0(this.f41879a, (View) obj);
                }
            }, 1, null));
        }
        S0();
        View viewE0 = e0();
        if (viewE0 != null) {
            com.transsion.ad.strategy.i.f42235a.a(viewE0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(AbsBiddingActivity absBiddingActivity, View it) {
        Intrinsics.h(it, "it");
        absBiddingActivity.W();
        return Unit.f67061a;
    }

    private final void S0() {
        int i11;
        FrameLayout frameLayoutW0 = w0();
        if (frameLayoutW0 != null) {
            AdMaterialList mAdMaterialList = getMAdMaterialList();
            if (Intrinsics.c(mAdMaterialList != null ? mAdMaterialList.getType() : null, AdMaterialList.NON_AD_TYPE_TEXT)) {
                i11 = 8;
            } else {
                final AppCompatImageView appCompatImageView = new AppCompatImageView(this);
                appCompatImageView.setImageResource(R$mipmap.ad_volumeoff);
                frameLayoutW0.removeAllViews();
                frameLayoutW0.addView(appCompatImageView, -1, -1);
                frameLayoutW0.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.base.o
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        AbsBiddingActivity.T0(this.f41882a, appCompatImageView, view);
                    }
                });
                i11 = 0;
            }
            frameLayoutW0.setVisibility(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(AbsBiddingActivity absBiddingActivity, AppCompatImageView appCompatImageView, View view) {
        if (absBiddingActivity.L0()) {
            appCompatImageView.setImageResource(R$mipmap.ad_volumeoff);
        } else {
            appCompatImageView.setImageResource(R$mipmap.ad_volumeon);
        }
    }

    private final void U0() {
        F0();
        if (this.countDownTimes >= 0) {
            this.mHandler.postDelayed(this.countdownRunnable, 1000L);
        }
    }

    private final void X() {
        String stringExtra;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("action_close")) == null) {
            return;
        }
        Intent intent2 = new Intent(stringExtra);
        intent2.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b0(AbsBiddingActivity absBiddingActivity) {
        absBiddingActivity.H0(absBiddingActivity.countDownTimes);
        oi.b.a.c(absBiddingActivity, 3, "countdownRunnable() --> times = " + absBiddingActivity.j0() + " --> i = " + absBiddingActivity.countDownTimes, null, false, 4, null);
        if (absBiddingActivity.countDownTimes == 0) {
            absBiddingActivity.z0();
        }
        absBiddingActivity.countDownTimes--;
        absBiddingActivity.U0();
    }

    /* JADX INFO: renamed from: s0, reason: from getter */
    private final com.transsion.player.orplayer.g getMOrPlayer() {
        return this.mOrPlayer;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00a7  */
    private final void x0() {
        Object objM454constructorimpl;
        BiddingIntermediateMaterialBean biddingIntermediateMaterialBean;
        List<AdMaterialList> adMaterialList;
        List<AdMaterialList> adMaterialList2;
        Unit unit;
        Set<String> setKeySet;
        try {
            Result.Companion companion = Result.INSTANCE;
            Intent intent = getIntent();
            AdMaterialList adMaterialList3 = null;
            this.mSceneId = intent != null ? intent.getStringExtra("scene_id") : null;
            Intent intent2 = getIntent();
            this.mAppLayoutId = intent2 != null ? intent2.getIntExtra("app_layout_id", 0) : 0;
            try {
                Intent intent3 = getIntent();
                Bundle extras = intent3 != null ? intent3.getExtras() : null;
                if (extras == null || (setKeySet = extras.keySet()) == null) {
                    unit = null;
                } else {
                    for (String str : setKeySet) {
                        Object obj = extras.get(str);
                        onLog(6, "处理 FM Parcelable 异常 --> Bundle key = " + str + ", valueClass = " + (obj != null ? obj.getClass().getName() : null), "parcelable", false);
                    }
                    unit = Unit.f67061a;
                }
                Result.m454constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                Intent intent4 = getIntent();
                if (intent4 != null) {
                    biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) intent4.getParcelableExtra("ad_max_ecpm_object", BiddingIntermediateMaterialBean.class);
                } else {
                    biddingIntermediateMaterialBean = null;
                }
            } else {
                Intent intent5 = getIntent();
                if (intent5 != null) {
                    biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) intent5.getParcelableExtra("ad_max_ecpm_object");
                } else {
                    biddingIntermediateMaterialBean = null;
                }
            }
            this.maxEcpmObject = biddingIntermediateMaterialBean;
            AdPlans plans = biddingIntermediateMaterialBean != null ? biddingIntermediateMaterialBean.getPlans() : null;
            this.mAdPlan = plans;
            if (plans != null && (adMaterialList = plans.getAdMaterialList()) != null && (!adMaterialList.isEmpty())) {
                AdPlans adPlans = this.mAdPlan;
                if (adPlans != null && (adMaterialList2 = adPlans.getAdMaterialList()) != null) {
                    adMaterialList3 = (AdMaterialList) CollectionsKt.k0(adMaterialList2);
                }
                this.mAdMaterialList = adMaterialList3;
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th3));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        oi.b.a.c(this, 6, "initExtData() --> it = " + thM457exceptionOrNullimpl.getMessage(), null, false, 12, null);
    }

    public void B0(AppCompatImageView imageView, Integer width, Integer height) {
    }

    public final void C0(final String errorMsg) {
        FrameLayout frameLayoutO0 = o0();
        if (frameLayoutO0 != null) {
            frameLayoutO0.post(new Runnable() { // from class: com.transsion.ad.bidding.base.n
                @Override // java.lang.Runnable
                public final void run() {
                    AbsBiddingActivity.D0(this.f41880a, errorMsg);
                }
            });
        }
    }

    public void E0() {
        if (com.transsion.ad.scene.a.f42201a.v(getMSceneId())) {
            W();
        }
    }

    public abstract void H0(int i11);

    public final void I0() {
        if (this.displayTimestamp == 0) {
            this.displayTimestamp = SystemClock.elapsedRealtime();
            U0();
        }
    }

    public final void J0() {
        if (this.isReportAdDisplay.get() || !this.isAdMaterialShow.get()) {
            return;
        }
        this.isReportAdDisplay.set(true);
        c0();
    }

    public void M0() {
        if (Build.VERSION.SDK_INT != 26) {
            setRequestedOrientation(1);
        }
    }

    public final void N0(boolean isShow) {
        if (isShow) {
            com.transsion.player.orplayer.g mOrPlayer = getMOrPlayer();
            if (mOrPlayer != null) {
                mOrPlayer.pause();
            }
            F0();
            return;
        }
        com.transsion.player.orplayer.g mOrPlayer2 = getMOrPlayer();
        if (mOrPlayer2 != null) {
            mOrPlayer2.play();
        }
        U0();
    }

    public abstract void O0();

    public final void V0() {
        hi.a aVarE;
        MBAd.a aVarC = MBAd.f41751a.c();
        if (aVarC == null || (aVarE = aVarC.e()) == null) {
            return;
        }
        aVarE.c(getMSceneId());
    }

    public final void W() {
        String stringExtra;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("action_click")) == null) {
            return;
        }
        Intent intent2 = new Intent(stringExtra);
        intent2.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent2);
    }

    public void W0(ImmersionBar with) {
        Intrinsics.h(with, "with");
    }

    public final void Y() {
        String stringExtra;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("action_resume")) == null) {
            return;
        }
        Intent intent2 = new Intent(stringExtra);
        intent2.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent2);
    }

    public final void Z() {
        String stringExtra;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("action_rewarded")) == null) {
            return;
        }
        Intent intent2 = new Intent(stringExtra);
        intent2.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent2);
    }

    protected final void a0(View view) {
        Intrinsics.h(view, "view");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        int i11 = bVar != null ? ((ViewGroup.MarginLayoutParams) bVar).topMargin : 0;
        int statusBarHeight = ImmersionBar.getStatusBarHeight((Activity) this);
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        if (layoutParams2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
        ((ViewGroup.MarginLayoutParams) bVar2).topMargin = statusBarHeight + i11;
        view.setLayoutParams(bVar2);
    }

    public final void c0() {
        String stringExtra;
        Intent intent = getIntent();
        if (intent == null || (stringExtra = intent.getStringExtra("action_display")) == null) {
            return;
        }
        Intent intent2 = new Intent(stringExtra);
        intent2.putExtra("ad_max_ecpm_object", this.maxEcpmObject);
        r1.a.b(this).d(intent2);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final void d0() {
        v vVar = v.f41893a;
        if (vVar.a(h0())) {
            vVar.c();
        }
        finish();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev2) {
        Intrinsics.h(ev2, "ev");
        int actionMasked = ev2.getActionMasked();
        if (actionMasked == 0) {
            this.touchStartX = ev2.getX();
            this.touchStartY = ev2.getY();
        } else if (actionMasked == 1) {
            float x10 = ev2.getX() - this.touchStartX;
            float y10 = ev2.getY() - this.touchStartY;
            if ((x10 * x10) + (y10 * y10) > 10000.0f) {
                E0();
                return true;
            }
        }
        return super.dispatchTouchEvent(ev2);
    }

    public abstract View e0();

    /* JADX INFO: renamed from: f0, reason: from getter */
    public final AdMaterialList getMAdMaterialList() {
        return this.mAdMaterialList;
    }

    /* JADX INFO: renamed from: g0, reason: from getter */
    public final AdPlans getMAdPlan() {
        return this.mAdPlan;
    }

    @Override // oi.b
    public String getClassTag() {
        return oi.b.a.a(this);
    }

    @Override // oi.b
    /* JADX INFO: renamed from: getSceneId */
    public String getMSceneId() {
        String str = this.mSceneId;
        return str == null ? "" : str;
    }

    @Override // com.transsion.ad.strategy.r.a
    public double getVisibilityThreshold() {
        return com.transsion.ad.strategy.r.a.C0599a.a(this);
    }

    @Override // com.transsion.ad.strategy.r.a
    public View getVisibilityView() {
        return o0();
    }

    public abstract int h0();

    /* JADX INFO: renamed from: i0, reason: from getter */
    public final int getMAppLayoutId() {
        return this.mAppLayoutId;
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    public int j0() {
        Integer numU;
        int iH;
        int iH0 = h0();
        if (iH0 != 3) {
            numU = iH0 != 4 ? null : com.transsion.ad.scene.a.f42201a.j(getMSceneId());
        } else {
            numU = com.transsion.ad.scene.a.f42201a.u(getMSceneId());
        }
        if (numU == null) {
            int iH1 = h0();
            if (iH1 != 3) {
                iH = iH1 != 4 ? 0 : com.transsion.ad.scene.b.f42202a.c();
            } else {
                iH = com.transsion.ad.scene.b.f42202a.h();
            }
            numU = Integer.valueOf(iH);
        }
        return numU.intValue();
    }

    public final int k0() {
        return com.transsion.ad.scene.a.f42201a.e(getMSceneId());
    }

    public ImageView.ScaleType l0() {
        return ImageView.ScaleType.FIT_CENTER;
    }

    public boolean m0() {
        return true;
    }

    /* JADX INFO: renamed from: n0, reason: from getter */
    protected final BiddingIntermediateMaterialBean getMaxEcpmObject() {
        return this.maxEcpmObject;
    }

    public abstract FrameLayout o0();

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.e(this, mediaSource);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        M0();
        super.onCreate(savedInstanceState);
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        immersionBarWith.statusBarAlpha(0.0f);
        Intrinsics.e(immersionBarWith);
        W0(immersionBarWith);
        immersionBarWith.init();
        setContentView(u0());
        View viewT0 = t0();
        if (viewT0 != null) {
            a0(viewT0);
        }
        getWindow().setLayout(-1, -1);
        setFinishOnTouchOutside(false);
        x0();
        if (getMAdPlan() == null || TextUtils.isEmpty(getMSceneId())) {
            C0("onCreate() --> 开始展示广告 --> getAdPlan() == null || getSceneId() is empty");
            return;
        }
        oi.b.a.c(this, 3, "onCreate() --> 开始展示广告", null, false, 4, null);
        this.countDownTimes = j0();
        com.transsion.ad.strategy.r.f42240a.g(this);
        O0();
        Q0();
        A0();
        Intent intent = getIntent();
        Boolean boolValueOf = intent != null ? Boolean.valueOf(intent.getBooleanExtra("is_show_member_btn", true)) : null;
        if (boolValueOf == null || !(!boolValueOf.booleanValue())) {
            return;
        }
        View viewP0 = p0();
        if (viewP0 != null) {
            viewP0.setVisibility(8);
        }
        View viewQ0 = q0();
        if (viewQ0 != null) {
            viewQ0.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
        com.transsion.ad.strategy.r.f42240a.n(this);
        com.transsion.player.orplayer.g mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.release();
        }
        K0();
        X();
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

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        oi.b.a.b(this, i11, str, str2, z10);
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
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, mediaSource);
        C0(errorInfo.getErrorMessage());
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
    public void onPrepare(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.w(this, mediaSource);
        com.transsion.player.orplayer.g mOrPlayer = getMOrPlayer();
        if (mOrPlayer != null) {
            mOrPlayer.play();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.y(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
        this.isAdMaterialShow.set(true);
        oi.b.a.c(this, 0, "onRenderFirstFrame", "zxb_video", false, 9, null);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (com.transsion.ad.scene.c.f42203a.g(this.mSceneId)) {
            oi.b.a.c(this, 0, "onResume() --> 重新进入页面的时候需要校验一下，isVipSkipAd == true", null, false, 13, null);
            d0();
        }
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
    public void onVideoPause(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.F(this, mediaSource);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
    }

    @Override // com.transsion.ad.strategy.r.a
    public void onVisibilityChanged(boolean isVisible) {
        com.transsion.player.orplayer.g mOrPlayer;
        if (!this.isInScreen && isVisible) {
            Y();
        }
        this.isInScreen = isVisible;
        if (!isVisible) {
            com.transsion.player.orplayer.g mOrPlayer2 = getMOrPlayer();
            if (mOrPlayer2 != null) {
                mOrPlayer2.pause();
            }
            K0();
            F0();
            return;
        }
        I0();
        com.transsion.player.orplayer.g mOrPlayer3 = getMOrPlayer();
        if (mOrPlayer3 != null && !mOrPlayer3.isPlaying() && (mOrPlayer = getMOrPlayer()) != null) {
            mOrPlayer.play();
        }
        J0();
    }

    public abstract View p0();

    public abstract View q0();

    public boolean r0() {
        return true;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    protected View t0() {
        return null;
    }

    public abstract View u0();

    public ScaleMode v0() {
        return ScaleMode.SCALE_ASPECT_FIT;
    }

    public abstract FrameLayout w0();

    /* JADX INFO: renamed from: y0, reason: from getter */
    protected final AtomicBoolean getIsAdMaterialShow() {
        return this.isAdMaterialShow;
    }

    public abstract void z0();
}
