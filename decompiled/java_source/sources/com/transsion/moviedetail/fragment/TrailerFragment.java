package com.transsion.moviedetail.fragment;

import android.graphics.drawable.BitmapDrawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.orplayer.PlayError;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$string;
import com.transsion.room.api.IAudioApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u0083\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001IB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u0006J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J!\u0010)\u001a\u00020\u00072\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0007H\u0016¢\u0006\u0004\b+\u0010\u0006J\u0019\u0010.\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b0\u0010/J\u0019\u00101\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b1\u0010/J\u0019\u00102\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b2\u0010/J!\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001a2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b4\u00105J\u0019\u00106\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b6\u0010/J\u000f\u00107\u001a\u00020\u0007H\u0016¢\u0006\u0004\b7\u0010\u0006J!\u00108\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001a2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b8\u00105J\u000f\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\b9\u0010\u0006J\u000f\u0010:\u001a\u00020\u0007H\u0016¢\u0006\u0004\b:\u0010\u0006J\u000f\u0010;\u001a\u00020\u0007H\u0016¢\u0006\u0004\b;\u0010\u0006J!\u0010>\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u0007H\u0016¢\u0006\u0004\b@\u0010\u0006J\u001f\u0010E\u001a\u00020\u00072\u0006\u0010B\u001a\u00020A2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0007H\u0016¢\u0006\u0004\bG\u0010\u0006R\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010N\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010U\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010W\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010QR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0014\u0010]\u001a\u00020Z8\u0002X\u0082D¢\u0006\u0006\n\u0004\b[\u0010\\R\u001d\u0010c\u001a\u0004\u0018\u00010^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010`\u001a\u0004\bf\u0010gR\u001b\u0010m\u001a\u00020i8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bj\u0010`\u001a\u0004\bk\u0010lR\u0016\u0010o\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010MR\u0016\u0010q\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010MR\u001c\u0010u\u001a\b\u0012\u0004\u0012\u00020Z0r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0016\u0010w\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010TR\u0014\u0010{\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0016\u0010\u0082\u0001\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010z¨\u0006\u0084\u0001"}, d2 = {"Lcom/transsion/moviedetail/fragment/TrailerFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lcn/u;", "Lcom/transsion/player/orplayer/f;", "Lnh/n;", "<init>", "()V", "", "z0", "x0", "y0", "r0", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "B0", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "D0", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "t0", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "F0", "(I)V", "A0", "", "delay", "G0", "(J)V", "I0", "n0", "C0", "Landroid/view/LayoutInflater;", "inflater", "q0", "(Landroid/view/LayoutInflater;)Lcn/u;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Lao/e;", "mediaSource", "onCompletion", "(Lao/e;)V", "onVideoStart", "onVideoPause", "onLoadingBegin", NotificationCompat.CATEGORY_PROGRESS, "onBufferedPosition", "(JLao/e;)V", "onLoadingEnd", "onRenderFirstFrame", "onProgress", "onPause", "onResume", "onDestroy", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", TmcConstants.NAVIGATION_ON_START, "Lcom/transsion/moviedetailapi/bean/PreVideoAddress;", "a", "Lcom/transsion/moviedetailapi/bean/PreVideoAddress;", "videoAddress", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "J", "duration", "", "c", "Z", "formUserSeek", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "playState", "e", "isShowFirstFrame", "f", "Lcom/transsion/moviedetailapi/bean/Trailer;", "", "g", "Ljava/lang/String;", "TAG", "Lcom/transsion/room/api/IAudioApi;", "h", "Lkotlin/Lazy;", "getMAudioApi", "()Lcom/transsion/room/api/IAudioApi;", "mAudioApi", "Landroid/os/Handler;", "i", "o0", "()Landroid/os/Handler;", "loadingHandler", "Lcom/transsion/player/orplayer/g;", "j", "p0", "()Lcom/transsion/player/orplayer/g;", "mOrPlayer", CampaignEx.JSON_KEY_AD_K, "bufferPosition", "l", "currentPosition", "", "m", "[Ljava/lang/String;", "loadingDot", "n", "loadingDotIndex", "Ljava/lang/Runnable;", "o", "Ljava/lang/Runnable;", "loadingRunnable", TtmlNode.TAG_P, "Lcom/transsion/player/orplayer/PlayError;", CampaignEx.JSON_KEY_AD_Q, "Landroid/view/View;", "errorLayout", CampaignEx.JSON_KEY_AD_R, "showErrorRunnable", "s", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrailerFragment extends BaseFragment<cn.u> implements com.transsion.player.orplayer.f, nh.n {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private PreVideoAddress videoAddress;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private long duration;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean formUserSeek;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int playState;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean isShowFirstFrame;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private Trailer trailer;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private long bufferPosition;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private long currentPosition;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int loadingDotIndex;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private PlayError errorInfo;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private View errorLayout;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "TrailerFragment";

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private final Lazy mAudioApi = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.y2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TrailerFragment.mAudioApi_delegate$lambda$0();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final Lazy loadingHandler = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.z2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TrailerFragment.u0();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy mOrPlayer = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.fragment.a3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return TrailerFragment.w0(this.f47147a);
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private String[] loadingDot = {".", "..", "..."};

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final Runnable loadingRunnable = new Runnable() { // from class: com.transsion.moviedetail.fragment.b3
        @Override // java.lang.Runnable
        public final void run() {
            TrailerFragment.v0(this.f47152a);
        }
    };

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Runnable showErrorRunnable = new Runnable() { // from class: com.transsion.moviedetail.fragment.c3
        @Override // java.lang.Runnable
        public final void run() {
            TrailerFragment.H0(this.f47157a);
        }
    };

    public static final class b implements com.tn.lib.view.v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f47133a;

        b() {
        }

        @Override // com.tn.lib.view.v
        public void a(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            TrailerFragment.this.formUserSeek = false;
            TrailerFragment.this.p0().seekTo((this.f47133a * TrailerFragment.this.duration) / ((long) 100));
            if (TrailerFragment.this.p0().isPlaying()) {
                return;
            }
            TrailerFragment.this.p0().play();
        }

        @Override // com.tn.lib.view.v
        public void b(SecondariesSeekBar seekBar, long j11, boolean z10) {
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                this.f47133a = j11;
            }
        }

        @Override // com.tn.lib.view.v
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            TrailerFragment.this.formUserSeek = true;
        }
    }

    public static final class c implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f47135a;

        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TrailerFragment.this.playState != 10) {
                TrailerFragment.this.z0();
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j11 = this.f47135a;
            if (j11 == 0 || jCurrentTimeMillis - j11 > 500) {
                this.f47135a = jCurrentTimeMillis;
            } else {
                this.f47135a = 0L;
                TrailerFragment.this.x0();
            }
        }
    }

    private final void A0() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "video error，reload~~", false, 4, null);
        this.bufferPosition = 0L;
        p0().stop();
        p0().reset();
        p0().prepare();
        p0().seekTo(this.currentPosition);
        I0();
    }

    private final void B0(Trailer trailer) {
        String url;
        TextView textView;
        Integer duration;
        SecondariesSeekBar secondariesSeekBar;
        D0(trailer.getCover());
        this.videoAddress = trailer.getVideoAddress();
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (secondariesSeekBar = mViewBinding.f17510l) != null) {
            secondariesSeekBar.setMax(100L);
        }
        PreVideoAddress preVideoAddress = this.videoAddress;
        long jIntValue = (preVideoAddress == null || (duration = preVideoAddress.getDuration()) == null) ? 0L : duration.intValue() * 1000;
        this.duration = jIntValue;
        if (jIntValue > 0) {
            String str = "00:00/" + com.transsion.postdetail.util.n.d(jIntValue);
            cn.u mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (textView = mViewBinding2.f17511m) != null) {
                textView.setText(str);
            }
        }
        PreVideoAddress preVideoAddress2 = this.videoAddress;
        if (preVideoAddress2 == null || (url = preVideoAddress2.getUrl()) == null) {
            return;
        }
        p0().setDataSource(new ao.e(url, url, 0, null, null, 28, null));
    }

    private final void C0() {
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (shapeableImageView2 = mViewBinding.f17503e) != null) {
            jg.c.k(shapeableImageView2);
        }
        cn.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (shapeableImageView = mViewBinding2.f17502d) == null) {
            return;
        }
        jg.c.k(shapeableImageView);
    }

    private final void D0(Cover cover) {
        final cn.u mViewBinding;
        if (cover == null || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        int iF = com.transsion.core.utils.e.f();
        ej.f.a aVar = ej.f.f61882a;
        String url = cover.getUrl();
        if (url == null) {
            url = "";
        }
        String strE = ej.f.a.e(aVar, url, iF, false, false, 12, null);
        String thumbnail = cover.getThumbnail();
        com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f42991a, thumbnail == null ? "" : thumbnail, 0, 0, new Function1() { // from class: com.transsion.moviedetail.fragment.e3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TrailerFragment.E0(mViewBinding, (BitmapDrawable) obj);
            }
        }, 6, null);
        Glide.with(requireContext()).load2(strE).into(mViewBinding.f17503e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(cn.u uVar, BitmapDrawable it) {
        Intrinsics.h(it, "it");
        uVar.f17502d.setImageDrawable(it);
        return Unit.f67061a;
    }

    private final void F0(int type) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        Group group;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        ViewStub viewStub;
        if (this.errorLayout == null) {
            cn.u mViewBinding = getMViewBinding();
            this.errorLayout = (mViewBinding == null || (viewStub = mViewBinding.f17512n) == null) ? null : viewStub.inflate();
        }
        if (type == 1) {
            Intrinsics.g(Utils.a().getString(R$string.downloading_play_timeout), "getString(...)");
            Intrinsics.g(Utils.a().getString(R$string.downloading_play_timeout_reload), "getString(...)");
            this.playState = -1;
        } else {
            Intrinsics.g(Utils.a().getString(R$string.downloading_play_load_failed), "getString(...)");
            Intrinsics.g(Utils.a().getString(R$string.turn_on_network), "getString(...)");
            this.playState = 22;
        }
        p0().pause();
        cn.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (shapeableImageView2 = mViewBinding2.f17502d) != null) {
            jg.c.k(shapeableImageView2);
        }
        cn.u mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (shapeableImageView = mViewBinding3.f17503e) != null) {
            jg.c.g(shapeableImageView);
        }
        cn.u mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (group = mViewBinding4.f17500b) != null) {
            jg.c.g(group);
        }
        View view = this.errorLayout;
        if (view != null) {
            jg.c.k(view);
        }
        View view2 = this.errorLayout;
        if (view2 != null) {
            view2.setTag(Integer.valueOf(type));
        }
        cn.u mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatImageView2 = mViewBinding5.f17509k) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        cn.u mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatImageView = mViewBinding6.f17509k) == null) {
            return;
        }
        appCompatImageView.setKeepScreenOn(false);
    }

    private final void G0(long delay) {
        o0().removeCallbacks(this.showErrorRunnable);
        o0().postDelayed(this.showErrorRunnable, delay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(TrailerFragment trailerFragment) {
        trailerFragment.F0(0);
    }

    private final void I0() {
        AppCompatImageView appCompatImageView;
        Group group;
        AppCompatImageView appCompatImageView2;
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.pause();
        }
        this.playState = 10;
        this.errorInfo = null;
        p0().play();
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f17504f) != null) {
            jg.c.g(appCompatImageView2);
        }
        cn.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (group = mViewBinding2.f17501c) != null) {
            jg.c.k(group);
        }
        cn.u mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f17509k) != null) {
            appCompatImageView.setImageResource(R$drawable.post_icon_pause);
        }
        o0().removeCallbacks(this.showErrorRunnable);
        Trailer trailer = this.trailer;
        if (trailer == null || trailer.getSubjectType() != SubjectType.MUSIC.getValue()) {
            n0();
        } else {
            C0();
        }
    }

    private final IAudioApi getMAudioApi() {
        return (IAudioApi) this.mAudioApi.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi mAudioApi_delegate$lambda$0() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    private final void n0() {
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        if (this.isShowFirstFrame) {
            Trailer trailer = this.trailer;
            if (trailer == null || trailer.getSubjectType() != SubjectType.MUSIC.getValue()) {
                cn.u mViewBinding = getMViewBinding();
                if (mViewBinding != null && (shapeableImageView2 = mViewBinding.f17503e) != null) {
                    jg.c.g(shapeableImageView2);
                }
                cn.u mViewBinding2 = getMViewBinding();
                if (mViewBinding2 == null || (shapeableImageView = mViewBinding2.f17502d) == null) {
                    return;
                }
                jg.c.g(shapeableImageView);
            }
        }
    }

    private final Handler o0() {
        return (Handler) this.loadingHandler.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final com.transsion.player.orplayer.g p0() {
        return (com.transsion.player.orplayer.g) this.mOrPlayer.getValue();
    }

    private final void r0() {
        SecondariesSeekBar secondariesSeekBar;
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f17510l) == null) {
            return;
        }
        secondariesSeekBar.setOnSeekBarChangeListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s0(TrailerFragment trailerFragment, View view) {
        trailerFragment.z0();
    }

    private final void t0() {
        o0().postDelayed(this.loadingRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler u0() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(TrailerFragment trailerFragment) {
        TextView textView;
        int i11 = trailerFragment.loadingDotIndex;
        if (i11 >= 2) {
            trailerFragment.loadingDotIndex = 0;
        } else {
            trailerFragment.loadingDotIndex = i11 + 1;
        }
        cn.u mViewBinding = trailerFragment.getMViewBinding();
        if (mViewBinding != null && (textView = mViewBinding.f17507i) != null) {
            textView.setText(Utils.a().getString(R$string.play_loading) + trailerFragment.loadingDot[trailerFragment.loadingDotIndex]);
        }
        trailerFragment.t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.player.orplayer.g w0(TrailerFragment trailerFragment) {
        com.transsion.player.orplayer.g gVarS = ko.l0.f66968a.s();
        gVarS.setPlayerConfig(new bo.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 126975, null));
        cn.u mViewBinding = trailerFragment.getMViewBinding();
        gVarS.setTextureView(mViewBinding != null ? mViewBinding.f17506h : null);
        gVarS.setLooping(false);
        gVarS.setPlayerListener(trailerFragment);
        return gVarS;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0() {
        this.playState = 20;
        p0().pause();
    }

    private final void y0() {
        this.playState = 10;
        I0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0() {
        cn.u mViewBinding;
        Group group;
        cn.u mViewBinding2;
        Group group2;
        int i11 = this.playState;
        if (i11 == -1) {
            A0();
            return;
        }
        if (i11 == 0) {
            p0().prepare();
            p0().seekTo(0L);
            y0();
            if (this.playState != 10 || (mViewBinding = getMViewBinding()) == null || (group = mViewBinding.f17500b) == null) {
                return;
            }
            jg.c.k(group);
            return;
        }
        if (i11 == 10) {
            x0();
            return;
        }
        if (i11 == 20 || i11 == 22) {
            y0();
            return;
        }
        if (i11 != 30) {
            return;
        }
        p0().seekTo(0L);
        y0();
        if (this.playState != 10 || (mViewBinding2 = getMViewBinding()) == null || (group2 = mViewBinding2.f17500b) == null) {
            return;
        }
        jg.c.k(group2);
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.transsion.moviedetail.fragment.d3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    TrailerFragment.s0(this.f47161a, view2);
                }
            };
            mViewBinding.f17504f.setOnClickListener(onClickListener);
            mViewBinding.f17509k.setOnClickListener(onClickListener);
            mViewBinding.f17508j.setOnClickListener(new c());
        }
        r0();
        nh.m.f70474a.l(this);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        Bundle arguments = getArguments();
        Trailer trailer = null;
        Trailer trailer2 = (Trailer) (arguments != null ? arguments.getSerializable("trailer") : null);
        if (trailer2 != null) {
            B0(trailer2);
            if (NetworkType.NETWORK_WIFI == nh.m.f70474a.d() && trailer2.getSubjectType() < SubjectType.AUDIO.getValue()) {
                z0();
            }
            trailer = trailer2;
        }
        this.trailer = trailer;
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(ao.e eVar) {
        com.transsion.player.orplayer.f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long progress, ao.e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        com.transsion.player.orplayer.f.a.d(this, progress, mediaSource);
        if (this.bufferPosition < progress) {
            this.bufferPosition = progress;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(0, Integer.valueOf((int) ((progress * ((long) 100)) / this.duration)));
            cn.u mViewBinding = getMViewBinding();
            if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f17510l) == null) {
                return;
            }
            secondariesSeekBar.setSecondariesProgress(linkedHashMap);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.e(this, mediaSource);
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            this.currentPosition = 0L;
            this.playState = 30;
            AppCompatImageView ivPlay = mViewBinding.f17504f;
            Intrinsics.g(ivPlay, "ivPlay");
            jg.c.k(ivPlay);
            mViewBinding.f17509k.setImageResource(R$drawable.post_icon_play);
            Group groupProgress = mViewBinding.f17501c;
            Intrinsics.g(groupProgress, "groupProgress");
            jg.c.g(groupProgress);
            ShapeableImageView ivMovieCover = mViewBinding.f17503e;
            Intrinsics.g(ivMovieCover, "ivMovieCover");
            jg.c.k(ivMovieCover);
            ShapeableImageView ivMovieBlurCover = mViewBinding.f17502d;
            Intrinsics.g(ivMovieBlurCover, "ivMovieBlurCover");
            jg.c.k(ivMovieBlurCover);
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onCompletion", false, 4, null);
        }
    }

    @Override // nh.n
    public void onConnected() {
        nh.n.a.a(this);
    }

    @Override // nh.n
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        int i11;
        Integer errorCode;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onConnected~~", false, 4, null);
        View view = this.errorLayout;
        if (view == null || view.getVisibility() != 0 || (i11 = this.playState) == 20 || i11 == 21) {
            return;
        }
        View view2 = this.errorLayout;
        if (!(view2 != null ? Intrinsics.c(view2.getTag(), 1) : false)) {
            PlayError playError = this.errorInfo;
            if (!((playError == null || (errorCode = playError.getErrorCode()) == null || errorCode.intValue() != 537067524) ? false : true)) {
                I0();
                return;
            }
        }
        A0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        o0().removeCallbacks(this.loadingRunnable);
        nh.m.f70474a.m(this);
    }

    @Override // nh.n
    public void onDisconnected() {
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onDisconnected~~", false, 4, null);
        if (this.playState != 10 || p0().isPlaying()) {
            return;
        }
        G0(500L);
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
    public void onLoadingBegin(ao.e mediaSource) {
        Group group;
        com.transsion.player.orplayer.f.a.i(this, mediaSource);
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onLoadingBegin", false, 4, null);
        if (!nh.m.f70474a.e()) {
            G0(1000L);
            return;
        }
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f17500b) != null) {
            jg.c.k(group);
        }
        o0().post(this.loadingRunnable);
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e mediaSource) {
        Group group;
        com.transsion.player.orplayer.f.a.k(this, mediaSource);
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f17500b) != null) {
            jg.c.g(group);
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onLoadingEnd", false, 4, null);
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
        o0().removeCallbacks(this.loadingRunnable);
        o0().removeCallbacks(this.showErrorRunnable);
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

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentActivity activity = getActivity();
        if (activity != null && activity.isFinishing()) {
            p0().release();
        } else if (this.playState == 10) {
            this.playState = 21;
            p0().pause();
        }
        IAudioApi mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.start();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, mediaSource);
        Integer errorCode = errorInfo.getErrorCode();
        if (errorCode != null && errorCode.intValue() == 537067524) {
            if (nh.m.f70474a.e()) {
                F0(1);
            } else {
                G0(500L);
            }
        }
        this.errorInfo = errorInfo;
        lg.a.f68839a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.k() : null) + " --> 预告片播放失败了", true);
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
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, ao.e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        TextView textView;
        com.transsion.player.orplayer.f.a.y(this, progress, mediaSource);
        if (this.formUserSeek) {
            return;
        }
        this.currentPosition = progress;
        if (this.duration <= 0) {
            this.duration = p0().getDuration();
        }
        String str = com.transsion.postdetail.util.n.d(progress) + "/" + com.transsion.postdetail.util.n.d(this.duration);
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (textView = mViewBinding.f17511m) != null) {
            textView.setText(str);
        }
        cn.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (secondariesSeekBar = mViewBinding2.f17510l) == null) {
            return;
        }
        secondariesSeekBar.setProgress((progress * ((long) 100)) / this.duration);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
        this.isShowFirstFrame = true;
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onRenderFirstFrame", false, 4, null);
        n0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        PreVideoAddress preVideoAddress = this.videoAddress;
        if ((preVideoAddress != null ? preVideoAddress.getUrl() : null) != null) {
            if (p0().requestForce()) {
                p0().prepare();
                p0().seekTo(this.currentPosition);
            }
            if (this.playState == 21) {
                this.playState = 10;
                p0().play();
                IAudioApi mAudioApi = getMAudioApi();
                if (mAudioApi != null) {
                    mAudioApi.pause();
                }
            }
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onStart~~", false, 4, null);
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
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        com.transsion.player.orplayer.f.a.F(this, mediaSource);
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f17509k) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        cn.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f17509k) != null) {
            appCompatImageView.setKeepScreenOn(false);
        }
        lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onVideoPause", false, 4, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e mediaSource) {
        com.transsion.player.orplayer.f.a.I(this, mediaSource);
        cn.u mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            Group groupLoading = mViewBinding.f17500b;
            Intrinsics.g(groupLoading, "groupLoading");
            jg.c.g(groupLoading);
            mViewBinding.f17509k.setImageResource(R$drawable.post_icon_pause);
            mViewBinding.f17509k.setKeepScreenOn(true);
            n0();
            lg.a.C0828a.f(lg.a.f68839a, this.TAG, "onVideoStart", false, 4, null);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public cn.u getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        cn.u uVarC = cn.u.c(inflater);
        Intrinsics.g(uVarC, "inflate(...)");
        return uVarC;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }
}
