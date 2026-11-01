package com.transsion.postdetail.control;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import androidx.p009lifecycle.u;
import androidx.recyclerview.widget.RecyclerView;
import ao.e;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.baselib.report.l;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.g;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.view.ShortTvImmVideoItemView;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
import hj.i;
import in.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import nh.m;
import r6.f;

/* JADX INFO: loaded from: classes6.dex */
public class SubjectVideoPagerChangeControl extends cs.a implements r, l.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f48807n = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f48808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.transsion.postdetail.ui.adapter.l f48809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final g f48810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ORPlayerView f48811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PagerLayoutManager f48812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f48813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f48814g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f48815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f48816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f48817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f48818k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f48819l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f48820m;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48821a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48821a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.control.SubjectVideoPagerChangeControl$onStateChanged$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.control.SubjectVideoPagerChangeControl$onStateChanged$1", f = "SubjectVideoPagerChangeControl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ORPlayerPreloadManager.f48409i.a().c();
            return Unit.f67061a;
        }
    }

    public SubjectVideoPagerChangeControl(Fragment fragment, com.transsion.postdetail.ui.adapter.l lVar, g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f48808a = fragment;
        this.f48809b = lVar;
        this.f48810c = gVar;
        this.f48811d = oRPlayerView;
        this.f48812e = pagerLayoutManager;
        this.f48813f = 3;
        this.f48814g = 3000L;
        this.f48816i = true;
        fragment.getLifecycle().a(this);
        m();
        this.f48819l = i.f64505a.i();
    }

    private final void h() {
        f fVarH0;
        com.transsion.postdetail.ui.adapter.l lVar = this.f48809b;
        if (((lVar == null || (fVarH0 = lVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, "ShortTvImmVideoPlayer", "current is fail, try load more", false, 4, null);
            this.f48809b.h0().w();
        }
    }

    private final Video l(Subject subject) {
        Media video;
        PreVideoAddress videoAddress;
        if (subject == null) {
            return null;
        }
        Trailer trailer = subject.getTrailer();
        if ((trailer != null ? trailer.getVideoAddress() : null) != null) {
            Trailer trailer2 = subject.getTrailer();
            if (trailer2 == null || (videoAddress = trailer2.getVideoAddress()) == null) {
                return null;
            }
            return d.a(videoAddress);
        }
        ShortTVItem shortTVFirstEp = subject.getShortTVFirstEp();
        if (shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null) {
            return null;
        }
        return video.getVideoAddress();
    }

    private final void m() {
        l.f43359a.g(this);
    }

    @Override // cs.a
    public void d(View view) {
        PagerLayoutManager pagerLayoutManager = this.f48812e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            lg.a.C0828a.v(lg.a.f68839a, "ShortTvImmVideoPlayer", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f48815h, false, 4, null);
            if (this.f48815h == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f48815h = iFindFirstVisibleItemPosition;
            }
            q(this.f48815h, view);
        }
    }

    @Override // cs.a
    public void e(boolean z10, int i11, View view) {
        lg.a.C0828a.v(lg.a.f68839a, "ShortTvImmVideoPlayer", "onPageRelease, position = " + i11 + ", ----- currentPosition = " + this.f48815h, false, 4, null);
        if (i11 == this.f48815h) {
            w();
            ORPlayerView oRPlayerView = this.f48811d;
            ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).removeView(this.f48811d);
            }
        }
    }

    @Override // cs.a
    public void f(int i11, boolean z10, View view) {
        h();
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvImmVideoPlayer", "onPageSelected, position = " + i11 + ", ----- currentPosition = " + this.f48815h, false, 4, null);
        if (this.f48815h != i11 || this.f48817j) {
            this.f48817j = false;
            this.f48815h = i11;
            ImmVideoHelper.a aVar = ImmVideoHelper.f48840h;
            if (aVar.a().n()) {
                aVar.a().t();
            }
            q(i11, view);
        }
    }

    public void g(List data) {
        Intrinsics.h(data, "data");
        com.transsion.postdetail.ui.adapter.l lVar = this.f48809b;
        if (lVar != null) {
            lVar.q(data);
        }
    }

    public final int i() {
        return this.f48815h;
    }

    protected final Fragment j() {
        return this.f48808a;
    }

    protected final g k() {
        return this.f48810c;
    }

    public void n(int i11) {
        Subject subject;
        Video videoL;
        com.transsion.postdetail.ui.adapter.l lVar = this.f48809b;
        if (lVar == null || (subject = (Subject) lVar.f0(i11 + this.f48813f)) == null || (videoL = l(subject)) == null) {
            return;
        }
        t(subject, videoL);
    }

    public final void o() {
        if (this.f48816i) {
            this.f48816i = false;
            s(this.f48815h);
        }
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean z10) {
        if (z10 && !this.f48820m) {
            View view = this.f48818k;
            ShortTvImmVideoItemView shortTvImmVideoItemView = view instanceof ShortTvImmVideoItemView ? (ShortTvImmVideoItemView) view : null;
            if (shortTvImmVideoItemView != null) {
                shortTvImmVideoItemView.app2Background();
            }
        }
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i11 = b.f48821a[event.ordinal()];
        if (i11 == 1) {
            ORPlayerPreloadManager.f48409i.a().h();
            return;
        }
        if (i11 == 2) {
            ORPlayerPreloadManager.f48409i.a().k();
        } else {
            if (i11 != 3) {
                return;
            }
            l.f43359a.u(this);
            this.f48818k = null;
            this.f48808a.getLifecycle().d(this);
            k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    public final void p(boolean z10) {
        this.f48820m = z10;
        if (z10) {
            View view = this.f48818k;
            ShortTvImmVideoItemView shortTvImmVideoItemView = view instanceof ShortTvImmVideoItemView ? (ShortTvImmVideoItemView) view : null;
            if (shortTvImmVideoItemView != null) {
                shortTvImmVideoItemView.app2Background();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void q(int i11, View view) {
        RecyclerView recyclerView;
        ORPlayerView oRPlayerView;
        this.f48818k = view;
        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoPlayer", "on page select position = " + i11, false, 4, null);
        u();
        if (i11 >= 0) {
            com.transsion.postdetail.ui.adapter.l lVar = this.f48809b;
            int height = 0;
            if ((lVar != null ? lVar.getItemCount() : 0) > i11 && (view instanceof ShortTvImmVideoItemView)) {
                ShortTvImmVideoItemView shortTvImmVideoItemView = (ShortTvImmVideoItemView) view;
                shortTvImmVideoItemView.setPosition(Integer.valueOf(i11));
                g gVar = this.f48810c;
                if (gVar != null && (oRPlayerView = this.f48811d) != null) {
                    shortTvImmVideoItemView.setPlayer(gVar, oRPlayerView);
                }
                PagerLayoutManager pagerLayoutManager = this.f48812e;
                if (pagerLayoutManager != null) {
                    shortTvImmVideoItemView.setPagerLayoutManager(pagerLayoutManager);
                }
                g gVar2 = this.f48810c;
                if (gVar2 != null) {
                    gVar2.setPlayerListener((com.transsion.player.orplayer.f) view);
                }
                com.transsion.postdetail.ui.adapter.l lVar2 = this.f48809b;
                Subject subject = lVar2 != null ? (Subject) lVar2.getItem(i11) : null;
                ORPlayerView oRPlayerView2 = this.f48811d;
                ViewParent parent = oRPlayerView2 != null ? oRPlayerView2.getParent() : null;
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).removeView(this.f48811d);
                }
                ORPlayerView oRPlayerView3 = this.f48811d;
                Video videoL = l(subject);
                com.transsion.postdetail.ui.adapter.l lVar3 = this.f48809b;
                if (lVar3 != null && (recyclerView = lVar3.getRecyclerView()) != null) {
                    height = recyclerView.getHeight();
                }
                shortTvImmVideoItemView.addVideoView(oRPlayerView3, videoL, height);
                shortTvImmVideoItemView.videoStartPrepare(this.f48819l);
                x(shortTvImmVideoItemView, subject);
                s(i11);
            }
        }
    }

    public final void r() {
        this.f48817j = true;
    }

    public void s(int i11) {
        int i12 = this.f48813f;
        if (i12 > 0 && this.f48809b != null) {
            boolean z10 = false;
            if (1 <= i12) {
                int i13 = 1;
                while (true) {
                    int i14 = i11 + i13;
                    if (i14 >= 0 && this.f48809b.getItemCount() > i14) {
                        Subject subject = (Subject) this.f48809b.f0(i14);
                        if (subject != null && !subject.getBuiltIn()) {
                            Video videoL = l(subject);
                            if (videoL != null) {
                                lg.a.C0828a.v(lg.a.f68839a, "ShortTvImmVideoPlayer", "try preload position = " + i14 + ", duration = " + videoL.getDuration() + ", url = " + videoL.getUrl(), false, 4, null);
                                t(subject, videoL);
                            } else if (i14 == (this.f48813f + i11) - 1) {
                                z10 = true;
                            }
                        }
                        if (i13 == i12) {
                            break;
                        } else {
                            i13++;
                        }
                    } else {
                        break;
                    }
                }
            }
            if (z10) {
                n(i11);
            }
        }
    }

    public void t(Subject item, Video video) {
        Media video2;
        Cover cover;
        String url;
        Intrinsics.h(item, "item");
        Intrinsics.h(video, "video");
        String url2 = video.getUrl();
        if (url2 != null) {
            ORPlayerPreloadManager.f48409i.a().j(url2, this.f48814g);
        }
        ShortTVItem shortTVFirstEp = item.getShortTVFirstEp();
        if (shortTVFirstEp == null || (video2 = shortTVFirstEp.getVideo()) == null || (cover = video2.getCover()) == null || (url = cover.getUrl()) == null) {
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        jn.b.a aVar2 = jn.b.f66237e;
        ej.f.a.j(aVar, ej.f.a.e(aVar, url, aVar2.a(), false, true, 4, null), url, aVar2.a(), null, 8, null);
    }

    protected void u() {
        g gVar = this.f48810c;
        if (gVar != null) {
            gVar.reset();
        }
    }

    protected final void v(View view) {
        this.f48818k = view;
    }

    protected void w() {
        g gVar = this.f48810c;
        if (gVar != null) {
            gVar.stop();
        }
        g gVar2 = this.f48810c;
        if (gVar2 != null) {
            gVar2.reset();
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0095  */
    protected void x(ShortTvImmVideoItemView view, Subject subject) {
        String url;
        String url2;
        String str;
        boolean z10;
        Intrinsics.h(view, "view");
        Video videoL = l(subject);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "ImmVideoPlayer", "play url=" + (videoL != null ? videoL.getUrl() : null) + "  width:" + (videoL != null ? videoL.getWidth() : null) + ",height:" + (videoL != null ? videoL.getHeight() : null) + ", duration: " + (videoL != null ? videoL.getDuration() : null) + ", builtIn = " + (subject != null ? Boolean.valueOf(subject.getBuiltIn()) : null), false, 4, null);
        g gVar = this.f48810c;
        if (gVar != null) {
            if (subject != null) {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            } else {
                z10 = false;
            }
            gVar.setLooping(!z10);
        }
        if (subject == null || !subject.getBuiltIn()) {
            if (videoL == null || (url = videoL.getUrl()) == null) {
                return;
            }
            g gVar2 = this.f48810c;
            if (gVar2 != null) {
                gVar2.setDataSource(new e(url, url, 0, null, null, 28, null));
            }
            g gVar3 = this.f48810c;
            if (gVar3 != null) {
                gVar3.prepare();
            }
            view.setVideoUrl(url);
            ORPlayerPreloadManager.f48409i.a().g(url);
            return;
        }
        if (videoL == null || (url2 = videoL.getUrl()) == null) {
            return;
        }
        if (StringsKt.W(url2, "main/", false, 2, null)) {
            String absolutePath = DownloadEsHelper.f59419m.a().g().getAbsolutePath();
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String str2 = absolutePath + "/" + (title + ".mp4");
            videoL.setUrl(str2);
            str = str2;
        } else {
            str = url2;
        }
        lg.a.C0828a.f(c0828a, "ImmVideoPlayer", "play url= " + str, false, 4, null);
        g gVar4 = this.f48810c;
        if (gVar4 != null) {
            gVar4.setDataSource(new e(str, str, 0, null, null, 28, null));
        }
        g gVar5 = this.f48810c;
        if (gVar5 != null) {
            gVar5.prepare();
        }
        view.setVideoUrl(url2);
    }
}
