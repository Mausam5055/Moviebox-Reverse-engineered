package com.transsion.ugcvideodetail.hepler;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.tn.lib.pager.PagerLayoutManager;
import com.transsion.baselib.report.l;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends ch.a implements l.a {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f56320k = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f56321a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BaseProviderMultiAdapter f56322b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.transsion.player.orplayer.g f56323c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ORPlayerView f56324d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PagerLayoutManager f56325e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f56326f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f56327g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f56328h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private View f56329i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f56330j;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(Fragment fragment, BaseProviderMultiAdapter baseProviderMultiAdapter, com.transsion.player.orplayer.g gVar, ORPlayerView oRPlayerView, PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(fragment, "fragment");
        this.f56321a = fragment;
        this.f56322b = baseProviderMultiAdapter;
        this.f56323c = gVar;
        this.f56324d = oRPlayerView;
        this.f56325e = pagerLayoutManager;
        l.f43359a.g(this);
    }

    private final void e() {
        r6.f fVarH0;
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f56322b;
        if (((baseProviderMultiAdapter == null || (fVarH0 = baseProviderMultiAdapter.h0()) == null) ? null : fVarH0.i()) == LoadMoreStatus.Fail && m.f70474a.e()) {
            lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoControl", "current is fail, try load more", false, 4, null);
            this.f56322b.h0().w();
        }
    }

    private final void h(int i11, View view) {
        this.f56329i = view;
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoControl", "on page select position = " + i11, false, 4, null);
        if (i11 < 0) {
            return;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapter = this.f56322b;
        UGCImmVideo uGCImmVideo = baseProviderMultiAdapter != null ? (UGCImmVideo) baseProviderMultiAdapter.f0(i11) : null;
        this.f56326f = i11;
        if (uGCImmVideo != null) {
            if (view instanceof UGCImmVideoItemView) {
                ((UGCImmVideoItemView) view).onPageSelected(this.f56323c, this.f56324d, uGCImmVideo);
            }
        } else {
            com.transsion.player.orplayer.g gVar = this.f56323c;
            if (gVar != null) {
                gVar.pause();
            }
        }
    }

    @Override // ch.a
    public void a(int i11, boolean z10, View view) {
        lg.a.C0828a.r(lg.a.f68839a, "UGCImmVideoControl", new String[]{"onEachPageSelected, position = " + i11}, false, 4, null);
    }

    @Override // ch.a
    public void b(View view) {
        if (this.f56330j) {
            this.f56330j = false;
            return;
        }
        PagerLayoutManager pagerLayoutManager = this.f56325e;
        if (pagerLayoutManager != null) {
            int iFindFirstVisibleItemPosition = pagerLayoutManager.findFirstVisibleItemPosition();
            lg.a.C0828a.v(lg.a.f68839a, "UGCImmVideoControl", "onInitComplete, position = " + iFindFirstVisibleItemPosition + ", ----- currentPosition = " + this.f56326f, false, 4, null);
            if (this.f56326f == iFindFirstVisibleItemPosition) {
                return;
            }
            if (iFindFirstVisibleItemPosition != -1) {
                this.f56326f = iFindFirstVisibleItemPosition;
            }
            h(this.f56326f, view);
        }
    }

    @Override // ch.a
    public void c(boolean z10, int i11, View view) {
        RecyclerView recyclerView;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.v(c0828a, "UGCImmVideoControl", "onPageRelease, position = " + i11 + ", ----- currentPosition = " + this.f56326f, false, 4, null);
        if (i11 == this.f56326f) {
            BaseProviderMultiAdapter baseProviderMultiAdapter = this.f56322b;
            if (baseProviderMultiAdapter != null && (recyclerView = baseProviderMultiAdapter.getRecyclerView()) != null && recyclerView.getScrollState() == 1) {
                lg.a.C0828a.v(c0828a, "UGCImmVideoControl", "onPageRelease, 连续滑动，暂停", false, 4, null);
                com.transsion.player.orplayer.g gVar = this.f56323c;
                if (gVar != null) {
                    gVar.pause();
                }
            }
            if (view instanceof UGCImmVideoItemView) {
                ((UGCImmVideoItemView) view).onPageRelease(i11);
            }
        }
    }

    @Override // ch.a
    public void d(int i11, boolean z10, View view) {
        e();
        lg.a.C0828a.f(lg.a.f68839a, "UGCImmVideoControl", "onPageSelected, position = " + i11 + ", ----- currentPosition = " + this.f56326f, false, 4, null);
        int i12 = this.f56326f;
        if (i12 != i11 || this.f56328h) {
            this.f56328h = false;
            this.f56327g = i12;
            this.f56326f = i11;
            h(i11, view);
        }
    }

    public final UGCImmVideoItemView f() {
        View view = this.f56329i;
        if (view instanceof UGCImmVideoItemView) {
            return (UGCImmVideoItemView) view;
        }
        return null;
    }

    public final void g() {
        View view = this.f56329i;
        UGCImmVideoItemView uGCImmVideoItemView = view instanceof UGCImmVideoItemView ? (UGCImmVideoItemView) view : null;
        if (uGCImmVideoItemView != null) {
            uGCImmVideoItemView.onPageDestroy();
        }
        l.f43359a.u(this);
    }

    @Override // com.transsion.baselib.report.l.a
    public void onBackgroundStatusChange(boolean z10) {
        if (z10) {
            View view = this.f56329i;
            UGCImmVideoItemView uGCImmVideoItemView = view instanceof UGCImmVideoItemView ? (UGCImmVideoItemView) view : null;
            if (uGCImmVideoItemView != null) {
                uGCImmVideoItemView.app2Background();
            }
        }
    }
}
