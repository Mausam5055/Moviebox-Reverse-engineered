package com.transsion.room.fragment;

import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.AdvRecyclerView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.activity.RoomDetailActivity;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 F2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J!\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\r\u0010\u001f\u001a\u00020\u0005¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u0011\u0010(\u001a\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010>\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0016\u0010@\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010+R\u001e\u0010E\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006G"}, d2 = {"Lcom/transsion/room/fragment/RoomFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lbq/m;", "<init>", "()V", "", "m0", "", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "p0", "(Ljava/lang/Object;I)V", "i0", "initViewModel", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "roomBean", "u0", "(Lcom/transsion/moviedetailapi/bean/RoomBean;)V", "loadMore", "loadData", "t0", "s0", "q0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "r0", "startLoading", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Lbq/m;", "onResume", "onDestroyView", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "a", "I", "requestCode", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isRefresh", "Lcom/transsion/room/adapter/d;", "c", "Lcom/transsion/room/adapter/d;", "mHotAdapter", "Lcom/transsion/room/viewmodel/RoomViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/room/viewmodel/RoomViewModel;", "mRoomViewModel", "", "e", "Ljava/lang/String;", "mPersonalRoomPage", "f", "mHotRoomPage", "g", "mPerPage", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "h", "Landroidx/activity/result/b;", "requestRoomDetailLaunch", "i", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomFragment extends BaseFragment<bq.m> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.room.adapter.d mHotAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private RoomViewModel mRoomViewModel;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private androidx.activity.result.b requestRoomDetailLaunch;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final int requestCode = 100;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private boolean isRefresh = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private String mPersonalRoomPage = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String mHotRoomPage = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int mPerPage = 20;

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(RoomItem oldItem, RoomItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getCreatorId(), newItem.getCreatorId()) && Intrinsics.c(oldItem.getName(), newItem.getName());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(RoomItem oldItem, RoomItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getGroupId(), newItem.getGroupId());
        }
    }

    public static final class c implements AdvRecyclerView.a {
        c() {
        }

        @Override // com.tn.lib.view.AdvRecyclerView.a
        public void a() {
            RoomFragment.this.loadData();
        }

        @Override // com.tn.lib.view.AdvRecyclerView.a
        public void b() {
            RoomFragment.this.loadData();
        }
    }

    public static final class d extends RecyclerView.r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f51467a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f51468b;

        d() {
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                if (this.f51467a == null) {
                    this.f51467a = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
                }
                ((StaggeredGridLayoutManager) layoutManager).E(this.f51467a);
                this.f51468b = e(this.f51467a);
                return;
            }
            if (layoutManager instanceof GridLayoutManager) {
                this.f51468b = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            } else {
                if (!(layoutManager instanceof LinearLayoutManager)) {
                    throw new RuntimeException("Unsupported layoutManager.");
                }
                this.f51468b = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            }
        }

        private final int e(int[] iArr) {
            if (iArr == null) {
                return 0;
            }
            int i11 = 0;
            for (int i12 : iArr) {
                if (i12 > i11) {
                    i11 = i12;
                }
            }
            return i11;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            com.transsion.room.adapter.d dVar;
            r6.f fVarH0;
            r6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i11 != 0 || childCount <= 0 || this.f51468b < itemCount - 1) {
                return;
            }
            com.transsion.room.adapter.d dVar2 = RoomFragment.this.mHotAdapter;
            if (((dVar2 == null || (fVarH1 = dVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (dVar = RoomFragment.this.mHotAdapter) == null || (fVarH0 = dVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrolled(RecyclerView recyclerView, int i11, int i12) {
            Intrinsics.h(recyclerView, "recyclerView");
            d(recyclerView);
        }
    }

    public static final class e implements nh.n {
        e() {
        }

        @Override // nh.n
        public void onConnected() {
            nh.n.a.a(this);
        }

        @Override // nh.n
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            r6.f fVarH0;
            List<Object> data;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            com.transsion.room.adapter.d dVar = RoomFragment.this.mHotAdapter;
            if (dVar != null && (data = dVar.getData()) != null && data.isEmpty()) {
                RoomFragment.this.loadData();
                return;
            }
            com.transsion.room.adapter.d dVar2 = RoomFragment.this.mHotAdapter;
            if (dVar2 == null || (fVarH0 = dVar2.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override // nh.n
        public void onDisconnected() {
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f51471a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f51471a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f51471a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override // androidx.p009lifecycle.c0
        public final /* synthetic */ void onChanged(Object obj) {
            this.f51471a.invoke(obj);
        }
    }

    private final void i0() {
        AdvRecyclerView advRecyclerView;
        AdvRecyclerView advRecyclerView2;
        SwipeRefreshLayout swipeRefreshLayout;
        AdvRecyclerView advRecyclerView3;
        AdvRecyclerView advRecyclerView4;
        bq.m mViewBinding = getMViewBinding();
        RecyclerView recyclerView = (mViewBinding == null || (advRecyclerView4 = mViewBinding.f16792b) == null) ? null : advRecyclerView4.getRecyclerView();
        bq.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (advRecyclerView3 = mViewBinding2.f16792b) != null) {
            advRecyclerView3.setPageName("rooms");
        }
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        }
        com.transsion.room.adapter.d dVar = new com.transsion.room.adapter.d(new ArrayList());
        dVar.h0().z(true);
        dVar.h0().y(true);
        dVar.h0().E(4);
        dVar.h0().D(new p6.f() { // from class: com.transsion.room.fragment.k0
            @Override // p6.f
            public final void a() {
                RoomFragment.j0(this.f51562a);
            }
        });
        dVar.R0(new b());
        dVar.w1(new p6.d() { // from class: com.transsion.room.fragment.l0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                RoomFragment.k0(this.f51565a, baseQuickAdapter, view, i11);
            }
        });
        this.mHotAdapter = dVar;
        if (recyclerView != null) {
            recyclerView.setAdapter(dVar);
        }
        bq.m mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (swipeRefreshLayout = mViewBinding3.f16793c) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() { // from class: com.transsion.room.fragment.m0
                @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.j
                public final void a() {
                    RoomFragment.l0(this.f51569a);
                }
            });
        }
        bq.m mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (advRecyclerView2 = mViewBinding4.f16792b) != null) {
            advRecyclerView2.setOnStateClickListener(new c());
        }
        bq.m mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (advRecyclerView = mViewBinding5.f16792b) == null) {
            return;
        }
        advRecyclerView.addOnScrollListener(new d());
    }

    private final void initViewModel() {
        RoomViewModel roomViewModel = (RoomViewModel) new androidx.p009lifecycle.v0(this).a(RoomViewModel.class);
        roomViewModel.x().j(this, new f(new Function1() { // from class: com.transsion.room.fragment.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomFragment.o0(this.f51573a, (RoomBean) obj);
            }
        }));
        this.mRoomViewModel = roomViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(RoomFragment roomFragment) {
        roomFragment.loadMore();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(RoomFragment roomFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        roomFragment.p0(adapter.getItem(i11), i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(RoomFragment roomFragment) {
        roomFragment.loadData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        bq.m mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        this.isRefresh = true;
        this.mHotRoomPage = "";
        this.mPersonalRoomPage = "";
        if (nh.m.f70474a.e()) {
            RoomViewModel roomViewModel = this.mRoomViewModel;
            if (roomViewModel != null) {
                roomViewModel.w(this.mHotRoomPage, this.mPerPage);
                return;
            }
            return;
        }
        uh.b.f76753a.d(R$string.no_network_tips);
        bq.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f16793c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16793c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        com.transsion.room.adapter.d dVar = this.mHotAdapter;
        if (dVar == null || (data = dVar.getData()) == null || !data.isEmpty()) {
            return;
        }
        s0();
    }

    private final void loadMore() {
        r6.f fVarH0;
        if (nh.m.f70474a.e()) {
            RoomViewModel roomViewModel = this.mRoomViewModel;
            if (roomViewModel != null) {
                roomViewModel.w(this.mHotRoomPage, this.mPerPage);
                return;
            }
            return;
        }
        uh.b.f76753a.d(R$string.no_network_tips);
        com.transsion.room.adapter.d dVar = this.mHotAdapter;
        if (dVar == null || (fVarH0 = dVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void m0() {
        TitleLayout titleLayout;
        bq.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (titleLayout = mViewBinding.f16794d) == null) {
            return;
        }
        titleLayout.setTitleText(com.transsion.room.R$string.str_hot_room);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(ActivityResult it) {
        Intrinsics.h(it, "it");
        it.getResultCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o0(RoomFragment roomFragment, RoomBean roomBean) {
        r6.f fVarH0;
        roomFragment.hideLoading();
        if (roomBean == null) {
            com.transsion.room.adapter.d dVar = roomFragment.mHotAdapter;
            if (dVar != null && (fVarH0 = dVar.h0()) != null) {
                fVarH0.v();
            }
        } else {
            roomFragment.u0(roomBean);
        }
        return Unit.f67061a;
    }

    private final void p0(Object item, int position) {
        if (item instanceof RoomItem) {
            Intent intent = new Intent(requireActivity(), (Class<?>) RoomDetailActivity.class);
            intent.putExtra(WebConstants.FIELD_ITEM, (Parcelable) item);
            androidx.activity.result.b bVar = this.requestRoomDetailLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
            HashMap map = new HashMap();
            String groupId = ((RoomItem) item).getGroupId();
            if (groupId == null) {
                groupId = "";
            }
            map.put("group_id", groupId);
            map.put("sequence", String.valueOf(position));
            com.transsion.baselib.helper.a.f43262a.b("rooms", map);
        }
    }

    private final void q0() {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new RoomFragment$observerPublishEvent$1(this, null), 3, null);
    }

    private final void s0() {
        AdvRecyclerView advRecyclerView;
        bq.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (advRecyclerView = mViewBinding.f16792b) == null) {
            return;
        }
        advRecyclerView.showError();
    }

    private final void t0() {
        AdvRecyclerView advRecyclerView;
        bq.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (advRecyclerView = mViewBinding.f16792b) == null) {
            return;
        }
        advRecyclerView.showEmpty();
    }

    private final void u0(RoomBean roomBean) {
        String nextPage;
        com.transsion.room.adapter.d dVar;
        r6.f fVarH0;
        r6.f fVarH1;
        com.transsion.room.adapter.d dVar2;
        r6.f fVarH2;
        com.transsion.room.adapter.d dVar3;
        SwipeRefreshLayout swipeRefreshLayout;
        bq.m mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        Pager pager = roomBean.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "";
        }
        this.mHotRoomPage = nextPage;
        r0();
        if (this.isRefresh) {
            this.isRefresh = false;
            bq.m mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f16793c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f16793c) != null) {
                swipeRefreshLayout2.setRefreshing(false);
            }
            List<RoomItem> items = roomBean.getItems();
            if (items != null && (dVar3 = this.mHotAdapter) != null) {
                dVar3.n1(items);
            }
            List<RoomItem> items2 = roomBean.getItems();
            if (items2 == null || !items2.isEmpty()) {
                return;
            }
            t0();
            return;
        }
        List<RoomItem> items3 = roomBean.getItems();
        if (items3 != null) {
            com.transsion.room.adapter.d dVar4 = this.mHotAdapter;
            List<Object> data = dVar4 != null ? dVar4.getData() : null;
            ArrayList arrayList = new ArrayList();
            if (data == null || !(!data.isEmpty())) {
                arrayList.addAll(items3);
            } else {
                for (RoomItem roomItem : items3) {
                    if (data.contains(roomItem)) {
                        lg.a.C0828a.f(lg.a.f68839a, PlaceTypes.ROOM, "find same item name..." + roomItem.getName(), false, 4, null);
                    } else {
                        arrayList.add(roomItem);
                    }
                }
            }
            com.transsion.room.adapter.d dVar5 = this.mHotAdapter;
            if (dVar5 != null) {
                dVar5.q(arrayList);
            }
        }
        com.transsion.room.adapter.d dVar6 = this.mHotAdapter;
        if (dVar6 != null && (fVarH1 = dVar6.h0()) != null && fVarH1.r() && (dVar2 = this.mHotAdapter) != null && (fVarH2 = dVar2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager2 = roomBean.getPager();
        if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (dVar = this.mHotAdapter) == null || (fVarH0 = dVar.h0()) == null) {
            return;
        }
        r6.f.u(fVarH0, false, 1, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
    public bq.m getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        bq.m mVarC = bq.m.c(inflater);
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        jg.c.e(view);
        m0();
        i0();
        initViewModel();
        setNetListener(new e());
        this.requestRoomDetailLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsion.room.fragment.j0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                RoomFragment.n0((ActivityResult) obj);
            }
        });
        q0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
        startLoading();
        loadData();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public hj.b newLogViewConfig() {
        return new hj.b("rooms", false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        androidx.activity.result.b bVar = this.requestRoomDetailLaunch;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
    }

    public final void r0() {
        AdvRecyclerView advRecyclerView;
        bq.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (advRecyclerView = mViewBinding.f16792b) != null) {
            advRecyclerView.showData();
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void startLoading() {
        AdvRecyclerView advRecyclerView;
        bq.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (advRecyclerView = mViewBinding.f16792b) == null) {
            return;
        }
        advRecyclerView.showProgress();
    }
}
