package com.transsnet.downloader.ugc.fragment;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\u0018\u0000 32\u00020\u0001:\u00014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J'\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0017\u0010\u0003J\u0017\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R.\u00102\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u001c /*\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010.0.0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCLocalFileListFragment;", "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;", "<init>", "()V", "", "loadData", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "B1", "(Ljava/util/List;)V", "entity", "s1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "initViewModel", "initListener", "bean", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "S0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", TmcConstants.NAVIGATION_ON_START, "", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "", "E0", "()Ljava/lang/String;", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "l", "Lkotlin/Lazy;", "v1", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "mLocalFileViewModel", "m", "Z", "isRequestPermission", "n", "Landroid/view/View;", "mNoPermissionEmptyView", "o", "mEmptyView", "Landroidx/activity/result/b;", "", "kotlin.jvm.PlatformType", TtmlNode.TAG_P, "Landroidx/activity/result/b;", "requestMultiplePermission", CampaignEx.JSON_KEY_AD_Q, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCLocalFileListFragment extends UGCStaggeredListBaseFragment {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLocalFileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(LocalFileViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCLocalFileListFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCLocalFileListFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private boolean isRequestPermission;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private View mNoPermissionEmptyView;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private View mEmptyView;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b requestMultiplePermission;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCLocalFileListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCLocalFileListFragment a() {
            return new UGCLocalFileListFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59745a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59745a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59745a;
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
            this.f59745a.invoke(obj);
        }
    }

    public UGCLocalFileListFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.h(), new androidx.activity.result.a() { // from class: com.transsnet.downloader.ugc.fragment.k0
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                UGCLocalFileListFragment.A1(this.f59805a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermission = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A1(UGCLocalFileListFragment uGCLocalFileListFragment, Map result) {
        Intrinsics.h(result, "result");
        if (com.transsion.baselib.helper.e.f43267a.c(uGCLocalFileListFragment.requireContext())) {
            uGCLocalFileListFragment.loadData();
        }
    }

    private final void B1(List list) {
        ArrayList arrayList = new ArrayList();
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            arrayList.add(com.transsnet.downloader.ugc.adapter.c.d.f59617a);
        } else {
            String modeArg = getModeArg();
            if (!Intrinsics.c(modeArg, "ugc_home")) {
                Intrinsics.c(modeArg, "ugc_sub");
            } else if (list.size() > 3) {
                list = list.subList(0, 3);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.transsnet.downloader.ugc.adapter.c.b((DownloadBean) it.next()));
            }
        }
        a1(arrayList);
        UGCDownloadStaggeredAdapter staggeredAdapter = getStaggeredAdapter();
        if (staggeredAdapter != null) {
            staggeredAdapter.n1(arrayList);
        }
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || !logViewConfig.i()) {
            u0();
            hj.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.k(true);
            }
        }
        b1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        LocalFileViewModel.k(v1(), false, 1, null);
    }

    private final void s1(DownloadBean entity) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), kotlinx.coroutines.y0.b(), null, new UGCLocalFileListFragment$deleteItem$1(entity, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(UGCLocalFileListFragment uGCLocalFileListFragment) {
        Navigator.x(TheRouter.c("/home/movieFilter").F("tabId", 2), uGCLocalFileListFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(UGCLocalFileListFragment uGCLocalFileListFragment) {
        FragmentActivity activity = uGCLocalFileListFragment.getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return Unit.f67061a;
        }
        com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
        if (a0Var.p(activity)) {
            uGCLocalFileListFragment.isRequestPermission = true;
            a0Var.x();
        } else {
            uGCLocalFileListFragment.requestMultiplePermission.a(com.transsion.baselib.helper.e.f43267a.a());
        }
        return Unit.f67061a;
    }

    private final LocalFileViewModel v1() {
        return (LocalFileViewModel) this.mLocalFileViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w1(UGCLocalFileListFragment uGCLocalFileListFragment, List list) {
        uGCLocalFileListFragment.B1(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x1(UGCLocalFileListFragment uGCLocalFileListFragment, DownloadBean downloadBean) {
        UGCDownloadStaggeredAdapter staggeredAdapter;
        List<Object> data;
        UGCDownloadStaggeredAdapter staggeredAdapter2 = uGCLocalFileListFragment.getStaggeredAdapter();
        int i11 = -1;
        if (staggeredAdapter2 != null && (data = staggeredAdapter2.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                com.transsnet.downloader.ugc.adapter.c cVar = (com.transsnet.downloader.ugc.adapter.c) it.next();
                if ((cVar instanceof com.transsnet.downloader.ugc.adapter.c.b) && Intrinsics.c(((com.transsnet.downloader.ugc.adapter.c.b) cVar).b().getResourceId(), downloadBean.getResourceId())) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
        }
        if (i11 >= 0 && (staggeredAdapter = uGCLocalFileListFragment.getStaggeredAdapter()) != null) {
            staggeredAdapter.notifyItemChanged(i11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y1(DownloadMoreDialog downloadMoreDialog, final DownloadBean downloadBean, final UGCLocalFileListFragment uGCLocalFileListFragment, int i11, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (Intrinsics.c(str2, "transfer_file_2_mb")) {
            Navigator.x(TheRouter.c("/download/transfer"), downloadMoreDialog.requireContext(), null, 2, null);
        } else if (Intrinsics.c(str2, RequestParameters.SUBRESOURCE_DELETE)) {
            DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(Utils.a().getString(R$string.cancel), Utils.a().getString(R$string.delete), Utils.a().getString(R$string.download_delete_tips, downloadBean.getTitleName()), null);
            downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.m0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCLocalFileListFragment.z1(this.f59811a, downloadBean, ((Boolean) obj).booleanValue());
                }
            });
            downloadConfirmDialogA.l0(uGCLocalFileListFragment, "confirm_Dialog");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z1(UGCLocalFileListFragment uGCLocalFileListFragment, DownloadBean downloadBean, boolean z10) {
        if (z10) {
            uGCLocalFileListFragment.s1(downloadBean);
        }
        return Unit.f67061a;
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public String E0() {
        return (Intrinsics.c(getModeArg(), "ugc_sub") ? "/download/ugc_my_downloaded" : "/download/ugc_downloaded") + "_local_files";
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public void S0(final DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        final DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb")));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.ugc.fragment.l0
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return UGCLocalFileListFragment.y1(downloadMoreDialogA, bean, this, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.l0(this, "DownloadMoreDialog");
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        if (com.transsnet.downloader.viewmodel.a0.f60085a.a()) {
            if (this.mEmptyView == null) {
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                StateView stateView = new StateView(contextRequireContext);
                String string = stateView.getContext().getString(R$string.download_no_historical_tips);
                Intrinsics.g(string, "getString(...)");
                stateView.showData(4, 6, false, "", string);
                String string2 = stateView.getContext().getString(R$string.download_empty_find_free_source);
                Intrinsics.g(string2, "getString(...)");
                stateView.setReTryTxt(string2);
                stateView.retry(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.i0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return UGCLocalFileListFragment.t1(this.f59800a);
                    }
                });
                this.mEmptyView = stateView;
            }
            View view = this.mEmptyView;
            Intrinsics.e(view);
            return view;
        }
        if (this.mNoPermissionEmptyView == null) {
            Context contextRequireContext2 = requireContext();
            Intrinsics.g(contextRequireContext2, "requireContext(...)");
            StateView stateView2 = new StateView(contextRequireContext2);
            stateView2.updateNoContentResId(R$mipmap.ic_no_permission);
            String string3 = Utils.a().getString(R$string.download_file_permission_tips);
            Intrinsics.g(string3, "getString(...)");
            stateView2.showData(4, 6, false, "", string3);
            String string4 = Utils.a().getString(R$string.download_no_permission_btn);
            Intrinsics.g(string4, "getString(...)");
            stateView2.setReTryTxt(string4);
            stateView2.retry(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.j0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UGCLocalFileListFragment.u1(this.f59802a);
                }
            });
            this.mNoPermissionEmptyView = stateView2;
        }
        View view2 = this.mNoPermissionEmptyView;
        Intrinsics.e(view2);
        return view2;
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        v1().i().j(this, new b(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCLocalFileListFragment.w1(this.f59796a, (List) obj);
            }
        }));
        v1().e().j(this, new b(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCLocalFileListFragment.x1(this.f59798a, (DownloadBean) obj);
            }
        }));
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.isRequestPermission) {
            this.isRequestPermission = false;
            loadData();
        }
    }
}
