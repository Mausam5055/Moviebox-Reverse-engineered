package dp;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.y;
import com.google.android.material.imageview.ShapeableImageView;
import com.noober.background.view.BLTextView;
import com.transsion.baselib.report.l;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.g;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.adapter.i;
import com.transsion.postdetail.video.PostFeedVideoView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import ko.l0;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import nh.m;
import so.g0;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends RecyclerView.r implements a, com.transsion.player.orplayer.f, l.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f61381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Fragment f61382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RecyclerView f61383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f61384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f61385e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f61386f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f61387g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Boolean f61388h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f61389i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f61390j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private g f61391k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private PostFeedVideoView f61392l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.transsion.postdetail.layer.b f61393m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f61394n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f61395o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f61396p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f61397q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f61398r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private g0 f61399s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f61400t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f61401u;

    public e(Context context, Fragment fragment, RecyclerView recyclerView, i iVar, String pageName, String subpageName, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(subpageName, "subpageName");
        this.f61381a = context;
        this.f61382b = fragment;
        this.f61383c = recyclerView;
        this.f61384d = iVar;
        this.f61385e = pageName;
        this.f61386f = subpageName;
        this.f61387g = z10;
        this.f61389i = dk.a.b(82);
        this.f61390j = dk.a.b(56);
        this.f61394n = -1;
        this.f61396p = y.a();
        this.f61398r = true;
        this.f61401u = 1.0f;
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(this);
        }
        l.f43359a.g(this);
        o();
        if (recyclerView != null) {
            recyclerView.postDelayed(new Runnable() { // from class: dp.b
                @Override // java.lang.Runnable
                public final void run() {
                    e.g(this.f61378a);
                }
            }, 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(e eVar) {
        eVar.h();
    }

    private final void h() {
        PostSubjectItem postSubjectItem;
        List<Object> data;
        RecyclerView recyclerView = this.f61383c;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || !m.f70474a.e()) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition();
        IntProgression intProgressionP = this.f61400t > 0 ? RangesKt.p(iFindLastVisibleItemPosition, iFindFirstVisibleItemPosition) : new IntRange(iFindFirstVisibleItemPosition, iFindLastVisibleItemPosition);
        int first = intProgressionP.getFirst();
        int last = intProgressionP.getLast();
        int step = intProgressionP.getStep();
        if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
            return;
        }
        while (true) {
            View viewFindViewByPosition = linearLayoutManager.findViewByPosition(first);
            if (viewFindViewByPosition != null) {
                Rect rect = new Rect();
                viewFindViewByPosition.getGlobalVisibleRect(rect);
                int height = viewFindViewByPosition.getHeight();
                int iF = RangesKt.f(rect.bottom - (height / 2), rect.top);
                int i11 = (this.f61396p - this.f61389i) / 2;
                int iB = i11 - dk.a.b(200);
                int iB2 = dk.a.b(250) + i11;
                i iVar = this.f61384d;
                if (first >= ((iVar == null || (data = iVar.getData()) == null) ? 0 : data.size())) {
                    return;
                }
                i iVar2 = this.f61384d;
                if (iVar2 != null && (postSubjectItem = (PostSubjectItem) iVar2.getItem(first)) != null) {
                    if (Intrinsics.c(this.f61395o, postSubjectItem.getPostId())) {
                        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "triggerVideoPlay position:" + first + " same ~ return", false, 4, null);
                        return;
                    }
                    if (postSubjectItem.isVideo()) {
                        View viewP0 = this.f61384d.p0(first, R$id.layout_content_video);
                        FrameLayout frameLayout = viewP0 instanceof FrameLayout ? (FrameLayout) viewP0 : null;
                        if (frameLayout == null) {
                            lg.a.C0828a.l(lg.a.f68839a, "PostFeedVideo", "triggerVideoPlay itemVideoContainer is null", false, 4, null);
                        } else {
                            lg.a.C0828a.r(lg.a.f68839a, "PostFeedVideo", new String[]{StringsKt.n("\n                checkActiveItemPosition position:" + first + ",  \n                    top:" + rect.top + ", bottom:" + rect.bottom + "\n                    screenCenterTop：" + iB + "   screenCenterBottom：" + iB2 + "\n                    itemHeight:" + height + " viewCenter:" + iF + ", screenCenter:" + i11 + "\n            ")}, false, 4, null);
                            if (Math.abs(i11 - iF) < dk.a.b(Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE)) {
                                p(first, postSubjectItem, frameLayout);
                                return;
                            }
                        }
                    }
                }
            }
            if (first == last) {
                return;
            } else {
                first += step;
            }
        }
    }

    private final void i(RecyclerView recyclerView) {
        int iFindFirstVisibleItemPosition;
        int iFindLastVisibleItemPosition;
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
        if (linearLayoutManager == null || (iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition()) > (iFindLastVisibleItemPosition = linearLayoutManager.findLastVisibleItemPosition())) {
            return;
        }
        while (true) {
            View viewFindViewByPosition = linearLayoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
            if (viewFindViewByPosition != null) {
                Rect rect = new Rect();
                viewFindViewByPosition.getGlobalVisibleRect(rect);
                if (rect.bottom - rect.top <= viewFindViewByPosition.getHeight() * 0.5f) {
                    m(iFindFirstVisibleItemPosition);
                }
            }
            if (iFindFirstVisibleItemPosition == iFindLastVisibleItemPosition) {
                return;
            } else {
                iFindFirstVisibleItemPosition++;
            }
        }
    }

    private final void j(Context context) {
        if (this.f61391k == null) {
            PostFeedVideoView postFeedVideoView = new PostFeedVideoView(context);
            postFeedVideoView.updateMute(this.f61398r);
            postFeedVideoView.setMuteClickCallback(new Function1() { // from class: dp.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return e.k(this.f61379a, ((Boolean) obj).booleanValue());
                }
            });
            postFeedVideoView.setRemovePlayerCallback(new Function0() { // from class: dp.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return e.l(this.f61380a);
                }
            });
            this.f61392l = postFeedVideoView;
            g gVarS = l0.f66968a.s();
            lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "createPlayer----", false, 4, null);
            gVarS.addPlayerListener(this);
            PostFeedVideoView postFeedVideoView2 = this.f61392l;
            gVarS.setSurfaceView(postFeedVideoView2 != null ? postFeedVideoView2.getSurfaceView() : null);
            gVarS.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
            this.f61391k = gVarS;
        }
        if (this.f61393m == null) {
            com.transsion.postdetail.layer.b bVar = new com.transsion.postdetail.layer.b();
            g gVar = this.f61391k;
            Intrinsics.e(gVar);
            bVar.v(gVar);
            bVar.u(this.f61385e);
            bVar.z(this.f61386f);
            this.f61393m = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(e eVar, boolean z10) {
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "volume click isMute:" + z10, false, 4, null);
        eVar.f61398r = z10;
        g gVar = eVar.f61391k;
        if (gVar != null) {
            gVar.setVolume(z10 ? 0.0f : eVar.f61401u);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(e eVar) {
        eVar.n();
        return Unit.f67061a;
    }

    private final void m(int i11) {
        List<Object> data;
        try {
            Result.Companion companion = Result.INSTANCE;
            PostFeedVideoView postFeedVideoView = this.f61392l;
            if ((postFeedVideoView != null ? postFeedVideoView.getParent() : null) != null && this.f61394n == i11) {
                i iVar = this.f61384d;
                if (i11 >= ((iVar == null || (data = iVar.getData()) == null) ? 0 : data.size())) {
                    return;
                }
                i iVar2 = this.f61384d;
                PostSubjectItem postSubjectItem = iVar2 != null ? (PostSubjectItem) iVar2.getItem(i11) : null;
                if (postSubjectItem != null && postSubjectItem.isVideo()) {
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    Group group = postSubjectItem.getGroup();
                    String name = group != null ? group.getName() : null;
                    lg.a.C0828a.f(c0828a, "PostFeedVideo", "position：" + i11 + " --已隐藏超过50%, 移除播放器, " + name + ", " + postSubjectItem.getContent(), false, 4, null);
                    n();
                }
                Result.m454constructorimpl(Unit.f67061a);
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    private final void n() {
        AppCompatImageView appCompatImageView;
        BLTextView bLTextView;
        ShapeableImageView shapeableImageView;
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            com.transsion.postdetail.layer.b.e(bVar, false, 1, null);
        }
        g0 g0Var = this.f61399s;
        if (g0Var != null && (shapeableImageView = g0Var.f75531d) != null) {
            jg.c.k(shapeableImageView);
        }
        g0 g0Var2 = this.f61399s;
        if (g0Var2 != null && (bLTextView = g0Var2.f75533f) != null) {
            jg.c.k(bLTextView);
        }
        g0 g0Var3 = this.f61399s;
        if (g0Var3 != null && (appCompatImageView = g0Var3.f75532e) != null) {
            jg.c.k(appCompatImageView);
        }
        this.f61399s = null;
        PostFeedVideoView postFeedVideoView = this.f61392l;
        ViewParent parent = postFeedVideoView != null ? postFeedVideoView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f61392l);
        }
        g gVar = this.f61391k;
        if (gVar != null) {
            gVar.stop();
        }
        g gVar2 = this.f61391k;
        if (gVar2 != null) {
            gVar2.reset();
        }
        g gVar3 = this.f61391k;
        if (gVar3 != null) {
            gVar3.clearScreen();
        }
        this.f61394n = -1;
        this.f61395o = null;
        ep.c.f61972a.a();
    }

    private final void o() {
        Boolean boolM1;
        Boolean boolValueOf;
        boolean zBooleanValue = true;
        if (!Intrinsics.c(this.f61388h, Boolean.TRUE)) {
            ConfigBean configBeanC = sm.f.f75407c.a().c("sa_post_video_auto_play", true);
            String value = configBeanC != null ? configBeanC.getValue() : null;
            if (value == null || value.length() == 0) {
                boolValueOf = Boolean.FALSE;
            } else {
                Boolean boolM2 = StringsKt.m1(value);
                boolValueOf = Boolean.valueOf(boolM2 != null ? boolM2.booleanValue() : false);
            }
            this.f61388h = boolValueOf;
        }
        ConfigBean configBeanC2 = sm.f.f75407c.a().c("room_home_video_play_mute", true);
        String value2 = configBeanC2 != null ? configBeanC2.getValue() : null;
        if (value2 != null && value2.length() != 0 && (boolM1 = StringsKt.m1(value2)) != null) {
            zBooleanValue = boolM1.booleanValue();
        }
        this.f61398r = zBooleanValue;
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "----------------initConfig, isOpen:" + this.f61388h + "+------+isVideoMute:" + zBooleanValue, false, 4, null);
    }

    private final void p(int i11, PostSubjectItem postSubjectItem, FrameLayout frameLayout) {
        List<Video> video;
        AppCompatImageView appCompatImageView;
        FrameLayout frameLayout2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        Group group = postSubjectItem.getGroup();
        Object obj = null;
        String name = group != null ? group.getName() : null;
        lg.a.C0828a.r(c0828a, "PostFeedVideo", new String[]{"-------> triggerVideoPlay 播放视频:" + i11 + ", roomName:" + name + ", " + postSubjectItem.getContent()}, false, 4, null);
        n();
        j(this.f61381a);
        g0 g0VarA = g0.a(frameLayout);
        this.f61399s = g0VarA;
        if (g0VarA != null && (frameLayout2 = g0VarA.f75529b) != null) {
            frameLayout2.addView(this.f61392l);
        }
        g0 g0Var = this.f61399s;
        if (g0Var != null && (appCompatImageView = g0Var.f75532e) != null) {
            jg.c.g(appCompatImageView);
        }
        this.f61394n = i11;
        this.f61395o = postSubjectItem.getPostId();
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.g();
        }
        com.transsion.postdetail.layer.b bVar2 = this.f61393m;
        if (bVar2 != null) {
            bVar2.a(0, 0);
        }
        com.transsion.postdetail.layer.b bVar3 = this.f61393m;
        if (bVar3 != null) {
            bVar3.x(postSubjectItem.getPostId(), postSubjectItem);
        }
        Media media = postSubjectItem.getMedia();
        if (media == null || (video = media.getVideo()) == null) {
            return;
        }
        for (Object obj2 : video) {
            String url = ((Video) obj2).getUrl();
            if (!(url == null || url.length() == 0)) {
                obj = obj2;
                break;
            }
        }
        Video video2 = (Video) obj;
        if (video2 != null) {
            Integer duration = video2.getDuration();
            if (duration != null) {
                int iIntValue = duration.intValue();
                PostFeedVideoView postFeedVideoView = this.f61392l;
                if (postFeedVideoView != null) {
                    postFeedVideoView.setDurationTime(((long) iIntValue) * 1000);
                }
            }
            lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "triggerVideoPlay updateMute:" + this.f61398r, false, 4, null);
            PostFeedVideoView postFeedVideoView2 = this.f61392l;
            if (postFeedVideoView2 != null) {
                postFeedVideoView2.updateMute(this.f61398r);
            }
            String url2 = video2.getUrl();
            if (url2 != null) {
                com.transsion.postdetail.layer.b bVar4 = this.f61393m;
                if (bVar4 != null) {
                    bVar4.A(url2);
                }
                g gVar = this.f61391k;
                if (gVar != null) {
                    gVar.setDataSource(new ao.e(url2, url2, 0, null, null, 28, null));
                }
                g gVar2 = this.f61391k;
                if (gVar2 != null) {
                    gVar2.prepare();
                }
            }
        }
    }

    @Override // dp.a
    public void a() {
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "onSetFirstData--checkActiveItemPosition", false, 4, null);
        h();
    }

    @Override // dp.a
    public void b() {
        g gVar;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "PostFeedVideo", "onPagePause--", false, 4, null);
        g gVar2 = this.f61391k;
        if (gVar2 != null) {
            gVar2.pause();
        }
        String str = this.f61395o;
        if (str == null || (gVar = this.f61391k) == null) {
            return;
        }
        long currentPosition = gVar.getCurrentPosition();
        if (currentPosition > 0) {
            lg.a.C0828a.v(c0828a, "PostFeedVideo", "==feedvideo savePlayProgress:" + currentPosition, false, 4, null);
            ep.c.f61972a.c(str, currentPosition);
        }
    }

    @Override // dp.a
    public void c() {
        Long lB;
        o();
        String str = this.f61395o;
        if (str != null && (lB = ep.c.f61972a.b(str)) != null) {
            long jLongValue = lB.longValue();
            if (jLongValue > 0) {
                lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "==onPageResume seekTo:" + jLongValue, false, 4, null);
                g gVar = this.f61391k;
                if (gVar != null) {
                    gVar.seekTo(jLongValue);
                }
            }
        }
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "onPageResume play", false, 4, null);
        g gVar2 = this.f61391k;
        if (gVar2 != null) {
            gVar2.play();
        }
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

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean z10) {
        com.transsion.postdetail.layer.b bVar;
        if (z10 && (bVar = this.f61393m) != null) {
            bVar.d(true);
        }
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
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.h();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onLoadingEnd(ao.e eVar) {
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.i();
        }
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

    @Override // dp.a
    public void onPageDestroy() {
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "onPageDestroy", false, 4, null);
        RecyclerView recyclerView = this.f61383c;
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this);
        }
        g gVar = this.f61391k;
        this.f61391k = null;
        if (gVar != null) {
            gVar.removePlayerListener(this);
        }
        if (gVar != null) {
            gVar.release();
        }
        PostFeedVideoView postFeedVideoView = this.f61392l;
        ViewParent parent = postFeedVideoView != null ? postFeedVideoView.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f61392l);
        }
        this.f61392l = null;
        ep.c.f61972a.a();
        l.f43359a.u(this);
    }

    @Override // com.transsion.player.orplayer.f
    public void onPlayError(PlayError errorInfo, ao.e eVar) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.k(errorInfo);
        }
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
        Float volume;
        lg.a.C0828a.v(lg.a.f68839a, "PostFeedVideo", "----------onPrepare Position:" + this.f61394n + "， isVideoMute：" + this.f61398r, false, 4, null);
        g gVar = this.f61391k;
        if (gVar != null) {
            gVar.setLooping(true);
        }
        g gVar2 = this.f61391k;
        if (gVar2 != null) {
            gVar2.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        }
        PostFeedVideoView postFeedVideoView = this.f61392l;
        if (postFeedVideoView != null) {
            g gVar3 = this.f61391k;
            postFeedVideoView.setProgressMax(gVar3 != null ? (int) gVar3.getDuration() : 100);
        }
        if (!this.f61382b.isResumed() || this.f61382b.isHidden()) {
            g gVar4 = this.f61391k;
            if (gVar4 != null) {
                gVar4.pause();
            }
        } else {
            g gVar5 = this.f61391k;
            if (gVar5 != null) {
                gVar5.play();
            }
        }
        if (!this.f61398r) {
            g gVar6 = this.f61391k;
            this.f61401u = (gVar6 == null || (volume = gVar6.getVolume()) == null) ? 1.0f : volume.floatValue();
        }
        g gVar7 = this.f61391k;
        if (gVar7 != null) {
            gVar7.setVolume(this.f61398r ? 0.0f : 1.0f);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onProgress(long j11, ao.e eVar) {
        PostFeedVideoView postFeedVideoView = this.f61392l;
        if (postFeedVideoView != null) {
            postFeedVideoView.setProgress((int) j11);
        }
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.l(j11);
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onRenderFirstFrame() {
        BLTextView bLTextView;
        ShapeableImageView shapeableImageView;
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "-----onRenderFirstFrame Position:" + this.f61394n, false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.m();
        }
        PostFeedVideoView postFeedVideoView = this.f61392l;
        if (postFeedVideoView != null) {
            postFeedVideoView.setProgress(0);
        }
        g0 g0Var = this.f61399s;
        if (g0Var != null && (shapeableImageView = g0Var.f75531d) != null) {
            jg.c.g(shapeableImageView);
        }
        g0 g0Var2 = this.f61399s;
        if (g0Var2 == null || (bLTextView = g0Var2.f75533f) == null) {
            return;
        }
        jg.c.g(bLTextView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrollStateChanged(recyclerView, i11);
        if (Intrinsics.c(this.f61388h, Boolean.TRUE) && i11 == 0) {
            h();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i11, i12);
        if (Intrinsics.c(this.f61388h, Boolean.TRUE)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.f61397q < 100) {
                return;
            }
            this.f61397q = jCurrentTimeMillis;
            i(recyclerView);
            this.f61400t = i12;
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
    public void onVideoPause(ao.e eVar) {
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.n();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoSizeChanged(int i11, int i12) {
        com.transsion.player.orplayer.f.a.H(this, i11, i12);
    }

    @Override // com.transsion.player.orplayer.f
    public void onVideoStart(ao.e eVar) {
        lg.a.C0828a.f(lg.a.f68839a, "PostFeedVideo", "-----onVideoStart Position:" + this.f61394n, false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.f61393m;
        if (bVar != null) {
            bVar.o();
        }
    }

    @Override // com.transsion.player.orplayer.f
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.f.a.K(this);
    }
}
