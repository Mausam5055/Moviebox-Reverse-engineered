package com.transsion.postdetail.control;

import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.r;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.baselib.report.l;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.ORPlayerPreloadManager;
import com.transsion.player.orplayer.g;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.ui.adapter.e;
import com.transsion.postdetail.ui.view.ImmVideoItemView;
import com.transsion.postdetail.util.u;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
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
public abstract class VideoPagerChangeControl extends cs.a implements r, l.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f48822o = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f48823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f48824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f48825c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f48826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ORPlayerView f48827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PagerLayoutManager f48828f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f48829g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f48830h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f48831i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f48832j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f48833k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f48834l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f48835m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f48836n;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48837a;

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
            f48837a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.transsion.postdetail.control.VideoPagerChangeControl$onStateChanged$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.postdetail.control.VideoPagerChangeControl$onStateChanged$1", f = "VideoPagerChangeControl.kt", l = {}, m = "invokeSuspend")
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

    public VideoPagerChangeControl(Fragment fragment, boolean z10, e eVar, g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager, String str) {
        Intrinsics.h(fragment, "fragment");
        this.f48823a = fragment;
        this.f48824b = z10;
        this.f48825c = eVar;
        this.f48826d = gVar;
        this.f48827e = oRPlayerView;
        this.f48828f = pagerLayoutManager;
        this.f48829g = str;
        this.f48830h = 3;
        this.f48831i = 3000L;
        this.f48833k = true;
        fragment.getLifecycle().a(this);
        i();
    }

    private final void g() {
        f fVarH0;
        e eVar = this.f48825c;
        if (((eVar == null || (fVarH0 = eVar.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, "ImmVideoPlayer", "current is fail, try load more", false, 4, null);
            this.f48825c.h0().w();
        }
    }

    private final void i() {
        l.f43359a.g(this);
    }

    private final void j(int i11) {
        PostSubjectItem postSubjectItem;
        e eVar = this.f48825c;
        if (eVar == null || (postSubjectItem = (PostSubjectItem) eVar.f0(i11 + this.f48830h)) == null) {
            return;
        }
        Media media = postSubjectItem.getMedia();
        Video videoA = u.a(media != null ? media.getVideo() : null);
        if (videoA == null) {
            return;
        }
        p(postSubjectItem, videoA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void m(int i11, View view) {
        ORPlayerView oRPlayerView;
        this.f48835m = view;
        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoPlayer", "on page select position = " + i11, false, 4, null);
        g gVar = this.f48826d;
        if (gVar != null) {
            gVar.reset();
        }
        if (i11 >= 0) {
            e eVar = this.f48825c;
            if ((eVar != null ? eVar.getItemCount() : 0) > i11 && (view instanceof ImmVideoItemView)) {
                ImmVideoItemView immVideoItemView = (ImmVideoItemView) view;
                immVideoItemView.setPosition(Integer.valueOf(i11));
                g gVar2 = this.f48826d;
                if (gVar2 != null && (oRPlayerView = this.f48827e) != null) {
                    immVideoItemView.setPlayer(gVar2, oRPlayerView);
                }
                PagerLayoutManager pagerLayoutManager = this.f48828f;
                if (pagerLayoutManager != null) {
                    immVideoItemView.setPagerLayoutManager(pagerLayoutManager);
                }
                g gVar3 = this.f48826d;
                if (gVar3 != null) {
                    gVar3.setPlayerListener((com.transsion.player.orplayer.f) view);
                }
                e eVar2 = this.f48825c;
                PostSubjectItem postSubjectItem = eVar2 != null ? (PostSubjectItem) eVar2.getItem(i11) : null;
                ORPlayerView oRPlayerView2 = this.f48827e;
                ViewParent parent = oRPlayerView2 != null ? oRPlayerView2.getParent() : null;
                if (parent instanceof FrameLayout) {
                    ((FrameLayout) parent).removeView(this.f48827e);
                }
                immVideoItemView.getPlayerContainer().addView(this.f48827e, new FrameLayout.LayoutParams(-1, -1));
                if (this.f48824b) {
                    this.f48824b = false;
                    immVideoItemView.showCommentDialog();
                }
                immVideoItemView.videoStartPrepare(this.f48829g);
                q(immVideoItemView, postSubjectItem);
                o(i11);
            }
        }
    }

    private final void o(int i11) {
        int i12 = this.f48830h;
        if (i12 > 0 && this.f48825c != null) {
            boolean z10 = false;
            if (1 <= i12) {
                int i13 = 1;
                while (true) {
                    int i14 = i11 + i13;
                    if (i14 >= 0 && this.f48825c.getItemCount() > i14) {
                        PostSubjectItem postSubjectItem = (PostSubjectItem) this.f48825c.f0(i14);
                        if (postSubjectItem != null && !postSubjectItem.getBuiltIn()) {
                            Media media = postSubjectItem.getMedia();
                            Video videoA = u.a(media != null ? media.getVideo() : null);
                            if (videoA != null) {
                                lg.a.C0828a.v(lg.a.f68839a, "ImmVideoPlayer", "try preload position = " + i14 + ", duration = " + videoA.getDuration() + ", url = " + videoA.getUrl(), false, 4, null);
                                p(postSubjectItem, videoA);
                            } else if (i14 == (this.f48830h + i11) - 1) {
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
                j(i11);
            }
        }
    }

    private final void p(PostSubjectItem postSubjectItem, Video video) {
        FirstFrame firstFrame;
        String url;
        String url2 = video.getUrl();
        if (url2 != null) {
            ORPlayerPreloadManager.f48409i.a().j(url2, this.f48831i);
        }
        Media media = postSubjectItem.getMedia();
        if (media == null || (firstFrame = media.getFirstFrame()) == null || (url = firstFrame.getUrl()) == null) {
            return;
        }
        ej.f.a aVar = ej.f.f61882a;
        jn.b.a aVar2 = jn.b.f66237e;
        ej.f.a.j(aVar, ej.f.a.e(aVar, url, aVar2.a(), false, true, 4, null), url, aVar2.a(), null, 8, null);
    }

    @Override // cs.a
    public void d(View view) {
        PagerLayoutManager pagerLayoutManager = this.f48828f;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            lg.a.C0828a.v(lg.a.f68839a, "ImmVideoPlayer", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f48832j, false, 4, null);
            if (this.f48832j == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f48832j = iFindFirstVisibleItemPosition;
            }
            m(this.f48832j, view);
        }
    }

    @Override // cs.a
    public void e(boolean z10, int i11, View view) {
        lg.a.C0828a.v(lg.a.f68839a, "ImmVideoPlayer", "onPageRelease, position = " + i11 + ", ----- currentPosition = " + this.f48832j, false, 4, null);
        if (i11 == this.f48832j) {
            g gVar = this.f48826d;
            if (gVar != null) {
                gVar.stop();
            }
            g gVar2 = this.f48826d;
            if (gVar2 != null) {
                gVar2.reset();
            }
            ORPlayerView oRPlayerView = this.f48827e;
            ViewParent parent = oRPlayerView != null ? oRPlayerView.getParent() : null;
            if (parent instanceof FrameLayout) {
                ((FrameLayout) parent).removeView(this.f48827e);
            }
        }
    }

    @Override // cs.a
    public void f(int i11, boolean z10, View view) {
        g();
        lg.a.C0828a.f(lg.a.f68839a, "ImmVideoPlayer", "onPageSelected, position = " + i11 + ", ----- currentPosition = " + this.f48832j, false, 4, null);
        if (this.f48832j != i11 || this.f48834l) {
            this.f48834l = false;
            this.f48832j = i11;
            ImmVideoHelper.a aVar = ImmVideoHelper.f48840h;
            if (aVar.a().n()) {
                aVar.a().t();
            }
            m(i11, view);
        }
    }

    public final int h() {
        return this.f48832j;
    }

    public final void k() {
        if (this.f48833k) {
            this.f48833k = false;
            o(this.f48832j);
        }
    }

    public final void l(boolean z10) {
        this.f48836n = z10;
        if (z10) {
            View view = this.f48835m;
            ImmVideoItemView immVideoItemView = view instanceof ImmVideoItemView ? (ImmVideoItemView) view : null;
            if (immVideoItemView != null) {
                immVideoItemView.app2Background();
            }
        }
    }

    public final void n() {
        this.f48834l = true;
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean z10) {
        if (z10 && !this.f48836n) {
            View view = this.f48835m;
            ImmVideoItemView immVideoItemView = view instanceof ImmVideoItemView ? (ImmVideoItemView) view : null;
            if (immVideoItemView != null) {
                immVideoItemView.app2Background();
            }
        }
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i11 = b.f48837a[event.ordinal()];
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
            this.f48835m = null;
            this.f48823a.getLifecycle().d(this);
            k.d(o0.a(y0.b()), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00a7  */
    protected final void q(ImmVideoItemView view, PostSubjectItem postSubjectItem) {
        String url;
        String url2;
        String str;
        boolean z10;
        Subject subject;
        Media media;
        Intrinsics.h(view, "view");
        Video videoA = u.a((postSubjectItem == null || (media = postSubjectItem.getMedia()) == null) ? null : media.getVideo());
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "ImmVideoPlayer", "play url=" + (videoA != null ? videoA.getUrl() : null) + "  width:" + (videoA != null ? videoA.getWidth() : null) + ",height:" + (videoA != null ? videoA.getHeight() : null) + ", duration: " + (videoA != null ? videoA.getDuration() : null) + ", builtIn = " + (postSubjectItem != null ? Boolean.valueOf(postSubjectItem.getBuiltIn()) : null), false, 4, null);
        g gVar = this.f48826d;
        if (gVar != null) {
            if (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) {
                z10 = false;
            } else {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            gVar.setLooping(!z10);
        }
        if (postSubjectItem == null || !postSubjectItem.getBuiltIn()) {
            if (videoA == null || (url = videoA.getUrl()) == null) {
                return;
            }
            g gVar2 = this.f48826d;
            if (gVar2 != null) {
                gVar2.setDataSource(new ao.e(url, url, 0, null, null, 28, null));
            }
            g gVar3 = this.f48826d;
            if (gVar3 != null) {
                gVar3.prepare();
            }
            view.setVideoUrl(url);
            ORPlayerPreloadManager.f48409i.a().g(url);
            return;
        }
        if (videoA == null || (url2 = videoA.getUrl()) == null) {
            return;
        }
        if (StringsKt.W(url2, "main/", false, 2, null)) {
            String absolutePath = DownloadEsHelper.f59419m.a().g().getAbsolutePath();
            String title = postSubjectItem.getTitle();
            if (title == null) {
                Subject subject2 = postSubjectItem.getSubject();
                String title2 = subject2 != null ? subject2.getTitle() : null;
                title = title2 == null ? "" : title2;
            }
            String str2 = absolutePath + "/" + (title + ".mp4");
            videoA.setUrl(str2);
            str = str2;
        } else {
            str = url2;
        }
        lg.a.C0828a.f(c0828a, "ImmVideoPlayer", "play url= " + str, false, 4, null);
        g gVar4 = this.f48826d;
        if (gVar4 != null) {
            gVar4.setDataSource(new ao.e(str, str, 0, null, null, 28, null));
        }
        g gVar5 = this.f48826d;
        if (gVar5 != null) {
            gVar5.prepare();
        }
        view.setVideoUrl(url2);
    }
}
