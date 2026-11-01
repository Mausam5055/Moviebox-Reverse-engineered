package com.transsion.baseui.music;

import android.R;
import android.app.Activity;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.g0;
import com.google.android.material.card.MaterialCardView;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import ko.f0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class MusicFloatManager implements com.transsion.player.orplayer.f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f43454h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f43455i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Lazy f43456j = LazyKt.b(new Function0() { // from class: com.transsion.baseui.music.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return MusicFloatManager.c();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private MediaItem f43458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f43459c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.transsion.player.orplayer.g f43461e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map f43463g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f43457a = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CopyOnWriteArrayList f43460d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List f43462f = new ArrayList();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final MusicFloatManager a() {
            return (MusicFloatManager) MusicFloatManager.f43456j.getValue();
        }

        public final MusicFloatManager b() {
            return a();
        }
    }

    /* JADX INFO: renamed from: com.transsion.baseui.music.MusicFloatManager$onPlayerRelease$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.baseui.music.MusicFloatManager$onPlayerRelease$1", f = "MusicFloatManager.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final /* synthetic */ ao.e $mediaSource;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ao.e eVar, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$mediaSource = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MusicFloatManager.this.new AnonymousClass1(this.$mediaSource, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            MediaItem mediaItemI;
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            com.transsion.player.mediasession.i iVar = com.transsion.player.mediasession.i.f48408a;
            String strP = MusicFloatManager.this.p();
            ao.e eVar = this.$mediaSource;
            iVar.a(strP + " --> onPlayerRelease() --> subjectId = " + ((eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getSubjectId()));
            com.transsion.player.orplayer.g gVar = MusicFloatManager.this.f43461e;
            if (gVar != null) {
                gVar.removePlayerListener(MusicFloatManager.this);
            }
            MusicFloatManager.this.f43461e = null;
            CopyOnWriteArrayList copyOnWriteArrayList = MusicFloatManager.this.f43460d;
            ao.e eVar2 = this.$mediaSource;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                ((com.transsion.player.orplayer.f) it.next()).onPlayerRelease(eVar2);
            }
            MusicFloatManager.this.B(null);
            MusicFloatManager.this.C(null);
            MusicReport.f43473a.c();
            return Unit.f67061a;
        }
    }

    public MusicFloatManager() {
        g0.f9592i.a().getLifecycle().a(com.transsion.baseui.music.a.f43479a);
        MusicReport.f43473a.c();
        this.f43463g = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MusicFloatManager c() {
        return new MusicFloatManager();
    }

    private final void j(long j11, long j12, int i11, int i12, ao.e eVar) {
        MediaItem mediaItemI;
        MediaItem mediaItemI2;
        MediaItem mediaItemI3;
        MediaItem mediaItemI4;
        MediaItem mediaItemI5;
        MediaItem mediaItemI6;
        MediaItem mediaItemI7;
        MediaItem mediaItemI8;
        MediaItem mediaItemI9;
        MediaItem mediaItemI10;
        MediaItem mediaItemI11;
        MediaItem mediaItemI12;
        MediaItem mediaItemI13;
        boolean zC = false;
        if ((eVar == null || (mediaItemI13 = eVar.i()) == null) ? false : Intrinsics.c(mediaItemI13.isMusic(), Boolean.FALSE)) {
            return;
        }
        n nVar = (n) this.f43463g.get((eVar == null || (mediaItemI12 = eVar.i()) == null) ? null : mediaItemI12.getMediaId());
        if (!TextUtils.equals((eVar == null || (mediaItemI11 = eVar.i()) == null) ? null : mediaItemI11.getPageName(), "music_float")) {
            if (!((eVar == null || (mediaItemI10 = eVar.i()) == null) ? false : Intrinsics.c(mediaItemI10.getInBackground(), Boolean.TRUE))) {
                if (nVar != null) {
                    MusicReport.f43473a.d(nVar);
                    this.f43463g.put((eVar == null || (mediaItemI9 = eVar.i()) == null) ? null : mediaItemI9.getMediaId(), null);
                    return;
                }
                return;
            }
        }
        if (nVar == null) {
            nVar = new n((eVar == null || (mediaItemI8 = eVar.i()) == null) ? null : mediaItemI8.getMediaId(), (eVar == null || (mediaItemI7 = eVar.i()) == null) ? null : mediaItemI7.getOps(), (eVar == null || (mediaItemI6 = eVar.i()) == null) ? null : mediaItemI6.getSubjectId(), 0L, 0L, j12, 0L, 0L, i11, i12);
        }
        long jG = j11 - nVar.g();
        if (!(1 <= jG && jG < 2000)) {
            jG = 0;
        }
        if (eVar != null && (mediaItemI5 = eVar.i()) != null) {
            zC = Intrinsics.c(mediaItemI5.getInBackground(), Boolean.TRUE);
        }
        if (zC) {
            nVar.m(nVar.c() + jG);
        } else {
            nVar.l(nVar.b() + jG);
        }
        nVar.n((eVar == null || (mediaItemI4 = eVar.i()) == null) ? null : mediaItemI4.getOps());
        nVar.r(j12);
        nVar.s(i11);
        nVar.k(i12);
        nVar.q((eVar == null || (mediaItemI3 = eVar.i()) == null) ? null : mediaItemI3.getSubjectId());
        nVar.p(j11);
        nVar.o(nVar.f() + jG);
        this.f43463g.put((eVar == null || (mediaItemI2 = eVar.i()) == null) ? null : mediaItemI2.getMediaId(), nVar);
        if (nVar.f() > 10000) {
            MusicReport.f43473a.d(nVar);
            this.f43463g.put((eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getMediaId(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean m(MusicFloatManager musicFloatManager, Ref.ObjectRef objectRef, View view, MotionEvent motionEvent) {
        View view2 = (View) objectRef.element;
        Intrinsics.e(motionEvent);
        if (!musicFloatManager.y(view2, motionEvent)) {
            ((MusicFloatView) objectRef.element).setExpand(false);
        }
        return false;
    }

    private final FrameLayout o(AppCompatActivity appCompatActivity) {
        Object objM454constructorimpl;
        Window window;
        View decorView;
        try {
            Result.Companion companion = Result.INSTANCE;
            FrameLayout frameLayout = (appCompatActivity == null || (window = appCompatActivity.getWindow()) == null || (decorView = window.getDecorView()) == null) ? null : (FrameLayout) decorView.findViewById(R.id.content);
            if (!(frameLayout instanceof FrameLayout)) {
                frameLayout = null;
            }
            objM454constructorimpl = Result.m454constructorimpl(frameLayout);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return (FrameLayout) (Result.m457exceptionOrNullimpl(objM454constructorimpl) == null ? objM454constructorimpl : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String p() {
        String simpleName = MusicFloatManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final boolean y(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int i11 = iArr[0];
        if (rawX <= i11 || rawX >= i11 + view.getWidth()) {
            return false;
        }
        int i12 = iArr[1];
        return rawY > ((float) i12) && rawY < ((float) (i12 + view.getHeight()));
    }

    public final void A(boolean z10) {
        this.f43457a = z10;
    }

    public final void B(MediaItem mediaItem) {
        com.transsion.player.mediasession.i.f48408a.a(p() + " --> setMediaItem() --> musicFloatBean = " + mediaItem);
        if (!(mediaItem != null ? Intrinsics.c(mediaItem.isMusic(), Boolean.TRUE) : false)) {
            mediaItem = null;
        }
        this.f43458b = mediaItem;
    }

    public final void C(String str) {
        this.f43459c = str;
    }

    @Override // com.transsion.player.orplayer.f
    public void canNonSubscriberPlay(boolean z10, int i11, int i12, mo.d dVar) {
        com.transsion.player.orplayer.f.a.a(this, z10, i11, i12, dVar);
    }

    public final void i(Activity activity, MotionEvent event) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(event, "event");
        MusicFloatView musicFloatView = (MusicFloatView) activity.findViewById(activity.hashCode());
        if (musicFloatView != null && musicFloatView.getVisibility() == 0 && this.f43457a && !y(musicFloatView, event)) {
            musicFloatView.setExpand(false);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void initPlayer() {
        com.transsion.player.orplayer.f.a.b(this);
    }

    public final void k(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        if (this.f43460d.contains(listener)) {
            return;
        }
        this.f43460d.add(listener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, android.view.View] */
    /* JADX WARN: Type inference failed for: r0v6, types: [T, android.view.View, com.transsion.baseui.music.MusicFloatView] */
    public final void l(AppCompatActivity appCompatActivity, int i11) {
        if (appCompatActivity == null) {
            com.transsion.player.mediasession.i.f48408a.a(p() + " --> attach() --> activity == null");
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = appCompatActivity.findViewById(appCompatActivity.hashCode());
        if (q() == null) {
            MusicFloatView musicFloatView = (MusicFloatView) objectRef.element;
            if (musicFloatView != null) {
                musicFloatView.setVisibility(8);
                return;
            }
            return;
        }
        MusicFloatView musicFloatView2 = (MusicFloatView) objectRef.element;
        if (musicFloatView2 != null) {
            musicFloatView2.setVisibility(0);
        }
        if (objectRef.element == 0) {
            ?? musicFloatView3 = new MusicFloatView(appCompatActivity);
            objectRef.element = musicFloatView3;
            musicFloatView3.setId(appCompatActivity.hashCode());
            FrameLayout frameLayoutO = o(appCompatActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            if (frameLayoutO != null) {
                frameLayoutO.setOnTouchListener(new View.OnTouchListener() { // from class: com.transsion.baseui.music.b
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        return MusicFloatManager.m(this.f43480a, objectRef, view, motionEvent);
                    }
                });
            }
            layoutParams.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            layoutParams.bottomMargin = dk.a.b(Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            if (frameLayoutO != null) {
                frameLayoutO.addView((View) objectRef.element, layoutParams);
            }
        }
        ((MusicFloatView) objectRef.element).refresh();
    }

    public final void n() {
        com.transsion.player.orplayer.g gVarS = s();
        if (gVarS != null) {
            gVarS.stop();
        }
        if (gVarS != null) {
            gVarS.release();
        }
        f43454h.b().B(null);
        com.transsion.player.mediasession.h.f48399a.p();
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
        MediaItem mediaItem = this.f43458b;
        if (mediaItem != null) {
            mediaItem.setState(MediaItem.MUSIC_FLOAT_STATE_COMPLETION);
        }
        Iterator it = this.f43460d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onCompletion(eVar);
        }
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
        MediaItem mediaItemI;
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.f.a.q(this, errorInfo, eVar);
        com.transsion.player.mediasession.i.f48408a.a(p() + " --> onPlayError() --> subjectId = " + ((eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getSubjectId()));
        MediaItem mediaItem = this.f43458b;
        if (mediaItem != null) {
            mediaItem.setState("error");
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerRelease(ao.e eVar) {
        com.transsion.player.orplayer.f.a.t(this, eVar);
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new AnonymousClass1(eVar, null), 3, null);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayerReset() {
        com.transsion.player.orplayer.f.a.v(this);
        com.transsion.player.mediasession.i.f48408a.a(p() + " --> onPlayerReset()");
    }

    @Override // com.transsion.player.orplayer.f
    public void onPrepare(ao.e eVar) {
        com.transsion.player.orplayer.f.a.w(this, eVar);
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        com.transsion.player.orplayer.f.a.y(this, j11, eVar);
        Iterator it = this.f43460d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onProgress(j11, eVar);
        }
        com.transsion.player.orplayer.g gVarS = s();
        long duration = gVarS != null ? gVarS.getDuration() : 0L;
        com.transsion.player.orplayer.g gVarS2 = s();
        Pair bitrate = gVarS2 != null ? gVarS2.getBitrate() : null;
        j(j11, duration, bitrate != null ? ((Number) bitrate.getFirst()).intValue() : 0, bitrate != null ? ((Number) bitrate.getSecond()).intValue() : 0, eVar);
        MediaItem mediaItemQ = q();
        if (mediaItemQ != null) {
            mediaItemQ.setPosition(Long.valueOf(j11));
        }
        MediaItem mediaItemQ2 = q();
        if (mediaItemQ2 != null) {
            mediaItemQ2.setState(MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
        MediaItem mediaItemQ3 = q();
        if (mediaItemQ3 != null) {
            mediaItemQ3.setDuration(Long.valueOf(duration));
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.f.a.A(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onSetDataSource() {
        com.transsion.player.orplayer.f.a.B(this);
        com.transsion.player.mediasession.i.f48408a.a(p() + " --> onSetDataSource()");
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
        MediaItem mediaItemI;
        com.transsion.player.orplayer.f.a.F(this, eVar);
        com.transsion.player.mediasession.i.f48408a.a(p() + " --> onVideoPause() --> subjectId = " + ((eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getSubjectId()));
        MediaItem mediaItem = this.f43458b;
        if (mediaItem != null) {
            mediaItem.setState("pause");
        }
        Iterator it = this.f43460d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoPause(eVar);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        MediaItem mediaItemI;
        com.transsion.player.orplayer.f.a.I(this, eVar);
        com.transsion.player.mediasession.i.f48408a.a(p() + " --> onVideoStart() --> subjectId = " + ((eVar == null || (mediaItemI = eVar.i()) == null) ? null : mediaItemI.getSubjectId()));
        MediaItem mediaItem = this.f43458b;
        if (mediaItem != null) {
            mediaItem.setState(MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
        Iterator it = this.f43460d.iterator();
        while (it.hasNext()) {
            ((com.transsion.player.orplayer.f) it.next()).onVideoStart(eVar);
        }
    }

    public final MediaItem q() {
        return this.f43458b;
    }

    public final String r() {
        return this.f43459c;
    }

    public final com.transsion.player.orplayer.g s() {
        if (this.f43461e == null) {
            f0 f0Var = new f0();
            f0Var.addPlayerListener(this);
            this.f43461e = f0Var;
        }
        return this.f43461e;
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }

    public final String t(String str) {
        return str + "_" + o.f43500a.a(6);
    }

    public final void u() {
        f43454h.b().B(null);
        com.transsion.player.mediasession.h.f48399a.p();
        List<Activity> listA = com.blankj.utilcode.util.a.a();
        if (listA != null) {
            for (Activity activity : listA) {
                BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
                if (baseMusicFloatActivity != null) {
                    MusicFloatView musicFloatView = (MusicFloatView) baseMusicFloatActivity.findViewById(baseMusicFloatActivity.hashCode());
                    if (musicFloatView != null) {
                        musicFloatView.setVisibility(8);
                    }
                    baseMusicFloatActivity.onCloseMusicFloating();
                }
            }
        }
    }

    public final boolean v() {
        return this.f43457a;
    }

    public final List w() {
        return this.f43462f;
    }

    public final boolean x(AppCompatActivity appCompatActivity) {
        MusicFloatView musicFloatView = appCompatActivity != null ? (MusicFloatView) appCompatActivity.findViewById(appCompatActivity.hashCode()) : null;
        return musicFloatView != null && musicFloatView.getVisibility() == 0;
    }

    public final void z(com.transsion.player.orplayer.f listener) {
        Intrinsics.h(listener, "listener");
        if (this.f43460d.contains(listener)) {
            this.f43460d.remove(listener);
        }
    }
}
