package com.transsion.videofloat.manager;

import android.R;
import android.app.Application;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.PowerManager;
import android.util.Rational;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.videofloat.R$mipmap;
import com.transsion.videofloat.R$string;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.videofloat.dialog.VideoFloatPermissionDialog;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class VideoPipManagerImp implements ox.e {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final a f57907v = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private FragmentActivity f57909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private px.a f57910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PowerManager.WakeLock f57911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.transsion.player.orplayer.g f57912f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ORPlayerView f57913g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ViewGroup f57914h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewGroup f57915i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ViewGroup f57916j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Rect f57918l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f57919m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f57920n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f57921o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f57922p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f57923q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f57924r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f57926t;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f57908b = VideoPipManagerImp.class.getSimpleName();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f57917k = 16.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final VideoPipManagerImp$pipActionReceiver$1 f57925s = new BroadcastReceiver() { // from class: com.transsion.videofloat.manager.VideoPipManagerImp$pipActionReceiver$1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.v(c0828a, "VideoFloat-pip", this.f57932a.f57908b + " --pipActionReceiver action:" + (intent != null ? intent.getAction() : null), false, 4, null);
            if (intent == null || !Intrinsics.c(intent.getAction(), "pip_action_control")) {
                return;
            }
            int intExtra = intent.getIntExtra("control_type", 0);
            lg.a.C0828a.r(c0828a, "VideoFloat-pip", new String[]{this.f57932a.f57908b + " --pipActionReceiver controlType:" + intExtra}, false, 4, null);
            if (intExtra == 1) {
                this.f57932a.M();
            } else if (intExtra == 2) {
                this.f57932a.H(true);
            } else {
                if (intExtra != 3) {
                    return;
                }
                this.f57932a.H(false);
            }
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f57927u = true;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final class b extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Function1 f57928a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f57929b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ VideoPipManagerImp f57930c;

        public b(VideoPipManagerImp videoPipManagerImp, Function1 callback) {
            Intrinsics.h(callback, "callback");
            this.f57930c = videoPipManagerImp;
            this.f57928a = callback;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Intrinsics.h(context, "context");
            Intrinsics.h(intent, "intent");
            String action = intent.getAction();
            if (action != null) {
                int iHashCode = action.hashCode();
                if (iHashCode == -2128145023) {
                    if (action.equals("android.intent.action.SCREEN_OFF")) {
                        this.f57929b = true;
                        this.f57928a.invoke(Boolean.TRUE);
                        lg.a.C0828a.f(lg.a.f68839a, "CommonInfo", "Screen off", false, 4, null);
                        return;
                    }
                    return;
                }
                if (iHashCode == 823795052 && action.equals("android.intent.action.USER_PRESENT")) {
                    this.f57929b = false;
                    this.f57928a.invoke(Boolean.FALSE);
                    lg.a.C0828a.f(lg.a.f68839a, "CommonInfo", "User present", false, 4, null);
                }
            }
        }
    }

    public /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57931a;

        static {
            int[] iArr = new int[FloatActionType.values().length];
            try {
                iArr[FloatActionType.ICON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FloatActionType.BACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FloatActionType.HOME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f57931a = iArr;
        }
    }

    private final RemoteAction D(Context context, int i11, int i12, int i13, int i14) {
        n.a();
        return m.a(Icon.createWithResource(context, i11), Utils.a().getString(i12), Utils.a().getString(i12), PendingIntent.getBroadcast(context, i13, new Intent("pip_action_control").putExtra("control_type", i14), 67108864));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E(VideoPipManagerImp videoPipManagerImp, FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType, boolean z10) {
        if (z10) {
            videoPipManagerImp.F(fragmentActivity, aVar, floatActionType);
        }
        return Unit.f67061a;
    }

    private final void F(FragmentActivity fragmentActivity, px.a aVar, FloatActionType floatActionType) {
        Object objM454constructorimpl;
        FragmentActivity fragmentActivity2;
        this.f57924r = false;
        if (this.f57920n && fragmentActivity.isInPictureInPictureMode()) {
            lg.a.f68839a.u("VideoFloat-pip", this.f57908b + " enterPip--- 已经进入，无需重复调用}", true);
            return;
        }
        if (floatActionType != FloatActionType.ICON && !Intrinsics.c(fragmentActivity, this.f57909c)) {
            String simpleName = fragmentActivity.getClass().getSimpleName();
            FragmentActivity fragmentActivity3 = this.f57909c;
            if (Intrinsics.c(simpleName, fragmentActivity3 != null ? fragmentActivity3.getClass().getSimpleName() : null)) {
                lg.a.f68839a.u("VideoFloat-pip", this.f57908b + " 不是相同页面, pip activity:" + this.f57909c + ", cur activity:" + fragmentActivity, true);
                if (floatActionType == FloatActionType.BACK) {
                    aVar.f().release();
                    fragmentActivity.finish();
                    return;
                }
                return;
            }
        }
        FloatActionType floatActionType2 = FloatActionType.HOME;
        if (floatActionType != floatActionType2 && (fragmentActivity2 = this.f57909c) != null && !Intrinsics.c(fragmentActivity, fragmentActivity2)) {
            lg.a.f68839a.u("VideoFloat-pip", this.f57908b + " 主动进入的，不是同一个activity，需要关闭上一个pip", true);
            this.f57920n = false;
            ox.e.b.b(this, null, 1, null);
            com.transsion.player.orplayer.g gVar = this.f57912f;
            if (gVar != null) {
                gVar.release();
            }
            this.f57912f = null;
            G();
        }
        this.f57912f = null;
        this.f57913g = null;
        this.f57914h = null;
        this.f57909c = fragmentActivity;
        this.f57910d = aVar;
        N();
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.u("VideoFloat-pip", this.f57908b + " enterPip---, isPlaying:" + aVar.f().isPlaying(), true);
        try {
            Result.Companion companion = Result.INSTANCE;
            this.f57912f = aVar.f();
            this.f57913g = aVar.l();
            c0828a.c("VideoFloat-pip", "1------enterPictureInPictureMode ----", true);
            this.f57914h = aVar.u();
            if (!this.f57921o) {
                this.f57921o = true;
                ViewGroup viewGroupU = aVar.u();
                ViewParent parent = viewGroupU != null ? viewGroupU.getParent() : null;
                this.f57915i = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                ViewParent parent2 = aVar.l().getParent();
                this.f57916j = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            }
            if (Build.VERSION.SDK_INT < 31 || floatActionType != floatActionType2) {
                PictureInPictureParams pictureInPictureParamsA = a(fragmentActivity, aVar.i() == FloatPlayType.SHORT_TV, aVar.f().isPlaying(), this.f57916j);
                if (pictureInPictureParamsA != null) {
                    fragmentActivity.enterPictureInPictureMode(pictureInPictureParamsA);
                }
                c0828a.i("VideoFloat-pip", "enterPipNext ----", true);
                K(fragmentActivity);
            } else {
                c0828a.i("VideoFloat-pip", " >=android12 ---2 wait auto into", true);
            }
            objM454constructorimpl = Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i("VideoFloat-pip", this.f57908b + " error:" + thM457exceptionOrNullimpl + "}", true);
            L();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        KeyEventDispatcher.Component component = this.f57909c;
        if (component instanceof com.transsion.videofloat.manager.c) {
            Intrinsics.f(component, "null cannot be cast to non-null type com.transsion.videofloat.manager.IVideoPipView");
            ((com.transsion.videofloat.manager.c) component).j();
        }
        PowerManager.WakeLock wakeLock = this.f57911e;
        if (wakeLock != null) {
            wakeLock.release();
        }
        this.f57911e = null;
        FragmentActivity fragmentActivity = this.f57909c;
        if (fragmentActivity != null) {
            fragmentActivity.finish();
        }
        this.f57909c = null;
        this.f57921o = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(boolean z10) {
        long jG;
        lg.a.f68839a.u("VideoFloat-pip", this.f57908b + " -- forward :" + z10, true);
        if (z10) {
            com.transsion.player.orplayer.g gVar = this.f57912f;
            long currentPosition = (gVar != null ? gVar.getCurrentPosition() : 0L) + ((long) 10000);
            com.transsion.player.orplayer.g gVar2 = this.f57912f;
            jG = RangesKt.j(currentPosition, gVar2 != null ? gVar2.getDuration() : 0L);
        } else {
            com.transsion.player.orplayer.g gVar3 = this.f57912f;
            jG = RangesKt.g(0L, (gVar3 != null ? gVar3.getCurrentPosition() : 0L) - ((long) 10000));
        }
        com.transsion.player.orplayer.g gVar4 = this.f57912f;
        if (gVar4 != null) {
            gVar4.seekTo(jG);
        }
    }

    private final List I(FragmentActivity fragmentActivity, boolean z10) {
        RemoteAction[] remoteActionArr = new RemoteAction[3];
        remoteActionArr[0] = D(fragmentActivity, R$mipmap.video_float_ic_backward, R$string.video_pip_action_rewind, 13, 3);
        remoteActionArr[1] = z10 ? D(fragmentActivity, R$mipmap.video_float_ic_pause, R$string.video_pip_action_play, 11, 1) : D(fragmentActivity, R$mipmap.video_float_ic_play, R$string.video_pip_action_pause, 11, 1);
        remoteActionArr[2] = D(fragmentActivity, R$mipmap.video_float_ic_forward, R$string.video_pip_action_fast_forword, 12, 2);
        return CollectionsKt.o(remoteActionArr);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0045  */
    private final boolean J() {
        boolean z10;
        String value;
        Integer numV;
        if (!this.f57926t) {
            ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sa_pip_enable_memory", false, 2, null);
            int iIntValue = (configBeanD == null || (value = configBeanD.getValue()) == null || (numV = StringsKt.v(value)) == null) ? 4 : numV.intValue();
            if (iIntValue > 0) {
                ih.b bVar = ih.b.f65241a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                z10 = ((double) bVar.k(applicationA).totalMem) > ((double) 1073741824) * ((double) iIntValue);
            }
            this.f57927u = z10;
        }
        return this.f57927u;
    }

    private final void K(FragmentActivity fragmentActivity) {
        View childAt;
        Unit unit;
        this.f57924r = false;
        if (this.f57920n) {
            return;
        }
        com.transsion.player.orplayer.g gVar = this.f57912f;
        if (gVar != null) {
            gVar.play();
        }
        this.f57920n = true;
        FrameLayout frameLayout = (FrameLayout) fragmentActivity.findViewById(R.id.content);
        R();
        if (this.f57913g == null) {
            lg.a.f68839a.i("VideoFloat-pip", "onEnterPip playerView is null", true);
            return;
        }
        Q(fragmentActivity);
        try {
            Result.Companion companion = Result.INSTANCE;
            lg.a.f68839a.c("VideoFloat-pip", "onEnterPip childCount：" + frameLayout.getChildCount(), true);
            View childAt2 = frameLayout.getChildAt(0);
            if (childAt2 != null) {
                jg.c.g(childAt2);
                unit = Unit.f67061a;
            } else {
                unit = null;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        frameLayout.addView(this.f57913g, new FrameLayout.LayoutParams(-1, -1));
        ViewGroup viewGroup = this.f57914h;
        if (viewGroup != null) {
            ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            this.f57919m = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                ViewGroup viewGroup2 = this.f57914h;
                if (viewGroup2 != null && (childAt = viewGroup2.getChildAt(i11)) != null) {
                    SimpleSubtitleView simpleSubtitleView = childAt instanceof SimpleSubtitleView ? (SimpleSubtitleView) childAt : null;
                    if (simpleSubtitleView != null) {
                        this.f57917k = com.blankj.utilcode.util.a0.c(simpleSubtitleView.getTextSize());
                        this.f57918l = new Rect(simpleSubtitleView.getPaddingLeft(), simpleSubtitleView.getPaddingTop(), simpleSubtitleView.getPaddingRight(), simpleSubtitleView.getPaddingBottom());
                        ViewGroup.LayoutParams layoutParams2 = simpleSubtitleView.getLayoutParams();
                        layoutParams2.width = -1;
                        simpleSubtitleView.setLayoutParams(layoutParams2);
                        if (i11 == 1) {
                            simpleSubtitleView.setTextSize(0.0f);
                            simpleSubtitleView.setPadding(0, 0, 0, 0);
                        } else {
                            simpleSubtitleView.setTextSize(12.0f);
                            int iA = com.blankj.utilcode.util.a0.a(6.0f);
                            simpleSubtitleView.setPadding(iA, 0, iA, iA);
                        }
                    }
                }
            }
        }
        ViewGroup viewGroup3 = this.f57914h;
        if (viewGroup3 != null) {
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
            layoutParams3.gravity = 81;
            frameLayout.addView(viewGroup3, layoutParams3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:44:0x00d3  */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x00b3, please report this as an issue */
    private final void L() {
        px.a aVar;
        Unit unit;
        View childAt;
        View childAt2;
        this.f57920n = false;
        this.f57921o = false;
        ViewGroup viewGroup = this.f57914h;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                ViewGroup viewGroup2 = this.f57914h;
                if (viewGroup2 != null && (childAt2 = viewGroup2.getChildAt(i11)) != null) {
                    SimpleSubtitleView simpleSubtitleView = childAt2 instanceof SimpleSubtitleView ? (SimpleSubtitleView) childAt2 : null;
                    if (simpleSubtitleView != null) {
                        simpleSubtitleView.setTextSize(this.f57917k);
                        Rect rect = this.f57918l;
                        if (rect != null) {
                            simpleSubtitleView.setPadding(rect.left, rect.top, rect.right, rect.bottom);
                        }
                    }
                }
            }
        }
        R();
        try {
            Result.Companion companion = Result.INSTANCE;
            FragmentActivity fragmentActivity = this.f57909c;
            FrameLayout frameLayout = fragmentActivity != null ? (FrameLayout) fragmentActivity.findViewById(R.id.content) : null;
            if (frameLayout == null || (childAt = frameLayout.getChildAt(0)) == null) {
                unit = null;
            } else {
                jg.c.k(childAt);
                unit = Unit.f67061a;
            }
            Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        ox.e.b.b(this, null, 1, null);
        FragmentActivity fragmentActivity2 = this.f57909c;
        if (fragmentActivity2 != null) {
            Intrinsics.e(fragmentActivity2);
            if (fragmentActivity2.getLifecycle().b().compareTo(Lifecycle.State.STARTED) < 0) {
                lg.a.f68839a.p("VideoFloat-pip", new String[]{this.f57908b + ", 用户主动关闭pip----关闭页面，释放播放器"}, true);
                com.transsion.player.orplayer.g gVar = this.f57912f;
                if (gVar != null) {
                    gVar.release();
                }
                this.f57912f = null;
                G();
            } else {
                lg.a.f68839a.p("VideoFloat-pip", new String[]{this.f57908b + ", 退出画中画返回页面"}, true);
                aVar = this.f57910d;
                if (aVar != null) {
                    S(aVar.r(), aVar.e(), aVar.h());
                }
            }
        } else {
            lg.a.f68839a.p("VideoFloat-pip", new String[]{this.f57908b + ", 退出画中画返回页面"}, true);
            aVar = this.f57910d;
            if (aVar != null) {
                S(aVar.r(), aVar.e(), aVar.h());
            }
        }
        lg.a.f68839a.p("VideoFloat-pip", new String[]{this.f57908b + ", onExitPip----" + this.f57916j}, true);
        ViewGroup viewGroup3 = this.f57916j;
        if (viewGroup3 != null) {
            viewGroup3.addView(this.f57913g);
        }
        if (this.f57914h != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 81;
            layoutParams.bottomMargin = this.f57919m;
            ViewGroup viewGroup4 = this.f57915i;
            if (viewGroup4 != null) {
                viewGroup4.addView(this.f57914h, layoutParams);
            }
        }
        this.f57909c = null;
        this.f57912f = null;
        this.f57913g = null;
        this.f57914h = null;
        this.f57915i = null;
        this.f57916j = null;
        this.f57910d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        com.transsion.player.orplayer.g gVar;
        lg.a.C0828a c0828a = lg.a.f68839a;
        String str = this.f57908b;
        com.transsion.player.orplayer.g gVar2 = this.f57912f;
        c0828a.u("VideoFloat-pip", str + " --onPlayOrPauseClick isPlaying:" + (gVar2 != null ? Boolean.valueOf(gVar2.isPlaying()) : null), true);
        com.transsion.player.orplayer.g gVar3 = this.f57912f;
        if (gVar3 != null && gVar3.isPlaying()) {
            this.f57923q = true;
            com.transsion.player.orplayer.g gVar4 = this.f57912f;
            if (gVar4 != null) {
                gVar4.pause();
                return;
            }
            return;
        }
        com.transsion.player.orplayer.g gVar5 = this.f57912f;
        if (gVar5 != null && gVar5.isComplete() && (gVar = this.f57912f) != null) {
            gVar.seekTo(0L);
        }
        this.f57923q = false;
        com.transsion.player.orplayer.g gVar6 = this.f57912f;
        if (gVar6 != null) {
            gVar6.play();
        }
    }

    private final void N() {
        try {
            Result.Companion companion = Result.INSTANCE;
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", this.f57908b + " start--registerReceiver", false, 4, null);
            Result.m454constructorimpl(Build.VERSION.SDK_INT >= 33 ? Utils.a().registerReceiver(this.f57925s, new IntentFilter("pip_action_control"), 2) : Utils.a().registerReceiver(this.f57925s, new IntentFilter("pip_action_control")));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        O();
    }

    private final void O() {
        this.f57922p = new b(this, new Function1() { // from class: com.transsion.videofloat.manager.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoPipManagerImp.P(this.f57992a, ((Boolean) obj).booleanValue());
            }
        });
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        intentFilter.addAction("android.intent.action.USER_PRESENT");
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(Build.VERSION.SDK_INT >= 33 ? Utils.a().registerReceiver(this.f57922p, intentFilter, 2) : Utils.a().registerReceiver(this.f57922p, intentFilter));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P(VideoPipManagerImp videoPipManagerImp, boolean z10) {
        com.transsion.player.orplayer.g gVar;
        if (z10) {
            com.transsion.player.orplayer.g gVar2 = videoPipManagerImp.f57912f;
            if (gVar2 != null) {
                gVar2.pause();
            }
        } else if (!videoPipManagerImp.f57923q && (gVar = videoPipManagerImp.f57912f) != null) {
            gVar.play();
        }
        return Unit.f67061a;
    }

    private final void Q(FragmentActivity fragmentActivity) {
        try {
            Result.Companion companion = Result.INSTANCE;
            List<Fragment> listY0 = fragmentActivity.getSupportFragmentManager().y0();
            Intrinsics.g(listY0, "getFragments(...)");
            for (Fragment fragment : listY0) {
                if (fragment instanceof DialogFragment) {
                    ((DialogFragment) fragment).dismissAllowingStateLoss();
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void R() {
        ORPlayerView oRPlayerView = this.f57913g;
        ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f57913g);
        }
        ViewGroup viewGroup2 = this.f57914h;
        ViewParent parent2 = viewGroup2 != null ? viewGroup2.getParent() : null;
        ViewGroup viewGroup3 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
        if (viewGroup3 != null) {
            viewGroup3.removeView(this.f57914h);
        }
    }

    private final void S(String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put(EventConstants.KEY_ACTION, "float_back_page");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "pip_float_back");
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        hj.i.f64505a.p(str3, map);
    }

    private final void T(boolean z10, String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put(EventConstants.KEY_ACTION, z10 ? "allow" : "cancel");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "pip_permission_dialog");
        map.put(WebConstants.PAGE_FROM, str3);
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        hj.i.f64505a.p("pip_permission_dialog_pip", map);
    }

    private final void U(String str, String str2, String str3) {
        HashMap map = new HashMap();
        map.put("subject_id", str);
        map.put(WebConstants.PAGE_FROM, str3);
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "pip_permission_dialog");
        if (str2 == null) {
            str2 = "";
        }
        map.put("ops", str2);
        hj.i.f64505a.s("pip_permission_dialog_pip", "dialog_show", map);
    }

    private final void V(boolean z10) {
        HashMap map = new HashMap();
        map.put("has_permission", String.valueOf(z10));
        hj.i.f64505a.s("pip_opt", "app_perf", map);
    }

    private final void W(FragmentActivity fragmentActivity, final boolean z10, final String str, final String str2, final Function1 function1) {
        ye.c.f78993a.e(fragmentActivity).b("android.permission.PICTURE_IN_PICTURE").b().c(new ze.b() { // from class: com.transsion.videofloat.manager.w
            @Override // ze.b
            public final void a(cf.f fVar, List list, boolean z11, boolean z12) {
                VideoPipManagerImp.X(z10, this, str2, str, fVar, list, z11, z12);
            }
        }).d(new ze.a() { // from class: com.transsion.videofloat.manager.x
            @Override // ze.a
            public final void a(BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
                VideoPipManagerImp.Y(this.f57987a, str2, str, baseDialog, bool, permissionDialogClickType);
            }
        }).a(new ze.c() { // from class: com.transsion.videofloat.manager.y
            @Override // ze.c
            public final void a(boolean z11, List list, List list2) {
                VideoPipManagerImp.Z(this.f57990a, function1, z11, list, list2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(boolean z10, VideoPipManagerImp videoPipManagerImp, String str, String str2, cf.f scope, List deniedList, boolean z11, boolean z12) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z11) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "pip 请求权限之后，", false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "pip 请求权限前，提示弹窗，isFullLand：" + z10, false, 4, null);
        if (z10) {
            scope.d(new VideoFloatPermissionDialog(true, deniedList));
        } else {
            scope.e(deniedList, new bf.a(null, Utils.a().getString(R$string.video_float_tips_pip), Utils.a().getString(R$string.video_float_enable), Integer.valueOf(R$mipmap.video_float_ic_permission_img), Integer.valueOf(R$color.white_20), 1, null));
        }
        px.a aVar = videoPipManagerImp.f57910d;
        videoPipManagerImp.U(str, aVar != null ? aVar.e() : null, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(VideoPipManagerImp videoPipManagerImp, String str, String str2, BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
        boolean z10 = permissionDialogClickType == PermissionDialogClickType.POSITIVE;
        px.a aVar = videoPipManagerImp.f57910d;
        videoPipManagerImp.T(z10, str, aVar != null ? aVar.e() : null, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(VideoPipManagerImp videoPipManagerImp, Function1 function1, boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", "pip 请求权限结果:" + z10, false, 4, null);
        videoPipManagerImp.V(z10);
        if (z10) {
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        } else if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    @Override // ox.e
    public PictureInPictureParams a(FragmentActivity activity, boolean z10, boolean z11, ViewGroup viewGroup) {
        Intrinsics.h(activity, "activity");
        if (activity.isFinishing() || activity.isDestroyed()) {
            return null;
        }
        if (this.f57924r && !z11) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", this.f57908b + " updatePictureInPictureParams isEntering return", false, 4, null);
            return null;
        }
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat-pip", this.f57908b + " updatePictureInPictureParams AutoEnterEnabled:" + z11 + "}", false, 4, null);
        Rational rational = new Rational(z10 ? 9 : 16, z10 ? 16 : 9);
        PictureInPictureParams.Builder builderA = l.a();
        builderA.setAspectRatio(rational);
        builderA.setActions(I(activity, z11));
        if (viewGroup != null) {
            Rect rect = new Rect();
            viewGroup.getGlobalVisibleRect(rect);
            builderA.setSourceRectHint(rect);
        }
        if (Build.VERSION.SDK_INT >= 31) {
            builderA.setAutoEnterEnabled(z11);
        }
        PictureInPictureParams pictureInPictureParamsBuild = builderA.build();
        try {
            activity.setPictureInPictureParams(pictureInPictureParamsBuild);
        } catch (Throwable unused) {
        }
        return pictureInPictureParamsBuild;
    }

    @Override // ox.e
    public boolean b(String tag) {
        Intrinsics.h(tag, "tag");
        px.a aVar = this.f57910d;
        if (aVar == null) {
            return false;
        }
        return Intrinsics.c(tag, aVar.r() + aVar.q() + aVar.c());
    }

    @Override // ox.e
    public boolean c() {
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        boolean zHasSystemFeature = Utils.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture");
        boolean zJ = J();
        lg.a.f68839a.u("VideoFloat-pip", this.f57908b + " --hasPipFeature:" + zHasSystemFeature + ", isMemoryEnable:" + zJ + " ", true);
        return zHasSystemFeature && zJ;
    }

    @Override // ox.e
    public void d(boolean z10) {
        Object objM454constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new VideoPipManagerImp$closePip$1$1(this, z10, null), 3, null));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.f68839a.i("VideoFloat-pip", "closePip error:" + thM457exceptionOrNullimpl, true);
        }
    }

    @Override // ox.e
    public void e() {
        boolean zHasSystemFeature = Build.VERSION.SDK_INT >= 26 ? Utils.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture") : true;
        HashMap map = new HashMap();
        map.put("pip_opt", String.valueOf(zHasSystemFeature));
        map.put("pip_enable", String.valueOf(c()));
        hj.i.f64505a.s("pip", "app_perf", map);
    }

    @Override // ox.e
    public boolean f(com.transsion.player.orplayer.g gVar) {
        lg.a.C0828a.v(lg.a.f68839a, "VideoFloat-pip", "2-isEnterPip：" + this.f57920n + ", " + this.f57912f + ", " + gVar + " ", false, 4, null);
        if (!this.f57920n) {
            return false;
        }
        com.transsion.player.orplayer.g gVar2 = this.f57912f;
        return gVar2 == null ? false : Intrinsics.c(gVar2, gVar);
    }

    @Override // ox.e
    public boolean g() {
        if (Build.VERSION.SDK_INT >= 26) {
            return Utils.a().getPackageManager().hasSystemFeature("android.software.picture_in_picture");
        }
        return true;
    }

    @Override // ox.e
    public void h(FragmentActivity activity, px.a bean) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        this.f57909c = activity;
        this.f57910d = bean;
        N();
        lg.a.C0828a c0828a = lg.a.f68839a;
        c0828a.p("VideoFloat-pip", new String[]{">=android12  " + this.f57908b + " =====updateData---, isPlaying:" + bean.f().isPlaying() + ", isSetData:" + this.f57921o}, true);
        this.f57914h = bean.u();
        if (!this.f57921o) {
            this.f57921o = true;
            ViewGroup viewGroupU = bean.u();
            ViewParent parent = viewGroupU != null ? viewGroupU.getParent() : null;
            this.f57915i = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            ViewParent parent2 = bean.l().getParent();
            ViewGroup viewGroup = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            this.f57916j = viewGroup;
            c0828a.c("VideoFloat-pip", ">=android12  " + this.f57908b + " =====updateData---, playerOriginalContainer:" + viewGroup, true);
        }
        this.f57912f = bean.f();
        this.f57913g = bean.l();
    }

    @Override // ox.e
    public void i(FragmentActivity fragmentActivity) {
        FragmentActivity fragmentActivity2;
        if (fragmentActivity == null || (fragmentActivity2 = this.f57909c) == null || Intrinsics.c(fragmentActivity, fragmentActivity2)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                lg.a.C0828a.r(lg.a.f68839a, "VideoFloat-pip", new String[]{this.f57908b + " --unregisterReceiver"}, false, 4, null);
                Utils.a().unregisterReceiver(this.f57925s);
                Utils.a().unregisterReceiver(this.f57922p);
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
        }
    }

    @Override // ox.e
    public boolean isPlaying() {
        com.transsion.player.orplayer.g gVar;
        if (this.f57920n && (gVar = this.f57912f) != null) {
            return gVar.isPlaying();
        }
        return false;
    }

    @Override // ox.e
    public boolean j() {
        return this.f57920n;
    }

    @Override // ox.e
    public void k(final FragmentActivity activity, final px.a bean, final FloatActionType actionType, boolean z10) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(bean, "bean");
        Intrinsics.h(actionType, "actionType");
        this.f57924r = true;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26) {
            return;
        }
        if (i11 >= 31 && actionType == FloatActionType.HOME) {
            this.f57924r = false;
            lg.a.f68839a.p("VideoFloat-pip", new String[]{">=android12，触发home键，使用自动模式，不使用home键监听"}, true);
            return;
        }
        if (ye.c.f78993a.c(activity)) {
            F(activity, bean, actionType);
            return;
        }
        lg.a.f68839a.c("VideoFloat-pip", "画中画 没权限", true);
        int i12 = c.f57931a[actionType.ordinal()];
        if (i12 == 1) {
            W(activity, z10, bean.h(), bean.r(), new Function1() { // from class: com.transsion.videofloat.manager.v
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VideoPipManagerImp.E(this.f57979a, activity, bean, actionType, ((Boolean) obj).booleanValue());
                }
            });
        } else if (i12 == 2) {
            activity.finish();
        } else if (i12 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        this.f57924r = false;
    }

    @Override // ox.e
    public void onPipModeChanged(boolean z10) {
        FragmentActivity fragmentActivity = this.f57909c;
        Object obj = null;
        if (fragmentActivity == null || fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
            lg.a.C0828a.l(lg.a.f68839a, "CommonInfo", "onPipModeChanged, activity:" + fragmentActivity + " isFinishing:" + (fragmentActivity != null ? Boolean.valueOf(fragmentActivity.isFinishing()) : null) + ", " + (fragmentActivity != null ? Boolean.valueOf(fragmentActivity.isDestroyed()) : null), false, 4, null);
            return;
        }
        lg.a.f68839a.p("VideoFloat-pip", new String[]{"onPipModeChanged " + this.f57908b + ", activity:" + fragmentActivity.getClass().getSimpleName() + " onPictureInPictureModeChanged 2， isInPipMode:" + z10}, true);
        if (z10) {
            K(fragmentActivity);
            try {
                Result.Companion companion = Result.INSTANCE;
                PowerManager powerManager = (PowerManager) fragmentActivity.getSystemService("power");
                PowerManager.WakeLock wakeLockNewWakeLock = powerManager != null ? powerManager.newWakeLock(26, "MB::PlayerPip") : null;
                this.f57911e = wakeLockNewWakeLock;
                if (wakeLockNewWakeLock != null) {
                    wakeLockNewWakeLock.acquire();
                    obj = Unit.f67061a;
                }
                Result.m454constructorimpl(obj);
                return;
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
                return;
            }
        }
        ORPlayerView oRPlayerView = this.f57913g;
        if (oRPlayerView != null) {
            oRPlayerView.getKeepScreenOn();
        }
        L();
        try {
            Result.Companion companion3 = Result.INSTANCE;
            PowerManager.WakeLock wakeLock = this.f57911e;
            if (wakeLock != null) {
                wakeLock.release();
            }
            this.f57911e = null;
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th3) {
            Result.Companion companion4 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th3));
        }
    }
}
