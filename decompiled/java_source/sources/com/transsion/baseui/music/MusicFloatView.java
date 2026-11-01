package com.transsion.baseui.music;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.app.NotificationCompat;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.a0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.therouter.TheRouter;
import com.transsion.baseui.R$anim;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$layout;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.player.mediasession.MediaItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0011J\u0017\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001c\u0010\u001bJ\u0015\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u000f¢\u0006\u0004\b!\u0010\u0011R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010(\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0016\u00106\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00109\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108¨\u0006:"}, d2 = {"Lcom/transsion/baseui/music/MusicFloatView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "res", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "getClassTag", "()Ljava/lang/String;", "", "l", "()V", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/mediasession/MediaItem;", "mediaItem", "t", "(Lcom/transsion/player/mediasession/MediaItem;)V", "w", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "z", "(Landroid/view/View;)V", "y", "", "isExpand", "setExpand", "(Z)V", ToolBar.REFRESH, "Lbk/f;", "a", "Lbk/f;", "binding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "lastCoverUrl", "Ljava/lang/Runnable;", "c", "Ljava/lang/Runnable;", "refreshTimedTask", "Landroid/os/Handler;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "getMHandler", "()Landroid/os/Handler;", "mHandler", "", "e", "J", NotificationCompat.CATEGORY_PROGRESS, "f", "I", "count", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicFloatView extends FrameLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final bk.f binding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String lastCoverUrl;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Runnable refreshTimedTask;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy mHandler;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long progress;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int count;

    public static final class a implements androidx.p009lifecycle.f {
        a() {
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public void onDestroy(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.b(this, owner);
            owner.getLifecycle().d(this);
            MusicFloatView.this.getMHandler().removeCallbacksAndMessages(null);
        }

        @Override // androidx.p009lifecycle.f
        public void onPause(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.c(this, owner);
            MusicFloatView.this.getMHandler().removeCallbacks(MusicFloatView.this.refreshTimedTask);
        }

        @Override // androidx.p009lifecycle.f
        public void onResume(u owner) {
            Intrinsics.h(owner, "owner");
            androidx.p009lifecycle.e.d(this, owner);
            MusicFloatView.this.refresh();
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override // androidx.p009lifecycle.f
        public /* synthetic */ void onStop(u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    public static final class b implements Animation.AnimationListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ View f43471a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MusicFloatView f43472b;

        b(View view, MusicFloatView musicFloatView) {
            this.f43471a = view;
            this.f43472b = musicFloatView;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f43471a.setVisibility(8);
            RoundedCornerLayout roundFold = this.f43472b.binding.f16605h;
            Intrinsics.g(roundFold, "roundFold");
            jg.c.k(roundFold);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    public static final class c implements Animation.AnimationListener {
        c() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MusicFloatView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MusicFloatView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicFloatView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.lastCoverUrl = "";
        this.refreshTimedTask = new Runnable() { // from class: com.transsion.baseui.music.d
            @Override // java.lang.Runnable
            public final void run() {
                MusicFloatView.v(this.f43482a);
            }
        };
        this.mHandler = LazyKt.b(new Function0() { // from class: com.transsion.baseui.music.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MusicFloatView.u();
            }
        });
        bk.f fVarA = bk.f.a(LayoutInflater.from(getContext()).inflate(R$layout.music_float_layout, (ViewGroup) this, true));
        Intrinsics.g(fVarA, "bind(...)");
        this.binding = fVarA;
        setExpand(MusicFloatManager.f43454h.b().v());
        l();
        k();
        w();
    }

    private final String getClassTag() {
        String simpleName = MusicFloatView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final void k() {
        Lifecycle lifecycle;
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycle = appCompatActivity.getLifecycle()) == null) {
            return;
        }
        lifecycle.a(new a());
    }

    private final void l() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        RoundedCornerLayout roundedCornerLayout;
        this.binding.f16605h.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.music.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MusicFloatView.m(this.f43483a, view);
            }
        });
        bk.f fVar = this.binding;
        if (fVar != null && (roundedCornerLayout = fVar.f16604g) != null) {
            roundedCornerLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.music.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicFloatView.n(view);
                }
            });
        }
        bk.f fVar2 = this.binding;
        if (fVar2 != null && (appCompatImageView2 = fVar2.f16599b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.music.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MusicFloatView.o(this.f43484a, view);
                }
            });
        }
        bk.f fVar3 = this.binding;
        if (fVar3 == null || (appCompatImageView = fVar3.f16602e) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.baseui.music.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MusicFloatView.q(this.f43485a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(MusicFloatView musicFloatView, View view) {
        musicFloatView.setExpand(true);
        musicFloatView.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(View view) {
        Intent clickIntent;
        MediaItem mediaItemQ = MusicFloatManager.f43454h.b().q();
        if (mediaItemQ == null || (clickIntent = mediaItemQ.getClickIntent()) == null) {
            return;
        }
        clickIntent.addFlags(ASTNode.DEOP);
        String stringExtra = clickIntent.getStringExtra("path");
        String stringExtra2 = clickIntent.getStringExtra("id");
        String stringExtra3 = clickIntent.getStringExtra("resource_id");
        String stringExtra4 = clickIntent.getStringExtra("collection_id");
        String stringExtra5 = clickIntent.getStringExtra("extra_local_path");
        boolean booleanExtra = clickIntent.getBooleanExtra("isMusicLikedFragment", false);
        Log.e("m_d_log", "initListener -->  path = " + stringExtra + " -- id = " + stringExtra2 + " -- isMusicLikedFragment = " + booleanExtra);
        ak.k.p(TheRouter.c(stringExtra).K("id", stringExtra2).z("is_music_liked_fragment", booleanExtra).K("resource_id", stringExtra3).K("extra_local_path", stringExtra5).K("collection_id", stringExtra4).z("isMusicFloatViewClick", true));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(final MusicFloatView musicFloatView, View view) {
        MusicFloatManager.a aVar = MusicFloatManager.f43454h;
        com.transsion.player.orplayer.g gVarS = aVar.b().s();
        if (gVarS != null) {
            gVarS.pause();
        }
        aVar.b().B(null);
        musicFloatView.setVisibility(8);
        musicFloatView.lastCoverUrl = "";
        musicFloatView.post(new Runnable() { // from class: com.transsion.baseui.music.l
            @Override // java.lang.Runnable
            public final void run() {
                MusicFloatView.p(this.f43488a);
            }
        });
        com.transsion.player.mediasession.h.f48399a.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(MusicFloatView musicFloatView) {
        Context context = musicFloatView.getContext();
        BaseMusicFloatActivity baseMusicFloatActivity = context instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) context : null;
        if (baseMusicFloatActivity != null) {
            baseMusicFloatActivity.onCloseMusicFloating();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(final MusicFloatView musicFloatView, View view) {
        com.transsion.baseui.util.d.b(0L, new Function0() { // from class: com.transsion.baseui.music.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MusicFloatView.r(this.f43487a);
            }
        }, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(final MusicFloatView musicFloatView) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        musicFloatView.w();
        com.transsion.player.orplayer.g gVarS = MusicFloatManager.f43454h.b().s();
        if (gVarS == null || !gVarS.isPlaying()) {
            bk.f fVar = musicFloatView.binding;
            if (fVar != null && (appCompatImageView = fVar.f16602e) != null) {
                appCompatImageView.setImageResource(R$drawable.music_float_play);
            }
            if (gVarS != null && gVarS.isComplete()) {
                gVarS.seekTo(0L);
            }
            if (gVarS != null) {
                gVarS.play();
            }
        } else {
            bk.f fVar2 = musicFloatView.binding;
            if (fVar2 != null && (appCompatImageView2 = fVar2.f16602e) != null) {
                appCompatImageView2.setImageResource(R$drawable.music_float_pause);
            }
            gVarS.pause();
        }
        musicFloatView.postDelayed(new Runnable() { // from class: com.transsion.baseui.music.m
            @Override // java.lang.Runnable
            public final void run() {
                MusicFloatView.s(this.f43489a);
            }
        }, 200L);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(MusicFloatView musicFloatView) {
        musicFloatView.refresh();
    }

    private final void t(MediaItem mediaItem) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        bk.f fVar;
        AppCompatTextView appCompatTextView;
        Long position = mediaItem.getPosition();
        long jLongValue = position != null ? position.longValue() : 0L;
        if (jLongValue != this.progress) {
            this.progress = jLongValue;
            this.count = 0;
        } else {
            this.count++;
        }
        if (!TextUtils.isEmpty(mediaItem.getTitle()) && (fVar = this.binding) != null && (appCompatTextView = fVar.f16607j) != null) {
            appCompatTextView.setText(mediaItem.getTitle());
        }
        Long duration = mediaItem.getDuration();
        long jLongValue2 = duration != null ? duration.longValue() : 0L;
        Long position2 = mediaItem.getPosition();
        long jLongValue3 = position2 != null ? position2.longValue() : 0L;
        if (jLongValue2 > 0) {
            this.binding.f16603f.setProgress((int) ((jLongValue3 * 10000.0f) / jLongValue2));
        }
        if (!TextUtils.equals(this.lastCoverUrl, mediaItem.getCoverUrl())) {
            this.lastCoverUrl = mediaItem.getCoverUrl();
            AppCompatImageView appCompatImageView3 = this.binding.f16600c;
            ej.f.a aVar = ej.f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ej.f.b bVarM = aVar.m(context);
            String coverUrl = mediaItem.getCoverUrl();
            if (coverUrl == null) {
                coverUrl = "";
            }
            ej.f.b bVarM2 = bVarM.g(coverUrl).m(a0.a(44.0f));
            Intrinsics.e(appCompatImageView3);
            bVarM2.d(appCompatImageView3);
        }
        com.transsion.player.orplayer.g gVarS = MusicFloatManager.f43454h.b().s();
        if (gVarS == null || !gVarS.isPlaying()) {
            bk.f fVar2 = this.binding;
            if (fVar2 != null && (appCompatImageView = fVar2.f16602e) != null) {
                appCompatImageView.setImageResource(R$drawable.music_float_pause);
            }
        } else {
            bk.f fVar3 = this.binding;
            if (fVar3 != null && (appCompatImageView2 = fVar3.f16602e) != null) {
                appCompatImageView2.setImageResource(R$drawable.music_float_play);
            }
        }
        getMHandler().removeCallbacks(this.refreshTimedTask);
        getMHandler().postDelayed(this.refreshTimedTask, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler u() {
        return new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(MusicFloatView musicFloatView) {
        musicFloatView.refresh();
    }

    private final void w() {
        getMHandler().removeCallbacksAndMessages(null);
        getMHandler().postDelayed(new Runnable() { // from class: com.transsion.baseui.music.j
            @Override // java.lang.Runnable
            public final void run() {
                MusicFloatView.x(this.f43486a);
            }
        }, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(MusicFloatView musicFloatView) {
        musicFloatView.setExpand(false);
    }

    private final void y(View view) {
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R$anim.music_slide_left);
        animationLoadAnimation.setAnimationListener(new b(view, this));
        view.startAnimation(animationLoadAnimation);
    }

    private final void z(View view) {
        view.setVisibility(0);
        RoundedCornerLayout roundFold = this.binding.f16605h;
        Intrinsics.g(roundFold, "roundFold");
        jg.c.g(roundFold);
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), R$anim.music_slide_right);
        animationLoadAnimation.setAnimationListener(new c());
        view.startAnimation(animationLoadAnimation);
    }

    public final void refresh() {
        MediaItem mediaItemQ = MusicFloatManager.f43454h.b().q();
        if (mediaItemQ == null) {
            com.transsion.player.mediasession.i.f48408a.a(getClassTag() + " --> refresh() --> musicFloatBean == null --> 没有数据不展示UI");
            setVisibility(8);
            return;
        }
        if (!Intrinsics.c(mediaItemQ.isMusic(), Boolean.FALSE)) {
            mediaItemQ.setPageName("music_float");
            setVisibility(0);
            t(mediaItemQ);
            return;
        }
        com.transsion.player.mediasession.i.f48408a.a(getClassTag() + " --> refresh() --> musicFloatBean.isMusic == false --> 当前不是Music类型，不展示悬浮窗");
        setVisibility(8);
    }

    public final void setExpand(boolean isExpand) {
        MusicFloatManager.f43454h.b().A(isExpand);
        if (isExpand) {
            RoundedCornerLayout roundExpand = this.binding.f16604g;
            Intrinsics.g(roundExpand, "roundExpand");
            z(roundExpand);
        } else {
            RoundedCornerLayout roundExpand2 = this.binding.f16604g;
            Intrinsics.g(roundExpand2, "roundExpand");
            y(roundExpand2);
        }
    }
}
