package com.transsion.videodetail.music.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import androidx.fragment.app.FragmentManager;
import ao.e;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.music.bean.MusicStateEnum;
import com.transsion.videodetail.music.ui.MusicDetailLikedFragment;
import com.transsion.videodetail.music.widget.MusicDetailListOperateView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import jx.k;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kx.c;
import mo.d;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0016\u0010\u000eJ)\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010\"\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\"\u0010!J\u0019\u0010#\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b#\u0010!Jm\u0010*\u001a\u00020\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\t2\b\u0010$\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192:\u0010)\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\f0%¢\u0006\u0004\b*\u0010+J\u0015\u0010.\u001a\u00020\f2\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\u000f\u00101\u001a\u0004\u0018\u000100¢\u0006\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104RL\u00108\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\f\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcom/transsion/videodetail/music/widget/MusicDetailListOperateView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/player/orplayer/f;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "", "i", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "isPlaying", "m", "(Z)V", "l", "j", CampaignEx.JSON_KEY_AD_K, "Landroidx/fragment/app/FragmentManager;", "childFragmentManager", "", "flMusicContainer", "subjectId", "g", "(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V", "Lao/e;", "mediaSource", "onVideoPause", "(Lao/e;)V", "onVideoStart", "onCompletion", "musicContainer", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "path", "onItemCLick", "setContainer", "(Ljava/lang/String;Landroid/widget/FrameLayout;Landroidx/fragment/app/FragmentManager;ILkotlin/jvm/functions/Function2;)V", "Lcom/transsion/videodetail/music/bean/MusicStateEnum;", "state", "setState", "(Lcom/transsion/videodetail/music/bean/MusicStateEnum;)V", "Lcom/transsion/videodetail/music/ui/MusicDetailLikedFragment;", "getMusicDetailLikedFragment", "()Lcom/transsion/videodetail/music/ui/MusicDetailLikedFragment;", "a", "Lcom/transsion/videodetail/music/ui/MusicDetailLikedFragment;", "mMusicDetailLikedFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function2;", "mOnItemCLick", "Ljx/k;", "c", "Ljx/k;", "bind", "Landroid/widget/FrameLayout;", "mMusicContainer", "e", "Lcom/transsion/videodetail/music/bean/MusicStateEnum;", "currentMicState", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicDetailListOperateView extends FrameLayout implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private MusicDetailLikedFragment mMusicDetailLikedFragment;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function2 mOnItemCLick;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private k bind;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private FrameLayout mMusicContainer;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private MusicStateEnum currentMicState;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57846a;

        static {
            int[] iArr = new int[MusicStateEnum.values().length];
            try {
                iArr[MusicStateEnum.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicStateEnum.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicStateEnum.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57846a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public MusicDetailListOperateView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MusicDetailListOperateView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        MusicStateEnum musicStateEnum = MusicStateEnum.CLOSE;
        this.currentMicState = musicStateEnum;
        k kVarC = k.c(LayoutInflater.from(context), this, false);
        this.bind = kVarC;
        addView(kVarC != null ? kVarC.getRoot() : null);
        setState(musicStateEnum);
        i();
        d();
    }

    public /* synthetic */ MusicDetailListOperateView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    private final void d() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView2 = kVar.f66448b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: mx.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicDetailListOperateView.e(this.f70022a, view);
                }
            });
        }
        k kVar2 = this.bind;
        if (kVar2 == null || (appCompatImageView = kVar2.f66450d) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: mx.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MusicDetailListOperateView.f(this.f70023a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(MusicDetailListOperateView musicDetailListOperateView, View view) {
        MusicStateEnum musicStateEnum = musicDetailListOperateView.currentMicState;
        int i11 = musicStateEnum == null ? -1 : a.f57846a[musicStateEnum.ordinal()];
        if (i11 == 1) {
            musicDetailListOperateView.k();
            musicDetailListOperateView.currentMicState = MusicStateEnum.OPEN;
        } else {
            if (i11 != 2) {
                return;
            }
            musicDetailListOperateView.currentMicState = MusicStateEnum.CLOSE;
            musicDetailListOperateView.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(MusicDetailListOperateView musicDetailListOperateView, View view) {
        c.f68404a.c();
        musicDetailListOperateView.l();
    }

    private final void g(FragmentManager childFragmentManager, int flMusicContainer, String subjectId) {
        MusicDetailLikedFragment musicDetailLikedFragment = new MusicDetailLikedFragment();
        musicDetailLikedFragment.P0(this);
        musicDetailLikedFragment.N0(this.mOnItemCLick);
        musicDetailLikedFragment.O0(subjectId, new Function2() { // from class: mx.c
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MusicDetailListOperateView.h(this.f70024a, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        this.mMusicDetailLikedFragment = musicDetailLikedFragment;
        childFragmentManager.p().b(flMusicContainer, musicDetailLikedFragment).i();
    }

    private final String getClassTag() {
        String simpleName = MusicDetailListOperateView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h(MusicDetailListOperateView musicDetailListOperateView, int i11, int i12) {
        String str;
        AppCompatTextView appCompatTextView;
        if (i12 == 0) {
            str = "Now playing";
        } else {
            str = "Now playing " + i11 + "/" + i12;
        }
        k kVar = musicDetailListOperateView.bind;
        if (kVar != null && (appCompatTextView = kVar.f66452f) != null) {
            appCompatTextView.setText(str);
        }
        musicDetailListOperateView.m(true);
        return Unit.f67061a;
    }

    private final void i() {
        AppCompatImageView appCompatImageView;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView = kVar.f66449c) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                appCompatImageView.setImageResource(R$drawable.video_detail_ic_playing);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
        m(true);
        l();
    }

    private final void j() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView4 = kVar.f66448b) != null) {
            appCompatImageView4.setImageResource(R$drawable.music_iv_right);
        }
        k kVar2 = this.bind;
        if (kVar2 != null && (appCompatImageView3 = kVar2.f66451e) != null) {
            appCompatImageView3.setVisibility(8);
        }
        k kVar3 = this.bind;
        if (kVar3 != null && (appCompatImageView2 = kVar3.f66450d) != null) {
            appCompatImageView2.setVisibility(8);
        }
        k kVar4 = this.bind;
        if (kVar4 != null && (appCompatImageView = kVar4.f66449c) != null) {
            appCompatImageView.setVisibility(0);
        }
        FrameLayout frameLayout = this.mMusicContainer;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    private final void k() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView3 = kVar.f66448b) != null) {
            appCompatImageView3.setImageResource(R$drawable.music_iv_close);
        }
        k kVar2 = this.bind;
        if (kVar2 != null && (appCompatImageView2 = kVar2.f66449c) != null) {
            appCompatImageView2.setVisibility(8);
        }
        FrameLayout frameLayout = this.mMusicContainer;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        k kVar3 = this.bind;
        if (kVar3 == null || (appCompatImageView = kVar3.f66450d) == null) {
            return;
        }
        appCompatImageView.setVisibility(0);
    }

    private final void l() {
        AppCompatImageView appCompatImageView;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView = kVar.f66450d) != null) {
            c cVar = c.f68404a;
            appCompatImageView.setImageDrawable(cVar.a(cVar.b()));
        }
        kx.a.f68401a.a(getClassTag() + " --> showLoopIcon() --> 当前播放模式是 = " + c.f68404a.b());
    }

    private final void m(boolean isPlaying) {
        AppCompatImageView appCompatImageView;
        k kVar = this.bind;
        if (kVar == null || (appCompatImageView = kVar.f66449c) == null) {
            return;
        }
        appCompatImageView.setColorFilter(isPlaying ? new PorterDuffColorFilter(b.getColor(appCompatImageView.getContext(), R$color.brand), PorterDuff.Mode.SRC_ATOP) : new PorterDuffColorFilter(b.getColor(appCompatImageView.getContext(), R$color.line_02), PorterDuff.Mode.SRC_ATOP));
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, d dVar) {
        f.a.a(this, z10, i11, i12, dVar);
    }

    /* JADX INFO: renamed from: getMusicDetailLikedFragment, reason: from getter */
    public final MusicDetailLikedFragment getMMusicDetailLikedFragment() {
        return this.mMusicDetailLikedFragment;
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        f.a.b(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onAliyunDecodeErrorChangeSoftwareDecoder(e eVar) {
        f.a.c(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onBufferedPosition(long j11, e eVar) {
        f.a.d(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onCompletion(e mediaSource) {
        f.a.e(this, mediaSource);
        m(false);
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
    public void onLoadingBegin(e eVar) {
        f.a.i(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(e eVar) {
        f.a.k(this, eVar);
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
    public void onPlayError(PlayError playError, e eVar) {
        f.a.q(this, playError, eVar);
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, e eVar) {
        f.a.s(this, tnPlayerType, eVar);
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
    public void onPrepare(e eVar) {
        f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, e eVar) {
        f.a.y(this, j11, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        f.a.A(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        f.a.B(this);
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
        f.a.F(this, mediaSource);
        m(false);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(e mediaSource) {
        f.a.I(this, mediaSource);
        m(true);
    }

    public final void setContainer(String subjectId, FrameLayout musicContainer, FragmentManager childFragmentManager, int flMusicContainer, Function2<? super String, ? super String, Unit> onItemCLick) {
        Intrinsics.h(childFragmentManager, "childFragmentManager");
        Intrinsics.h(onItemCLick, "onItemCLick");
        this.mMusicContainer = musicContainer;
        this.mOnItemCLick = onItemCLick;
        g(childFragmentManager, flMusicContainer, subjectId);
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        f.a.K(this);
    }

    public final void setState(MusicStateEnum state) {
        Intrinsics.h(state, "state");
        this.currentMicState = state;
        int i11 = a.f57846a[state.ordinal()];
        if (i11 == 1) {
            j();
        } else if (i11 == 2) {
            k();
        } else {
            if (i11 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            setVisibility(8);
        }
    }
}
