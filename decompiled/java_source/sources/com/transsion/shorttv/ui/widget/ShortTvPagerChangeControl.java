package com.transsion.shorttv.ui.widget;

import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvPagerChangeControl extends cs.a implements androidx.p009lifecycle.r, a1 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f53495o = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f53496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BaseProviderMultiAdapter f53497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.player.orplayer.g f53498c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ORPlayerView f53499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PagerLayoutManager f53500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f53501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f53502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Integer f53503h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f53504i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f53505j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f53506k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f53507l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Handler f53508m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Runnable f53509n;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53510a;

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
            f53510a = iArr;
        }
    }

    public ShortTvPagerChangeControl(Fragment fragment, BaseProviderMultiAdapter baseProviderMultiAdapter, com.transsion.player.orplayer.g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f53496a = fragment;
        this.f53497b = baseProviderMultiAdapter;
        this.f53498c = gVar;
        this.f53499d = oRPlayerView;
        this.f53500e = pagerLayoutManager;
        this.f53501f = true;
        this.f53504i = true;
        this.f53508m = new Handler(Looper.getMainLooper());
        fragment.getLifecycle().a(this);
    }

    private final void i() {
        r6.f fVarH0;
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f53497b;
        if (((baseProviderMultiAdapter == null || (fVarH0 = baseProviderMultiAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && nh.m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, "ShortTvControl", "current is fail, try load more", false, 4, null);
            this.f53497b.h0().w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void q(int i11, View view) {
        this.f53506k = view;
        boolean z10 = view instanceof ShortTvVideoItemView;
        ShortTvVideoItemView shortTvVideoItemView = z10 ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.setCountdownController(this);
        }
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvControl", "on page select position = " + i11, false, 4, null);
        if (i11 < 0) {
            return;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f53497b;
        js.k kVar = baseProviderMultiAdapter != null ? (js.k) baseProviderMultiAdapter.f0(i11) : null;
        this.f53502g = i11;
        if (!(kVar instanceof js.e)) {
            com.transsion.player.orplayer.g gVar = this.f53498c;
            if (gVar != null) {
                gVar.pause();
                return;
            }
            return;
        }
        if (view instanceof d) {
            ShortTvVideoItemView shortTvVideoItemView2 = z10 ? (ShortTvVideoItemView) view : null;
            if (shortTvVideoItemView2 != null) {
                shortTvVideoItemView2.setFirstPlayInSession(this.f53501f);
            }
            this.f53501f = false;
            ((d) view).onPageSelected(this.f53498c, this.f53499d, (js.e) kVar);
        }
    }

    @Override // com.transsion.shorttv.ui.widget.a1
    public void a(int i11) {
        b();
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i11;
        View view = this.f53506k;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.updateUnlockCountdownText$shortTvLib_release(Integer.valueOf(i11));
        }
        Runnable runnable = new Runnable() { // from class: com.transsion.shorttv.ui.widget.ShortTvPagerChangeControl$startCountdown$1
            @Override // java.lang.Runnable
            public void run() {
                intRef.element--;
                View view2 = this.f53506k;
                ShortTvVideoItemView shortTvVideoItemView2 = view2 instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view2 : null;
                int i12 = intRef.element;
                if (i12 > 0) {
                    if (shortTvVideoItemView2 != null) {
                        shortTvVideoItemView2.updateUnlockCountdownText$shortTvLib_release(Integer.valueOf(i12));
                    }
                    this.f53508m.postDelayed(this, 1000L);
                } else {
                    this.b();
                    if (shortTvVideoItemView2 != null) {
                        shortTvVideoItemView2.watchAdToUnlock$shortTvLib_release(true);
                    }
                }
            }
        };
        this.f53509n = runnable;
        Handler handler = this.f53508m;
        Intrinsics.e(runnable);
        handler.postDelayed(runnable, 1000L);
    }

    @Override // com.transsion.shorttv.ui.widget.a1
    public void b() {
        View view = this.f53506k;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.updateUnlockCountdownText$shortTvLib_release(null);
        }
        Runnable runnable = this.f53509n;
        if (runnable != null) {
            this.f53508m.removeCallbacks(runnable);
        }
        this.f53509n = null;
    }

    @Override // cs.a
    public void c(int i11, boolean z10, View view) {
        lg.a.C0828a.r(lg.a.f68839a, "ShortTvControl", new String[]{"onEachPageSelected, position = " + i11}, false, 4, null);
    }

    @Override // cs.a
    public void d(View view) {
        if (this.f53507l) {
            this.f53507l = false;
            return;
        }
        PagerLayoutManager pagerLayoutManager = this.f53500e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            lg.a.C0828a.v(lg.a.f68839a, "ShortTvControl", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f53502g, false, 4, null);
            if (this.f53502g == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f53502g = iFindFirstVisibleItemPosition;
            }
            q(this.f53502g, view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cs.a
    public void e(boolean z10, int i11, View view) {
        RecyclerView recyclerView;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.v(c0828a, "ShortTvControl", "onPageRelease, position = " + i11 + ", ----- currentPosition = " + this.f53502g, false, 4, null);
        if (i11 == this.f53502g) {
            BaseProviderMultiAdapter baseProviderMultiAdapter = this.f53497b;
            if (baseProviderMultiAdapter != null && (recyclerView = baseProviderMultiAdapter.getRecyclerView()) != null && recyclerView.getScrollState() == 1) {
                lg.a.C0828a.v(c0828a, "ShortTvControl", "onPageRelease, 连续滑动，暂停", false, 4, null);
                com.transsion.player.orplayer.g gVar = this.f53498c;
                if (gVar != null) {
                    gVar.pause();
                }
            }
            if (view instanceof d) {
                ((d) view).onPageRelease(i11);
            }
        }
    }

    @Override // cs.a
    public void f(int i11, boolean z10, View view) {
        i();
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvControl", "onPageSelected, position = " + i11 + ", ----- currentPosition = " + this.f53502g, false, 4, null);
        if (this.f53502g != i11 || this.f53505j) {
            b();
            this.f53505j = false;
            Integer numValueOf = Integer.valueOf(this.f53502g);
            this.f53503h = numValueOf;
            if (numValueOf.intValue() < 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                BaseProviderMultiAdapter baseProviderMultiAdapter = this.f53497b;
                js.k kVar = baseProviderMultiAdapter != null ? (js.k) baseProviderMultiAdapter.getItem(iIntValue) : null;
                if (kVar != null) {
                    js.e eVar = kVar instanceof js.e ? (js.e) kVar : null;
                    if (eVar != null) {
                        ShortTvPlayerOverlayAdManager.f52716a.e(eVar.a());
                    }
                }
            }
            this.f53502g = i11;
            q(i11, view);
        }
    }

    public final View j() {
        return this.f53506k;
    }

    public final int k() {
        return this.f53502g;
    }

    public final long l() {
        KeyEvent.Callback callback = this.f53506k;
        d dVar = callback instanceof d ? (d) callback : null;
        if (dVar != null) {
            return dVar.getProgress();
        }
        return 0L;
    }

    public final void m() {
        KeyEvent.Callback callback = this.f53506k;
        d dVar = callback instanceof d ? (d) callback : null;
        if (dVar != null) {
            dVar.onAudioTrackChange();
        }
    }

    public final void n() {
        KeyEvent.Callback callback = this.f53506k;
        d dVar = callback instanceof d ? (d) callback : null;
        if (dVar != null) {
            dVar.onGetDubsInfo();
        }
    }

    public final void o() {
        if (this.f53504i) {
            this.f53504i = false;
        }
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (b.f53510a[event.ordinal()] != 3) {
            return;
        }
        b();
        this.f53506k = null;
        this.f53496a.getLifecycle().d(this);
    }

    public final void p() {
        View view = this.f53506k;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.onNetConnect();
        }
    }

    public final void r(boolean z10) {
        this.f53507l = z10;
    }

    public final void s(int i11) {
        this.f53502g = i11;
    }

    public final void t(ShortTvVideoItemView view, int i11, js.e item) {
        Intrinsics.h(view, "view");
        Intrinsics.h(item, "item");
        view.updateShortTvInfo(this.f53498c, this.f53499d, item);
    }
}
