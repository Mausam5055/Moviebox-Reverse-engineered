package com.transsion.room.sub.fragment.likes;

import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import bq.l;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.room.sub.adapter.likes.a;
import com.transsion.room.sub.bean.likes.GetUgcVideoLikesBean;
import com.transsion.room.sub.bean.likes.PagerInfoLikes;
import com.transsion.room.sub.fragment.likes.UgcLikesFragment;
import com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import hj.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import nh.m;
import p6.d;
import p6.f;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 G2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u001d\u0010\f\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010/R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010B\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010)R\u0018\u0010D\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010/R\u0016\u0010F\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010)¨\u0006H"}, d2 = {"Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lbq/l;", "Lcom/transsion/room/sub/adapter/likes/a;", "<init>", "()V", "", "r0", "z0", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "feedItems", "B0", "(Ljava/util/List;)V", "w0", "Lcom/transsion/room/sub/adapter/likes/c;", "s0", "()Lcom/transsion/room/sub/adapter/likes/c;", "Landroid/view/LayoutInflater;", "inflater", "q0", "(Landroid/view/LayoutInflater;)Lbq/l;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", WebConstants.FIELD_ITEM, "a", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "onDestroy", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;", "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;", "viewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "pageNext", "c", "userId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/Boolean;", "hasMoreLikes", "Lsj/b;", "e", "Lsj/b;", "mExposureHelper", "f", "Lcom/transsion/room/sub/adapter/likes/c;", "sFeedAdapter", "g", "Z", "isLoadingLikesFeed", "h", "hasMoreFeedLikes", "", "i", "J", "loadStartTime", "j", "durationLoad", CampaignEx.JSON_KEY_AD_K, "isFirstFeedDataRequest", "l", "pageFrom", "m", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UgcLikesFragment extends PageStatusFragment<l> implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private UgcLikesViewModel viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private String pageNext = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private String userId = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Boolean hasMoreLikes;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private sj.b mExposureHelper;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private com.transsion.room.sub.adapter.likes.c sFeedAdapter;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private boolean isLoadingLikesFeed;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Boolean hasMoreFeedLikes;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private long loadStartTime;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private String durationLoad;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Boolean isFirstFeedDataRequest;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String pageFrom;

    public static final class b implements sj.a {
        b() {
        }

        @Override // sj.a
        public void a(int i11, long j11, View view) {
            List<Object> data;
            com.transsion.room.sub.adapter.likes.c cVar = UgcLikesFragment.this.sFeedAdapter;
            if (cVar == null || (data = cVar.getData()) == null) {
                return;
            }
            int size = data.size();
            UgcLikesFragment ugcLikesFragment = UgcLikesFragment.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("曝光的位置position: ");
            sb2.append(i11);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("曝光的位置duration: ");
            sb3.append(j11);
            if (i11 >= size) {
                return;
            }
            com.transsion.room.sub.adapter.likes.c cVar2 = ugcLikesFragment.sFeedAdapter;
            UGCVideo uGCVideo = cVar2 != null ? (UGCVideo) cVar2.getItem(i11) : null;
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("ops", String.valueOf(uGCVideo != null ? uGCVideo.getOps() : null));
            map.put(RequestParameters.POSITION, String.valueOf(i11));
            map.put("refer_subject_id", String.valueOf(uGCVideo != null ? uGCVideo.getSubjectId() : null));
            map.put("content_type", "ugc_video");
            map.put("browse_duration", String.valueOf(j11));
            com.transsion.baselib.helper.a.f43262a.e("/ugc/likes", map);
        }
    }

    static final class c implements c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51724a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51724a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51724a;
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
            this.f51724a.invoke(obj);
        }
    }

    public UgcLikesFragment() {
        Boolean bool = Boolean.FALSE;
        this.hasMoreLikes = bool;
        this.hasMoreFeedLikes = bool;
        this.loadStartTime = -1L;
        this.durationLoad = "0";
        this.isFirstFeedDataRequest = bool;
        this.pageFrom = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(UgcLikesFragment ugcLikesFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        l mViewBinding = ugcLikesFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f16789b) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final void B0(List feedItems) {
        List<Object> data;
        List<Object> data2;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "Likes updateData", false, 4, null);
        com.transsion.room.sub.adapter.likes.c cVar = this.sFeedAdapter;
        int size = 0;
        int size2 = (cVar == null || (data2 = cVar.getData()) == null) ? 0 : data2.size();
        UgcLikesViewModel ugcLikesViewModel = this.viewModel;
        if (Intrinsics.c(ugcLikesViewModel != null ? Boolean.valueOf(ugcLikesViewModel.h()) : null, Boolean.TRUE) || size2 == 0) {
            com.transsion.room.sub.adapter.likes.c cVar2 = this.sFeedAdapter;
            if (cVar2 != null) {
                cVar2.n1(feedItems);
            }
            lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + feedItems.size(), false, 4, null);
            return;
        }
        com.transsion.room.sub.adapter.likes.c cVar3 = this.sFeedAdapter;
        if (cVar3 != null) {
            cVar3.q(feedItems);
        }
        com.transsion.room.sub.adapter.likes.c cVar4 = this.sFeedAdapter;
        if (cVar4 != null && (data = cVar4.getData()) != null) {
            size = data.size();
        }
        lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "updateData: load more, add " + feedItems.size() + " items, list size: " + size2 + " -> " + size, false, 4, null);
    }

    private final void r0() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            sj.b bVar = new sj.b(0.6f, new b(), false, 4, null);
            l mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f16790c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final com.transsion.room.sub.adapter.likes.c s0() {
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesListFragment", "Likes initFeedAdapter", false, 4, null);
        com.transsion.room.sub.adapter.likes.c cVar = new com.transsion.room.sub.adapter.likes.c(new ArrayList(), this.mExposureHelper, false);
        cVar.h0().z(true);
        cVar.h0().y(true);
        cVar.h0().D(new f() { // from class: hq.d
            @Override // p6.f
            public final void a() {
                UgcLikesFragment.t0(this.f64822a);
            }
        });
        cVar.w1(new d() { // from class: hq.e
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UgcLikesFragment.v0(this.f64823a, baseQuickAdapter, view, i11);
            }
        });
        this.sFeedAdapter = cVar;
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(final UgcLikesFragment ugcLikesFragment) {
        RecyclerView recyclerView;
        if (m.f70474a.e()) {
            UgcLikesViewModel ugcLikesViewModel = ugcLikesFragment.viewModel;
            if (ugcLikesViewModel != null) {
                ugcLikesViewModel.i(ugcLikesFragment.pageNext);
                return;
            }
            return;
        }
        lg.a.C0828a.z(lg.a.f68839a, "UgcLikesListFragment", "initFilmListAdapter: no network, load more failed", false, 4, null);
        l mViewBinding = ugcLikesFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f16790c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: hq.f
            @Override // java.lang.Runnable
            public final void run() {
                UgcLikesFragment.u0(this.f64824a);
            }
        }, 300L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(UgcLikesFragment ugcLikesFragment) {
        r6.f fVarH0;
        com.transsion.room.sub.adapter.likes.c cVar = ugcLikesFragment.sFeedAdapter;
        if (cVar == null || (fVarH0 = cVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(UgcLikesFragment ugcLikesFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i11);
        if (item instanceof UGCVideo) {
            UGCVideo uGCVideo = (UGCVideo) item;
            Navigator navigatorK = TheRouter.c("/ugc_video/detail").K("id", uGCVideo.getUgcVideoId());
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            Navigator.x(navigatorK.K("collection_id", belongToCollection != null ? belongToCollection.getCollectionId() : null).K("ops", uGCVideo.getOps()).K(WebConstants.PAGE_FROM, "UgcLike Page"), ugcLikesFragment.getActivity(), null, 2, null);
            new HashMap();
        }
    }

    private final void w0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout;
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesListFragment", "Likes initLikesFeedRecyclerView", false, 4, null);
        l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f16789b) != null) {
            swipeRefreshLayout.setEnabled(true);
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: hq.b
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    UgcLikesFragment.x0(this.f64820a);
                }
            });
        }
        r0();
        sj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
        l mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f16790c) != null) {
            recyclerView2.setLayoutManager(staggeredGridLayoutManager);
        }
        com.transsion.room.sub.adapter.likes.c cVarS0 = s0();
        this.sFeedAdapter = cVarS0;
        if (cVarS0 != null) {
            cVarS0.Q1(this);
        }
        l mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f16790c) == null) {
            return;
        }
        recyclerView.setAdapter(this.sFeedAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(UgcLikesFragment ugcLikesFragment) {
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesListFragment", "initRecyclerView: user pull to refresh", false, 4, null);
        UgcLikesViewModel ugcLikesViewModel = ugcLikesFragment.viewModel;
        if (ugcLikesViewModel != null) {
            ugcLikesViewModel.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(UgcLikesFragment ugcLikesFragment, GetUgcVideoLikesBean getUgcVideoLikesBean) {
        com.transsion.room.sub.adapter.likes.c cVar;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        HashMap mapG;
        List<Object> data2;
        r6.f fVarH0;
        r6.f fVarH1;
        com.transsion.room.sub.adapter.likes.c cVar2;
        r6.f fVarH2;
        PagerInfoLikes pager;
        PagerInfoLikes pager2;
        com.transsion.room.sub.adapter.likes.c cVar3;
        List<Object> data3;
        r6.f fVarH3;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "ugcVideoLikeBean:: " + getUgcVideoLikesBean, false, 4, null);
        UgcLikesViewModel ugcLikesViewModel = ugcLikesFragment.viewModel;
        Boolean boolValueOf = ugcLikesViewModel != null ? Boolean.valueOf(ugcLikesViewModel.h()) : null;
        Boolean bool = Boolean.FALSE;
        if (Intrinsics.c(boolValueOf, bool) && (cVar3 = ugcLikesFragment.sFeedAdapter) != null && (data3 = cVar3.getData()) != null && !data3.isEmpty() && getUgcVideoLikesBean == null) {
            lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "ugcVideoLikeBean is null,has no more data ", false, 4, null);
            com.transsion.room.sub.adapter.likes.c cVar4 = ugcLikesFragment.sFeedAdapter;
            if (cVar4 != null && (fVarH3 = cVar4.h0()) != null) {
                r6.f.u(fVarH3, false, 1, null);
            }
            return Unit.f67061a;
        }
        ugcLikesFragment.hasMoreFeedLikes = (getUgcVideoLikesBean == null || (pager2 = getUgcVideoLikesBean.getPager()) == null) ? null : Boolean.valueOf(pager2.getHasMore());
        ugcLikesFragment.pageNext = (getUgcVideoLikesBean == null || (pager = getUgcVideoLikesBean.getPager()) == null) ? null : pager.getNextPage();
        lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "hasMoreFeedLikes " + ugcLikesFragment.hasMoreFeedLikes, false, 4, null);
        com.transsion.room.sub.adapter.likes.c cVar5 = ugcLikesFragment.sFeedAdapter;
        if (cVar5 != null && (fVarH1 = cVar5.h0()) != null && fVarH1.r() && (cVar2 = ugcLikesFragment.sFeedAdapter) != null && (fVarH2 = cVar2.h0()) != null) {
            fVarH2.s();
        }
        if ((getUgcVideoLikesBean != null ? getUgcVideoLikesBean.getItems() : null) != null) {
            List<UGCVideo> items = getUgcVideoLikesBean.getItems();
            Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
            lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "ugcVideoLikeBean: received " + numValueOf + " items, currentListSize=" + ugcLikesFragment.sFeedAdapter + "?.data?.size}, hasMore=" + getUgcVideoLikesBean.getPager().getHasMore(), false, 4, null);
            Boolean bool2 = ugcLikesFragment.hasMoreLikes;
            Boolean bool3 = Boolean.TRUE;
            if (!Intrinsics.c(bool2, bool3)) {
                lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "ugcVideoLikeBean: no more data, load more end", false, 4, null);
                com.transsion.room.sub.adapter.likes.c cVar6 = ugcLikesFragment.sFeedAdapter;
                if (cVar6 != null && (fVarH0 = cVar6.h0()) != null) {
                    r6.f.u(fVarH0, false, 1, null);
                }
            }
            com.transsion.room.sub.adapter.likes.c cVar7 = ugcLikesFragment.sFeedAdapter;
            if (cVar7 == null || (data2 = cVar7.getData()) == null || !data2.isEmpty() || numValueOf == null || numValueOf.intValue() != 0) {
                if (Intrinsics.c(ugcLikesFragment.isFirstFeedDataRequest, bool3)) {
                    ugcLikesFragment.durationLoad = ugcLikesFragment.loadStartTime > 0 ? String.valueOf(System.currentTimeMillis() - ugcLikesFragment.loadStartTime) : "0";
                    ugcLikesFragment.isFirstFeedDataRequest = bool;
                    hj.b logViewConfig = ugcLikesFragment.getLogViewConfig();
                    if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                    }
                }
                List<UGCVideo> items2 = getUgcVideoLikesBean.getItems();
                Intrinsics.e(items2);
                ugcLikesFragment.B0(items2);
                hj.b logViewConfig2 = ugcLikesFragment.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.k(true);
                }
            } else {
                lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "ugcVideoLikeBean: empty data", false, 4, null);
                com.transsion.room.sub.adapter.likes.c cVar8 = ugcLikesFragment.sFeedAdapter;
                if (cVar8 != null) {
                    cVar8.Y0(ugcLikesFragment.getEmptyView(false));
                }
            }
        } else if (Intrinsics.c(boolValueOf, Boolean.TRUE) || ((cVar = ugcLikesFragment.sFeedAdapter) != null && (data = cVar.getData()) != null && data.isEmpty())) {
            lg.a.C0828a.f(c0828a, "UgcLikesListFragment", "ugcVideoLikeBean: empty data", false, 4, null);
            com.transsion.room.sub.adapter.likes.c cVar9 = ugcLikesFragment.sFeedAdapter;
            if (cVar9 != null) {
                cVar9.Y0(ugcLikesFragment.getEmptyView(false));
            }
            com.transsion.room.sub.adapter.likes.c cVar10 = ugcLikesFragment.sFeedAdapter;
            if (cVar10 != null) {
                cVar10.n1(null);
            }
        }
        l mViewBinding = ugcLikesFragment.getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f16789b) != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
        return Unit.f67061a;
    }

    private final void z0() {
        ConstraintLayout root;
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesListFragment", "Likes loadLikesFeedsData", false, 4, null);
        if (this.isLoadingLikesFeed) {
            return;
        }
        this.isLoadingLikesFeed = true;
        UgcLikesViewModel ugcLikesViewModel = this.viewModel;
        if (ugcLikesViewModel != null) {
            ugcLikesViewModel.g("1", String.valueOf(this.userId));
        }
        l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() { // from class: hq.a
            @Override // java.lang.Runnable
            public final void run() {
                UgcLikesFragment.A0(this.f64819a);
            }
        }, 2000L);
    }

    @Override // com.transsion.room.sub.adapter.likes.a
    public void a(UGCVideo item) {
        Intrinsics.h(item, "item");
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesListFragment", " Likes lazyLoadData", false, 4, null);
        pv.b.b(item, null, 1, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        HashMap mapG;
        w0();
        if (this.pageFrom.length() == 0) {
            this.pageFrom = i.f64505a.i();
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        b0 b0VarF;
        UgcLikesViewModel ugcLikesViewModel = this.viewModel;
        if (ugcLikesViewModel == null || (b0VarF = ugcLikesViewModel.f()) == null) {
            return;
        }
        b0VarF.j(this, new c(new Function1() { // from class: hq.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UgcLikesFragment.y0(this.f64821a, (GetUgcVideoLikesBean) obj);
            }
        }));
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        this.isFirstFeedDataRequest = Boolean.TRUE;
        this.loadStartTime = System.currentTimeMillis();
        z0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b("/ugc/likes", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lg.a.C0828a.f(lg.a.f68839a, "UgcLikesListFragment", "Likes getViewBinding", false, 4, null);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (UgcLikesViewModel) new v0(activity).a(UgcLikesViewModel.class);
        }
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
        z0();
    }
}
