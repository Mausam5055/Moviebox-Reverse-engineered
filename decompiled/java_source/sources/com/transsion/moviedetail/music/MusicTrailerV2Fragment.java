package com.transsion.moviedetail.music;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.activity.result.a;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import ao.e;
import cn.j;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.view.v;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetail.music.MusicTrailerV2Fragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.util.n;
import com.transsion.push.api.IPushProvider;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f.i;
import java.util.LinkedHashMap;
import ko.l0;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import mo.d;
import nh.m;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 ~2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001MB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u0019\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u0019\u0010\u001e\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001e\u0010\u000eJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u001aH\u0002¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u0006¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0005J\u0017\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0012H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u0010\u0005J\u000f\u00109\u001a\u00020\u0006H\u0016¢\u0006\u0004\b9\u0010\u0005J\u0019\u0010<\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J\u0019\u0010>\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b>\u0010=J!\u0010@\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u001f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b@\u0010AJ\u0019\u0010B\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bB\u0010=J\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0005J!\u0010D\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u001f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bD\u0010AJ\u0019\u0010E\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bE\u0010=J\u0019\u0010F\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bF\u0010=J\u0019\u0010G\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bG\u0010=J!\u0010J\u001a\u00020\u00062\u0006\u0010I\u001a\u00020H2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bJ\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010R\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010U\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010X\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010Z\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010QR\u0016\u0010\\\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010QR\u0018\u0010I\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010b\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u001b\u0010l\u001a\u00020g8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010i\u001a\u0004\bj\u0010kR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\u001c\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00120q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010v\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010WR\u0014\u0010x\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010oR\"\u0010}\u001a\u0010\u0012\f\u0012\n z*\u0004\u0018\u00010\u00120\u00120y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010|¨\u0006\u007f"}, d2 = {"Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lcn/j;", "Lcom/transsion/player/orplayer/f;", "<init>", "()V", "", "Q0", "D0", "K0", "H0", "", "isPlay", "I0", "(Z)V", "Lcom/transsion/player/mediasession/MediaItem;", "y0", "()Lcom/transsion/player/mediasession/MediaItem;", "", "pageName", "Landroid/content/Intent;", "w0", "(Ljava/lang/String;)Landroid/content/Intent;", "Landroid/app/PendingIntent;", "z0", "()Landroid/app/PendingIntent;", "", "A0", "()I", "L0", "S0", "", "delay", "O0", "(J)V", "E0", NativeComponentConstants.KEY_COMPONENT_TYPE, "N0", "(I)V", "v0", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "B0", "(Landroid/view/LayoutInflater;)Lcn/j;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "()Z", "initViewData", "initViewModel", "initListener", "loadDefaultData", "onDestroy", "onResume", "onStop", "retryLoadData", "onDisconnected", "Lao/e;", "mediaSource", "onPrepare", "(Lao/e;)V", "onLoadingBegin", NotificationCompat.CATEGORY_PROGRESS, "onBufferedPosition", "(JLao/e;)V", "onLoadingEnd", "onRenderFirstFrame", "onProgress", "onVideoStart", "onVideoPause", "onCompletion", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V", "Lcom/transsion/moviedetailapi/bean/Trailer;", "a", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "J", "duration", "c", "Z", "formUserSeek", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "playState", "e", "bufferPosition", "f", "currentPosition", "g", "Lcom/transsion/player/orplayer/PlayError;", "Landroid/view/View;", "h", "Landroid/view/View;", "errorLayout", "Lcom/transsion/player/orplayer/g;", "i", "Lcom/transsion/player/orplayer/g;", "orPlayer", "Landroid/os/Handler;", "j", "Lkotlin/Lazy;", "x0", "()Landroid/os/Handler;", "loadingHandler", "Ljava/lang/Runnable;", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/Runnable;", "showErrorRunnable", "", "l", "[Ljava/lang/String;", "loadingDot", "m", "loadingDotIndex", "n", "loadingRunnable", "Landroidx/activity/result/b;", "kotlin.jvm.PlatformType", "o", "Landroidx/activity/result/b;", "requestPermissionLauncher", TtmlNode.TAG_P, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class MusicTrailerV2Fragment extends PageStatusFragment<j> implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Trailer trailer;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private long duration;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private boolean formUserSeek;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int playState;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long bufferPosition;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private long currentPosition;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private PlayError errorInfo;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private View errorLayout;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private g orPlayer;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int loadingDotIndex;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b requestPermissionLauncher;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final Lazy loadingHandler = LazyKt.b(new Function0() { // from class: en.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MusicTrailerV2Fragment.F0();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Runnable showErrorRunnable = new Runnable() { // from class: en.c
        @Override // java.lang.Runnable
        public final void run() {
            MusicTrailerV2Fragment.P0(this.f61920a);
        }
    };

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String[] loadingDot = {".", "..", "..."};

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final Runnable loadingRunnable = new Runnable() { // from class: en.d
        @Override // java.lang.Runnable
        public final void run() {
            MusicTrailerV2Fragment.G0(this.f61921a);
        }
    };

    public static final class b implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f47274a;

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MusicTrailerV2Fragment.this.playState != 10) {
                MusicTrailerV2Fragment.this.K0();
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j11 = this.f47274a;
            if (j11 == 0 || jCurrentTimeMillis - j11 > 500) {
                this.f47274a = jCurrentTimeMillis;
            } else {
                this.f47274a = 0L;
                MusicTrailerV2Fragment.this.H0();
            }
        }
    }

    public static final class c implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f47276a;

        c() {
        }

        @Override // com.tn.lib.view.v
        public void a(SecondariesSeekBar seekBar) {
            Group group;
            Intrinsics.h(seekBar, "seekBar");
            MusicTrailerV2Fragment.this.formUserSeek = false;
            j mViewBinding = MusicTrailerV2Fragment.this.getMViewBinding();
            if (mViewBinding != null && (group = mViewBinding.f17386b) != null) {
                group.setVisibility(0);
            }
            g gVar = MusicTrailerV2Fragment.this.orPlayer;
            if (gVar != null) {
                gVar.seekTo((this.f47276a * MusicTrailerV2Fragment.this.duration) / ((long) 100));
            }
        }

        @Override // com.tn.lib.view.v
        public void b(SecondariesSeekBar seekBar, long j11, boolean z10) {
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                this.f47276a = j11;
            }
        }

        @Override // com.tn.lib.view.v
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            MusicTrailerV2Fragment.this.formUserSeek = true;
        }
    }

    public MusicTrailerV2Fragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new i(), new a() { // from class: en.e
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                MusicTrailerV2Fragment.M0((Boolean) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestPermissionLauncher = bVarRegisterForActivityResult;
    }

    private final int A0() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(MusicTrailerV2Fragment musicTrailerV2Fragment, View view) {
        musicTrailerV2Fragment.K0();
    }

    private final void D0() {
        SecondariesSeekBar secondariesSeekBar;
        j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f17395k) == null) {
            return;
        }
        secondariesSeekBar.setOnSeekBarChangeListener(new c());
    }

    private final void E0() {
        x0().postDelayed(this.loadingRunnable, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler F0() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(MusicTrailerV2Fragment musicTrailerV2Fragment) {
        TextView textView;
        int i11 = musicTrailerV2Fragment.loadingDotIndex;
        if (i11 >= 2) {
            musicTrailerV2Fragment.loadingDotIndex = 0;
        } else {
            musicTrailerV2Fragment.loadingDotIndex = i11 + 1;
        }
        j mViewBinding = musicTrailerV2Fragment.getMViewBinding();
        if (mViewBinding != null && (textView = mViewBinding.f17392h) != null) {
            textView.setText(Utils.a().getString(R$string.play_loading) + musicTrailerV2Fragment.loadingDot[musicTrailerV2Fragment.loadingDotIndex]);
        }
        musicTrailerV2Fragment.E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
        this.playState = 20;
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.pause();
        }
    }

    private final void I0(boolean isPlay) {
        this.playState = 10;
        S0(isPlay);
    }

    static /* synthetic */ void J0(MusicTrailerV2Fragment musicTrailerV2Fragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        musicTrailerV2Fragment.I0(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K0() {
        PreVideoAddress videoAddress;
        String url;
        int i11 = this.playState;
        if (i11 == -1) {
            L0();
            return;
        }
        if (i11 != 0) {
            if (i11 == 10) {
                H0();
                return;
            } else if (i11 == 20 || i11 == 22) {
                J0(this, false, 1, null);
                return;
            } else if (i11 != 30) {
                return;
            }
        }
        g gVar = this.orPlayer;
        if (gVar != null) {
            Trailer trailer = this.trailer;
            if (trailer != null && (videoAddress = trailer.getVideoAddress()) != null && (url = videoAddress.getUrl()) != null) {
                Trailer trailer2 = this.trailer;
                gVar.setDataSource(new e(trailer2 != null ? trailer2.getSubjectId() : null, url, 0, null, y0(), 12, null));
            }
            gVar.prepare();
        }
        I0(false);
    }

    private final void L0() {
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> reloadVideo() --> video error，reload~~", false, 2, null);
        this.bufferPosition = 0L;
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.stop();
            gVar.reset();
            gVar.prepare();
        }
        g gVar2 = this.orPlayer;
        if (gVar2 != null) {
            gVar2.seekTo(this.currentPosition);
        }
        T0(this, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M0(Boolean granted) {
        Intrinsics.h(granted, "granted");
        if (granted.booleanValue()) {
            lg.a.C0828a.g(lg.a.f68839a, "User allow the permission.", false, 2, null);
        } else {
            lg.a.C0828a.g(lg.a.f68839a, "User deny the permission.", false, 2, null);
        }
    }

    private final void N0(int type) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        Group group;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        ViewStub viewStub;
        if (this.errorLayout == null) {
            j mViewBinding = getMViewBinding();
            this.errorLayout = (mViewBinding == null || (viewStub = mViewBinding.f17397m) == null) ? null : viewStub.inflate();
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
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.pause();
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (shapeableImageView2 = mViewBinding2.f17388d) != null) {
            jg.c.k(shapeableImageView2);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (shapeableImageView = mViewBinding3.f17389e) != null) {
            jg.c.g(shapeableImageView);
        }
        j mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (group = mViewBinding4.f17386b) != null) {
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
        j mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatImageView2 = mViewBinding5.f17394j) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        j mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatImageView = mViewBinding6.f17394j) == null) {
            return;
        }
        appCompatImageView.setKeepScreenOn(false);
    }

    private final void O0(long delay) {
        x0().removeCallbacks(this.showErrorRunnable);
        x0().postDelayed(this.showErrorRunnable, delay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(MusicTrailerV2Fragment musicTrailerV2Fragment) {
        musicTrailerV2Fragment.N0(0);
    }

    private final void Q0() {
        ShapeableImageView shapeableImageView;
        String url;
        Cover cover;
        Cover cover2;
        String thumbnail;
        TextView textView;
        PreVideoAddress videoAddress;
        Integer duration;
        SecondariesSeekBar secondariesSeekBar;
        if (!isAdded() || getActivity() == null) {
            return;
        }
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (secondariesSeekBar = mViewBinding.f17395k) != null) {
            secondariesSeekBar.setMax(100L);
        }
        Trailer trailer = this.trailer;
        long jIntValue = (trailer == null || (videoAddress = trailer.getVideoAddress()) == null || (duration = videoAddress.getDuration()) == null) ? 0L : duration.intValue() * 1000;
        this.duration = jIntValue;
        if (jIntValue > 0) {
            String str = "00:00/" + n.d(jIntValue);
            j mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (textView = mViewBinding2.f17396l) != null) {
                textView.setText(str);
            }
        }
        Trailer trailer2 = this.trailer;
        com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f42991a, (trailer2 == null || (cover2 = trailer2.getCover()) == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, 0, 0, new Function1() { // from class: en.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MusicTrailerV2Fragment.R0(this.f61919a, (BitmapDrawable) obj);
            }
        }, 6, null);
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (shapeableImageView = mViewBinding3.f17389e) == null) {
            return;
        }
        shapeableImageView.setVisibility(0);
        RequestManager requestManagerWith = Glide.with(requireContext());
        ej.f.a aVar = ej.f.f61882a;
        Trailer trailer3 = this.trailer;
        if (trailer3 == null || (cover = trailer3.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        requestManagerWith.load2(ej.f.a.e(aVar, url, com.transsion.core.utils.e.f(), false, false, 12, null)).into(shapeableImageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(MusicTrailerV2Fragment musicTrailerV2Fragment, BitmapDrawable it) {
        ShapeableImageView shapeableImageView;
        Intrinsics.h(it, "it");
        j mViewBinding = musicTrailerV2Fragment.getMViewBinding();
        if (mViewBinding != null && (shapeableImageView = mViewBinding.f17388d) != null) {
            shapeableImageView.setImageDrawable(it);
        }
        return Unit.f67061a;
    }

    private final void S0(boolean isPlay) {
        AppCompatImageView appCompatImageView;
        Group group;
        AppCompatImageView appCompatImageView2;
        Group group2;
        g gVar;
        this.playState = 10;
        this.errorInfo = null;
        if (isPlay && (gVar = this.orPlayer) != null) {
            gVar.play();
        }
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group2 = mViewBinding.f17386b) != null) {
            jg.c.k(group2);
        }
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.f17390f) != null) {
            jg.c.g(appCompatImageView2);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (group = mViewBinding3.f17387c) != null) {
            jg.c.k(group);
        }
        j mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView = mViewBinding4.f17394j) != null) {
            appCompatImageView.setImageResource(R$drawable.post_icon_pause);
        }
        x0().removeCallbacks(this.showErrorRunnable);
        Q0();
    }

    static /* synthetic */ void T0(MusicTrailerV2Fragment musicTrailerV2Fragment, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = true;
        }
        musicTrailerV2Fragment.S0(z10);
    }

    private final Intent w0(String pageName) {
        IPushProvider iPushProvider = (IPushProvider) TheRouter.d(IPushProvider.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/movie/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("id");
        sb2.append(UrlUtils.EQUAL_MARK);
        Trailer trailer = this.trailer;
        sb2.append(trailer != null ? trailer.getSubjectId() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("subject_type");
        sb2.append(UrlUtils.EQUAL_MARK);
        Trailer trailer2 = this.trailer;
        sb2.append(trailer2 != null ? Integer.valueOf(trailer2.getSubjectType()) : null);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(pageName);
        if (iPushProvider == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = iPushProvider.a(applicationA);
        if (intentA == null) {
            return null;
        }
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse(sb2.toString()));
        return intentA;
    }

    private final Handler x0() {
        return (Handler) this.loadingHandler.getValue();
    }

    private final MediaItem y0() {
        PreVideoAddress videoAddress;
        Cover cover;
        Trailer trailer = this.trailer;
        String url = null;
        String musicName = trailer != null ? trailer.getMusicName() : null;
        Trailer trailer2 = this.trailer;
        String url2 = (trailer2 == null || (cover = trailer2.getCover()) == null) ? null : cover.getUrl();
        Trailer trailer3 = this.trailer;
        if (trailer3 != null && (videoAddress = trailer3.getVideoAddress()) != null) {
            url = videoAddress.getUrl();
        }
        return new MediaItem(musicName, "", url2, null, null, null, z0(), w0("media_music_float_notification"), null, url, Boolean.TRUE, null, null, null, 14648, null);
    }

    private final PendingIntent z0() {
        return PendingIntent.getActivity(Utils.a(), 0, w0("media_notification"), A0());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        j jVarC = j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        g gVar;
        D0();
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: en.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicTrailerV2Fragment.C0(this.f61922a, view);
                }
            };
            mViewBinding.f17390f.setOnClickListener(onClickListener);
            mViewBinding.f17394j.setOnClickListener(onClickListener);
            mViewBinding.f17393i.setOnClickListener(new b());
            if (NetworkType.NETWORK_WIFI != m.f70474a.d() || (gVar = this.orPlayer) == null || gVar.isPlaying()) {
                return;
            }
            K0();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        String subjectId;
        v0();
        Trailer trailer = this.trailer;
        if (trailer == null || (subjectId = trailer.getSubjectId()) == null) {
            return;
        }
        l0 l0Var = l0.f66968a;
        g gVarF = l0Var.f(subjectId);
        if (gVarF == null) {
            gVarF = l0Var.s();
        } else if (gVarF.isPlaying()) {
            S0(false);
        }
        gVarF.addPlayerListener(this);
        this.orPlayer = gVarF;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        super.loadDefaultData();
        Q0();
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(e eVar) {
        f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long progress, e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        f.a.d(this, progress, mediaSource);
        if (this.bufferPosition >= progress || this.duration <= 0) {
            return;
        }
        this.bufferPosition = progress;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(0, Integer.valueOf((int) ((progress * ((long) 100)) / this.duration)));
        j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f17395k) == null) {
            return;
        }
        secondariesSeekBar.setSecondariesProgress(linkedHashMap);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(e mediaSource) {
        f.a.e(this, mediaSource);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onCompletion()", false, 2, null);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            this.currentPosition = 0L;
            this.playState = 30;
            AppCompatImageView ivPlay = mViewBinding.f17390f;
            Intrinsics.g(ivPlay, "ivPlay");
            jg.c.k(ivPlay);
            mViewBinding.f17394j.setImageResource(R$drawable.post_icon_play);
            Group groupProgress = mViewBinding.f17387c;
            Intrinsics.g(groupProgress, "groupProgress");
            jg.c.g(groupProgress);
            ShapeableImageView ivMovieCover = mViewBinding.f17389e;
            Intrinsics.g(ivMovieCover, "ivMovieCover");
            jg.c.k(ivMovieCover);
            ShapeableImageView ivMovieBlurCover = mViewBinding.f17388d;
            Intrinsics.g(ivMovieBlurCover, "ivMovieBlurCover");
            jg.c.k(ivMovieBlurCover);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.removePlayerListener(this);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, nh.n
    public void onDisconnected() {
        g gVar;
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onDisconnected()", false, 2, null);
        if (this.playState != 10 || (gVar = this.orPlayer) == null || gVar.isPlaying()) {
            return;
        }
        O0(500L);
    }

    @Override // com.transsion.player.orplayer.f
    public void onFocusChange(boolean z10) {
        f.a.g(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onIsPlayingChanged(boolean z10) {
        f.a.h(this, z10);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingBegin(e mediaSource) {
        Group group;
        f.a.i(this, mediaSource);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onLoadingBegin()", false, 2, null);
        if (!m.f70474a.e()) {
            O0(1000L);
            return;
        }
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f17386b) != null) {
            jg.c.k(group);
        }
        x0().post(this.loadingRunnable);
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e mediaSource) {
        Group group;
        f.a.k(this, mediaSource);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onLoadingEnd()", false, 2, null);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f17386b) != null) {
            jg.c.g(group);
        }
        View view = this.errorLayout;
        if (view != null) {
            jg.c.g(view);
        }
        x0().removeCallbacks(this.loadingRunnable);
        x0().removeCallbacks(this.showErrorRunnable);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingProgress(int i11, float f11, e eVar) {
        f.a.m(this, i11, f11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoopingStart() {
        f.a.o(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onMediaItemTransition(String str) {
        f.a.p(this, str);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        f.a.q(this, errorInfo, mediaSource);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onPlayError() --> errorInfo.errorCode = " + errorInfo.getErrorCode(), false, 2, null);
        Integer errorCode = errorInfo.getErrorCode();
        if (errorCode != null && errorCode.intValue() == 537067524) {
            if (m.f70474a.e()) {
                N0(1);
            } else {
                O0(500L);
            }
        }
        this.errorInfo = errorInfo;
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(e eVar) {
        f.a.t(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        f.a.v(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(e mediaSource) {
        f.a.w(this, mediaSource);
        g gVar = this.orPlayer;
        if (gVar != null) {
            gVar.play();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long progress, e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        TextView textView;
        g gVar;
        Group group;
        f.a.y(this, progress, mediaSource);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f17386b) != null) {
            group.setVisibility(8);
        }
        if (this.formUserSeek) {
            return;
        }
        this.currentPosition = progress;
        if (this.duration <= 0 && (gVar = this.orPlayer) != null) {
            this.duration = gVar.getDuration();
        }
        String str = n.d(progress) + "/" + n.d(this.duration);
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (textView = mViewBinding2.f17396l) != null) {
            textView.setText(str);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (secondariesSeekBar = mViewBinding3.f17395k) == null) {
            return;
        }
        secondariesSeekBar.setProgress((progress * ((long) 100)) / this.duration);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        f.a.A(this);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onRenderFirstFrame()", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        f.a.B(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        super.onStop();
        Activity activityB = com.blankj.utilcode.util.a.b();
        lg.a.C0828a.g(lg.a.f68839a, "zxb_lob --> topActivity = " + activityB, false, 2, null);
        if (activityB != null) {
            String simpleName = activityB.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            if (StringsKt.c0(simpleName, "LocalVideoDetailActivity", false, 2, null)) {
                this.playState = 0;
                j mViewBinding = getMViewBinding();
                if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f17394j) != null) {
                    appCompatImageView2.setImageResource(R$drawable.post_icon_play);
                }
                j mViewBinding2 = getMViewBinding();
                if (mViewBinding2 == null || (appCompatImageView = mViewBinding2.f17394j) == null) {
                    return;
                }
                appCompatImageView.setKeepScreenOn(false);
            }
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksAudioBitrateChange(int i11) {
        f.a.C(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksChange(mo.c cVar) {
        f.a.D(this, cVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onTracksVideoBitrateChange(int i11) {
        f.a.E(this, i11);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoPause(e mediaSource) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        f.a.F(this, mediaSource);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onVideoPause()", false, 2, null);
        this.playState = 20;
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f17394j) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatImageView = mViewBinding2.f17394j) == null) {
            return;
        }
        appCompatImageView.setKeepScreenOn(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e mediaSource) {
        f.a.I(this, mediaSource);
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> onVideoStart()", false, 2, null);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            Group groupLoading = mViewBinding.f17386b;
            Intrinsics.g(groupLoading, "groupLoading");
            jg.c.g(groupLoading);
            mViewBinding.f17394j.setImageResource(R$drawable.post_icon_pause);
            mViewBinding.f17394j.setKeepScreenOn(true);
            S0(false);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void receiveArguments() {
        Bundle arguments = getArguments();
        Trailer trailer = (Trailer) (arguments != null ? arguments.getSerializable("trailer") : null);
        this.trailer = trailer;
        com.transsion.player.mediasession.i.f48408a.a("MusicTrailerV2Fragment --> receiveArguments() --> trailer = " + trailer);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        int i11;
        lg.a.C0828a.g(lg.a.f68839a, "MusicTrailerV2Fragment --> retryLoadData()", false, 2, null);
        Q0();
        View view = this.errorLayout;
        if (view == null || view.getVisibility() != 0 || (i11 = this.playState) == 20 || i11 == 21) {
            return;
        }
        T0(this, false, 1, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }

    public final void v0() {
    }
}
