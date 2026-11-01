package com.transsion.shorttv_pugc.ui.widget;

import android.view.KeyEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.pager.PagerLayoutManager;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class u extends gt.a implements androidx.p009lifecycle.r {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f54415l = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f54416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BaseProviderMultiAdapter f54417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.player.orplayer.g f54418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ORPlayerView f54419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PagerLayoutManager f54420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f54421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f54422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f54423h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f54424i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f54425j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f54426k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54427a;

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
            f54427a = iArr;
        }
    }

    public u(Fragment fragment, BaseProviderMultiAdapter baseProviderMultiAdapter, com.transsion.player.orplayer.g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f54416a = fragment;
        this.f54417b = baseProviderMultiAdapter;
        this.f54418c = gVar;
        this.f54419d = oRPlayerView;
        this.f54420e = pagerLayoutManager;
        this.f54423h = true;
        fragment.getLifecycle().a(this);
    }

    private final void e() {
        r6.f fVarH0;
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f54417b;
        if (((baseProviderMultiAdapter == null || (fVarH0 = baseProviderMultiAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && nh.m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, "ShortTvControl", "current is fail, try load more", false, 4, null);
            this.f54417b.h0().w();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void j(int i11, View view) {
        List<Object> data;
        this.f54424i = view;
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvControl", "ep = " + i11, false, 4, null);
        if (i11 < 0) {
            return;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f54417b;
        ShorttvModel.UGCVideo uGCVideo = null;
        Object obj = null;
        uGCVideo = null;
        if (baseProviderMultiAdapter != null && (data = baseProviderMultiAdapter.getData()) != null) {
            for (Object obj2 : data) {
                if (((ShorttvModel.UGCVideo) obj2).getEp() == ShortTvExtKt.l(i11)) {
                    obj = obj2;
                    break;
                }
            }
            uGCVideo = (ShorttvModel.UGCVideo) obj;
        }
        this.f54421f = i11;
        if (view instanceof com.transsion.shorttv_pugc.ui.widget.a) {
            ((com.transsion.shorttv_pugc.ui.widget.a) view).onPageSelected(this.f54418c, this.f54419d, uGCVideo);
        }
    }

    @Override // gt.a
    public void a(int i11, boolean z10, View view) {
        lg.a.C0828a.r(lg.a.f68839a, "ShortTvControl", new String[]{"onEachPageSelected, position = " + i11}, false, 4, null);
    }

    @Override // gt.a
    public void b(View view) {
        if (this.f54425j) {
            this.f54425j = false;
            return;
        }
        PagerLayoutManager pagerLayoutManager = this.f54420e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            lg.a.C0828a.v(lg.a.f68839a, "ShortTvControl", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f54421f, false, 4, null);
            if (this.f54421f == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f54421f = iFindFirstVisibleItemPosition;
            }
            j(this.f54421f, view);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // gt.a
    public void c(boolean z10, int i11, View view) {
        RecyclerView recyclerView;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.v(c0828a, "ShortTvControl", "onPageRelease, position = " + i11 + ", ----- currentPosition = " + this.f54421f, false, 4, null);
        if (i11 == this.f54421f) {
            BaseProviderMultiAdapter baseProviderMultiAdapter = this.f54417b;
            if (baseProviderMultiAdapter != null && (recyclerView = baseProviderMultiAdapter.getRecyclerView()) != null && recyclerView.getScrollState() == 1) {
                lg.a.C0828a.v(c0828a, "ShortTvControl", "onPageRelease, 连续滑动，暂停", false, 4, null);
                com.transsion.player.orplayer.g gVar = this.f54418c;
                if (gVar != null) {
                    gVar.pause();
                }
            }
            if (view instanceof com.transsion.shorttv_pugc.ui.widget.a) {
                ((com.transsion.shorttv_pugc.ui.widget.a) view).onPageRelease(i11);
            }
        }
    }

    @Override // gt.a
    public void d(int i11, boolean z10, View view) {
        e();
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvControl", "onPageSelected, position = " + i11 + ", ----- currentPosition = " + this.f54421f, false, 4, null);
        int i12 = this.f54421f;
        if (i12 == i11 && this.f54426k) {
            return;
        }
        this.f54426k = true;
        this.f54422g = i12;
        this.f54421f = i11;
        j(i11, view);
    }

    public final View f() {
        return this.f54424i;
    }

    public final int g() {
        return this.f54421f;
    }

    public final long h() {
        KeyEvent.Callback callback = this.f54424i;
        com.transsion.shorttv_pugc.ui.widget.a aVar = callback instanceof com.transsion.shorttv_pugc.ui.widget.a ? (com.transsion.shorttv_pugc.ui.widget.a) callback : null;
        if (aVar != null) {
            return aVar.getProgress();
        }
        return 0L;
    }

    public final void i() {
        View view = this.f54424i;
        ShortTvVideoItemView shortTvVideoItemView = view instanceof ShortTvVideoItemView ? (ShortTvVideoItemView) view : null;
        if (shortTvVideoItemView != null) {
            shortTvVideoItemView.onNetConnect();
        }
    }

    public final void k(boolean z10) {
        this.f54425j = z10;
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        if (b.f54427a[event.ordinal()] != 3) {
            return;
        }
        this.f54424i = null;
        this.f54416a.getLifecycle().d(this);
    }
}
