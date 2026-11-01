package com.transsion.postdetail.shorttv;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.BaseListFragment;
import com.transsion.baseui.widget.BaseLoadMoreView;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.shorttv.adapter.ShortTVTrendingAdapter;
import com.transsion.postdetail.shorttv.viewmodel.ShortTVContentViewModel;
import com.transsion.postdetail.shorttv.widget.ShortTVDiscoverHeaderView;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 <2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001=B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\n\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0013J\u001d\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004J\u000f\u0010\u001e\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001e\u0010\u0013J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\r\u0010 \u001a\u00020\u0011¢\u0006\u0004\b \u0010\u0013J\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004R\u001b\u0010'\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R$\u00102\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u001b\u00107\u001a\u0002038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b4\u0010$\u001a\u0004\b5\u00106R\u0014\u0010;\u001a\u0002088\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:¨\u0006>"}, d2 = {"Lcom/transsion/postdetail/shorttv/ShortTVFavoriteFragment;", "Lcom/transsion/baseui/fragment/BaseListFragment;", "Lcom/transsion/moviedetailapi/bean/Subject;", "<init>", "()V", "", "V0", "subject", "", "isDownloadView", "g1", "(Lcom/transsion/moviedetailapi/bean/Subject;Z)V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "W0", "(Landroidx/recyclerview/widget/RecyclerView;)V", "e1", "", "getPageName", "()Ljava/lang/String;", "onResume", "initViewData", "s0", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "m0", "()Lcom/chad/library/adapter/base/BaseQuickAdapter;", "G0", "loadMore", "lazyLoadData", "getPageStateLayoutTitle", "initViewModel", "a1", "retryLoadData", "Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "c1", "()Lcom/transsion/postdetail/shorttv/viewmodel/ShortTVContentViewModel;", "mViewModel", "c", "Ljava/lang/String;", "mPageNum", "Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;", "b1", "()Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;", "setListAdapter", "(Lcom/transsion/postdetail/shorttv/adapter/ShortTVTrendingAdapter;)V", "listAdapter", "Lcom/transsion/postdetail/shorttv/j;", "e", "d1", "()Lcom/transsion/postdetail/shorttv/j;", "recReport", "Lsj/b;", "f", "Lsj/b;", "exposureHelper", "g", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class ShortTVFavoriteFragment extends BaseListFragment<Subject> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String mPageNum;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ShortTVTrendingAdapter listAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTVContentViewModel.class), new Function0<x0>() { // from class: com.transsion.postdetail.shorttv.ShortTVFavoriteFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.postdetail.shorttv.ShortTVFavoriteFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Lazy recReport = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVFavoriteFragment.h1();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private final sj.b exposureHelper = new sj.b(0.6f, new d(), false, 4, null);

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i12 > 0) {
                ShortTVFavoriteFragment.this.W0(recyclerView);
            }
        }
    }

    public static final class c extends DiffUtil.e {
        c() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(Subject oldItem, Subject newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getSubjectId(), newItem.getSubjectId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(Subject oldItem, Subject newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.hashCode() == newItem.hashCode();
        }
    }

    public static final class d implements sj.a {
        d() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            List<Object> data2;
            ShortTVTrendingAdapter listAdapter = ShortTVFavoriteFragment.this.getListAdapter();
            if (((listAdapter == null || (data2 = listAdapter.getData()) == null) ? 0 : data2.size()) <= i11) {
                return;
            }
            ShortTVTrendingAdapter listAdapter2 = ShortTVFavoriteFragment.this.getListAdapter();
            Subject subject = (listAdapter2 == null || (data = listAdapter2.getData()) == null) ? null : (Subject) data.get(i11);
            if (subject != null) {
                ShortTVFavoriteFragment.this.d1().a(ShortTVFavoriteFragment.this.getPageName(), subject, i11, j11, ShortTVFavoriteFragment.this.a1());
            }
        }
    }

    public static final class e extends RecyclerView.l {
        e() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            if (parent.getAdapter() != null) {
                outRect.top = a0.a(16.0f);
            }
        }
    }

    static final class f implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f49158a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49158a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f49158a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f49158a.invoke(obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void V0() {
        RecyclerView recyclerView;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f16580d) == null) {
            return;
        }
        recyclerView.addOnScrollListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void W0(RecyclerView recyclerView) {
        ShortTVTrendingAdapter shortTVTrendingAdapter;
        LinearLayout linearLayoutZ;
        RecyclerView.m layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
        if (!(layoutManager instanceof LinearLayoutManager) || ((LinearLayoutManager) layoutManager).findFirstVisibleItemPosition() != 0 || (shortTVTrendingAdapter = this.listAdapter) == null || (linearLayoutZ = shortTVTrendingAdapter.Z()) == null) {
            return;
        }
        int childCount = linearLayoutZ.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = linearLayoutZ.getChildAt(i11);
            if ((childAt instanceof ShortTVDiscoverHeaderView) && childAt.getVisibility() == 0) {
                ((ShortTVDiscoverHeaderView) childAt).clearExposureCache();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(ShortTVFavoriteFragment shortTVFavoriteFragment) {
        shortTVFavoriteFragment.loadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y0(ShortTVFavoriteFragment shortTVFavoriteFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVFavoriteFragment.d1().b(shortTVFavoriteFragment.getPageName(), subject, i11, shortTVFavoriteFragment.a1());
            shortTVFavoriteFragment.g1(subject, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(ShortTVFavoriteFragment shortTVFavoriteFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        if (item instanceof Subject) {
            Subject subject = (Subject) item;
            shortTVFavoriteFragment.d1().b(shortTVFavoriteFragment.getPageName(), subject, i11, shortTVFavoriteFragment.a1());
            shortTVFavoriteFragment.g1(subject, true);
        }
    }

    private final ShortTVContentViewModel c1() {
        return (ShortTVContentViewModel) this.mViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final j d1() {
        return (j) this.recReport.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void e1() {
        RecyclerView recyclerView;
        bk.b bVar = (bk.b) getMViewBinding();
        if (bVar == null || (recyclerView = bVar.f16580d) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
        recyclerView.addOnScrollListener(this.exposureHelper);
        V0();
        recyclerView.addItemDecoration(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit f1(ShortTVFavoriteFragment shortTVFavoriteFragment, ShortTVRespData shortTVRespData) {
        Pager pager;
        List<Subject> items;
        if (shortTVRespData == null || (items = shortTVRespData.getItems()) == null) {
            shortTVFavoriteFragment.N0();
        } else if (shortTVFavoriteFragment.A0() || Intrinsics.c(shortTVFavoriteFragment.mPageNum, "1")) {
            shortTVFavoriteFragment.I0(false);
            if (items.isEmpty()) {
                BaseListFragment.K0(shortTVFavoriteFragment, null, 1, null);
            } else {
                BaseQuickAdapter mBaseAdapter = shortTVFavoriteFragment.getMBaseAdapter();
                if (mBaseAdapter != null) {
                    mBaseAdapter.n1(items);
                }
            }
        } else {
            BaseQuickAdapter mBaseAdapter2 = shortTVFavoriteFragment.getMBaseAdapter();
            if (mBaseAdapter2 != null) {
                mBaseAdapter2.q(items);
            }
        }
        if (shortTVRespData != null && (pager = shortTVRespData.getPager()) != null) {
            if (Intrinsics.c(pager.getHasMore(), Boolean.TRUE)) {
                shortTVFavoriteFragment.mPageNum = pager.getNextPage();
                shortTVFavoriteFragment.B0();
            } else {
                BaseListFragment.D0(shortTVFavoriteFragment, false, 1, null);
            }
        }
        return Unit.f67061a;
    }

    private final void g1(Subject subject, boolean isDownloadView) {
        Context context = getContext();
        if (context != null) {
            DownloadManagerApi.f58398j.a().d0((FragmentActivity) context, getPageName(), (384 & 4) != 0 ? "" : "", subject.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : isDownloadView, (384 & 64) != 0 ? null : subject, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j h1() {
        return new j();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void G0() {
        I0(true);
        this.mPageNum = "1";
        lazyLoadData();
    }

    public final String a1() {
        return "favorite";
    }

    /* JADX INFO: renamed from: b1, reason: from getter */
    public final ShortTVTrendingAdapter getListAdapter() {
        return this.listAdapter;
    }

    public final String getPageName() {
        return "minitv_favorite";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.short_tv_my_list)) == null) ? "" : string;
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        e1();
        I0(true);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        c1().h().j(this, new f(new Function1() { // from class: com.transsion.postdetail.shorttv.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ShortTVFavoriteFragment.f1(this.f49202a, (ShortTVRespData) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.LazyFragment
    public void lazyLoadData() {
        boolean zC = Intrinsics.c(this.mPageNum, "1");
        ShortTVContentViewModel shortTVContentViewModelC1 = c1();
        String str = this.mPageNum;
        shortTVContentViewModelC1.l(str != null ? str : "1", 8, zC);
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public void loadMore() {
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public BaseQuickAdapter m0() {
        ShortTVTrendingAdapter shortTVTrendingAdapter = new ShortTVTrendingAdapter(getPageName(), true);
        shortTVTrendingAdapter.h0().C(new BaseLoadMoreView());
        shortTVTrendingAdapter.h0().z(true);
        shortTVTrendingAdapter.h0().y(true);
        shortTVTrendingAdapter.h0().E(3);
        shortTVTrendingAdapter.h0().D(new p6.f() { // from class: com.transsion.postdetail.shorttv.f
            @Override // p6.f
            public final void a() {
                ShortTVFavoriteFragment.X0(this.f49203a);
            }
        });
        shortTVTrendingAdapter.R0(new c());
        shortTVTrendingAdapter.w1(new p6.d() { // from class: com.transsion.postdetail.shorttv.g
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTVFavoriteFragment.Y0(this.f49219a, baseQuickAdapter, view, i11);
            }
        });
        shortTVTrendingAdapter.l(R$id.btn_download);
        shortTVTrendingAdapter.s1(new p6.b() { // from class: com.transsion.postdetail.shorttv.h
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                ShortTVFavoriteFragment.Z0(this.f49220a, baseQuickAdapter, view, i11);
            }
        });
        this.listAdapter = shortTVTrendingAdapter;
        return shortTVTrendingAdapter;
    }

    @Override // com.transsion.baseui.fragment.LazyFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        G0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        lazyLoadData();
    }

    @Override // com.transsion.baseui.fragment.BaseListFragment
    public String s0() {
        String string;
        Context context = getContext();
        return (context == null || (string = context.getString(R$string.short_tv_my_list)) == null) ? "" : string;
    }
}
