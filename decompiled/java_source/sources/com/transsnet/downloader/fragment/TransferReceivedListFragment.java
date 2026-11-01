package com.transsnet.downloader.fragment;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J)\u0010\u0010\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0013\u0010\u0003J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u001a\u0010\u0016J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsnet/downloader/fragment/TransferReceivedListFragment;", "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;", "<init>", "()V", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;", "entity", "", "y1", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V", "", RequestParameters.POSITION, "s1", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;I)V", "z1", "initViewData", "tabIndex", "Y0", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;II)V", "initViewModel", "D0", "", "getEmptyDescText", "()Ljava/lang/String;", "", "T0", "()Z", "getPageName", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", CampaignEx.JSON_KEY_AD_K, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TransferReceivedListFragment extends LocalFileBaseFragment {

    public static final class b extends RecyclerView.l {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            if (parent.getAdapter() == null || childAdapterPosition != 0) {
                return;
            }
            outRect.top = com.blankj.utilcode.util.a0.a(12.0f);
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59105a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59105a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59105a;
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
            this.f59105a.invoke(obj);
        }
    }

    private final void s1(HistoricalPlayRecordMultipleEntity entity, int position) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), kotlinx.coroutines.y0.b(), null, new TransferReceivedListFragment$deleteItem$1(entity, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t1(TransferReceivedListFragment transferReceivedListFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object obj = adapter.getData().get(i11);
        transferReceivedListFragment.y1(obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u1(TransferReceivedListFragment transferReceivedListFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object obj = adapter.getData().get(i11);
        transferReceivedListFragment.Y0(obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null, i11, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(TransferReceivedListFragment transferReceivedListFragment, List list) {
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        py.s mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        py.s mViewBinding2 = transferReceivedListFragment.getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f72908c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = transferReceivedListFragment.getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f72908c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        transferReceivedListFragment.showContentView();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            com.transsnet.downloader.adapter.a mAllHistoricalPlayRecordAdapter = transferReceivedListFragment.getMAllHistoricalPlayRecordAdapter();
            if (mAllHistoricalPlayRecordAdapter != null && (data = mAllHistoricalPlayRecordAdapter.getData()) != null) {
                data.clear();
            }
            com.transsnet.downloader.adapter.a mAllHistoricalPlayRecordAdapter2 = transferReceivedListFragment.getMAllHistoricalPlayRecordAdapter();
            if (mAllHistoricalPlayRecordAdapter2 != null) {
                mAllHistoricalPlayRecordAdapter2.n1(list2);
            }
            transferReceivedListFragment.z1();
        } else {
            com.transsnet.downloader.adapter.a mAllHistoricalPlayRecordAdapter3 = transferReceivedListFragment.getMAllHistoricalPlayRecordAdapter();
            if (mAllHistoricalPlayRecordAdapter3 != null) {
                mAllHistoricalPlayRecordAdapter3.n1(list2);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w1(final TransferReceivedListFragment transferReceivedListFragment, int i11, final HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, final int i12, String str, String str2) {
        HistoricalPlayRecordBean historical;
        DownloadBean video;
        Intrinsics.h(str, "<unused var>");
        if (Intrinsics.c(str2, "transfer_file_2_mb")) {
            transferReceivedListFragment.E0().J().q(1);
            transferReceivedListFragment.E0().j0().q(Integer.valueOf(i11));
        } else if (Intrinsics.c(str2, RequestParameters.SUBRESOURCE_DELETE)) {
            DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(Utils.a().getString(R$string.cancel), Utils.a().getString(R$string.delete), Utils.a().getString(R$string.download_delete_tips, (historicalPlayRecordMultipleEntity == null || (historical = historicalPlayRecordMultipleEntity.getHistorical()) == null || (video = historical.getVideo()) == null) ? null : video.getFileName()), null);
            downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.fragment.w7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TransferReceivedListFragment.x1(this.f59355a, historicalPlayRecordMultipleEntity, i12, ((Boolean) obj).booleanValue());
                }
            });
            downloadConfirmDialogA.l0(transferReceivedListFragment, "confirm_Dialog");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(TransferReceivedListFragment transferReceivedListFragment, HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity, int i11, boolean z10) {
        if (z10) {
            transferReceivedListFragment.s1(historicalPlayRecordMultipleEntity, i11);
        }
        return Unit.f67061a;
    }

    private final void y1(HistoricalPlayRecordMultipleEntity entity) {
        HistoricalPlayRecordBean historical;
        DownloadBean video;
        HistoricalPlayRecordBean historical2;
        DownloadBean video2;
        HistoricalPlayRecordBean historical3;
        DownloadBean video3;
        HistoricalPlayRecordBean historical4;
        DownloadBean video4;
        HistoricalPlayRecordBean historical5;
        DownloadBean video5;
        HistoricalPlayRecordBean historical6;
        DownloadBean video6;
        HistoricalPlayRecordBean historical7;
        DownloadBean video7;
        HistoricalPlayRecordBean historical8;
        DownloadBean video8;
        Navigator navigatorK = TheRouter.c("/video/detail").K("extra_local_path", (entity == null || (historical8 = entity.getHistorical()) == null || (video8 = historical8.getVideo()) == null) ? null : video8.getPath()).K("extra_url", (entity == null || (historical7 = entity.getHistorical()) == null || (video7 = historical7.getVideo()) == null) ? null : video7.getUrl()).K("extra_resource_id", (entity == null || (historical6 = entity.getHistorical()) == null || (video6 = historical6.getVideo()) == null) ? null : video6.getResourceId()).K("extra_subject_id", (entity == null || (historical5 = entity.getHistorical()) == null || (video5 = historical5.getVideo()) == null) ? null : video5.getSubjectId()).K("extra_name", (entity == null || (historical4 = entity.getHistorical()) == null || (video4 = historical4.getVideo()) == null) ? null : video4.getName()).K("extra_post_id", (entity == null || (historical3 = entity.getHistorical()) == null || (video3 = historical3.getVideo()) == null) ? null : video3.getPostId()).K("extra_page_from", getPageName());
        int videoWidth = 0;
        Navigator navigatorF = navigatorK.F("extra_height", (entity == null || (historical2 = entity.getHistorical()) == null || (video2 = historical2.getVideo()) == null) ? 0 : video2.getVideoHeight());
        if (entity != null && (historical = entity.getHistorical()) != null && (video = historical.getVideo()) != null) {
            videoWidth = video.getVideoWidth();
        }
        Navigator.x(navigatorF.F("extra_width", videoWidth), getActivity(), null, 2, null);
    }

    private final void z1() {
        com.transsnet.downloader.adapter.a mAllHistoricalPlayRecordAdapter = getMAllHistoricalPlayRecordAdapter();
        if (mAllHistoricalPlayRecordAdapter != null) {
            mAllHistoricalPlayRecordAdapter.Y0(getEmptyView(false));
        }
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public void D0() {
        G0().S();
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public boolean T0() {
        return true;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public void Y0(final HistoricalPlayRecordMultipleEntity entity, int position, final int tabIndex) {
        DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb"), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE)));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.fragment.v7
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TransferReceivedListFragment.w1(this.f59348a, tabIndex, entity, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.l0(this, "DownloadMoreDialog");
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public String getEmptyDescText() {
        String string = getString(R$string.download_transfer_received_empty_tips);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment
    public String getPageName() {
        return "file_manager_tab_received";
    }

    @Override // com.transsnet.downloader.fragment.LocalFileBaseFragment, com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        r6.f fVarH0;
        TitleLayout titleLayout;
        py.s mViewBinding = getMViewBinding();
        if (mViewBinding != null && (titleLayout = mViewBinding.f72909d) != null) {
            titleLayout.setVisibility(8);
        }
        com.transsnet.downloader.adapter.a mAllHistoricalPlayRecordAdapter = getMAllHistoricalPlayRecordAdapter();
        if (mAllHistoricalPlayRecordAdapter != null && (fVarH0 = mAllHistoricalPlayRecordAdapter.h0()) != null) {
            fVarH0.z(false);
        }
        py.s mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f72907b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
        com.transsnet.downloader.adapter.a aVar = new com.transsnet.downloader.adapter.a(T0());
        aVar.w1(new p6.d() { // from class: com.transsnet.downloader.fragment.s7
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                TransferReceivedListFragment.t1(this.f59321a, baseQuickAdapter, view, i11);
            }
        });
        aVar.l(R$id.ivTopRightCornerPoint);
        aVar.s1(new p6.b() { // from class: com.transsnet.downloader.fragment.t7
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                TransferReceivedListFragment.u1(this.f59329a, baseQuickAdapter, view, i11);
            }
        });
        b1(aVar);
        recyclerView.setAdapter(getMAllHistoricalPlayRecordAdapter());
        recyclerView.addItemDecoration(new b());
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        G0().T().j(this, new c(new Function1() { // from class: com.transsnet.downloader.fragment.u7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferReceivedListFragment.v1(this.f59339a, (List) obj);
            }
        }));
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }
}
