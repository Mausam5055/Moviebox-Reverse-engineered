package com.transsnet.downloader.ugc.fragment;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import com.transsnet.downloader.viewmodel.TransferReceivedViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 '2\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00042\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0003J'\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006)"}, d2 = {"Lcom/transsnet/downloader/ugc/fragment/UGCTransferReceivedFragment;", "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;", "<init>", "()V", "", "loadData", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "v1", "(Ljava/util/List;)V", "entity", "p1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "initViewModel", "initListener", "bean", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "S0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "", "E0", "()Ljava/lang/String;", "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "l", "Lkotlin/Lazy;", "r1", "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "mTransferViewModel", "m", "Landroid/view/View;", "mEmptyView", "n", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCTransferReceivedFragment extends UGCStaggeredListBaseFragment {

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private final Lazy mTransferViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TransferReceivedViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.ugc.fragment.UGCTransferReceivedFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.ugc.fragment.UGCTransferReceivedFragment$special$$inlined$activityViewModels$default$2
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
    private View mEmptyView;

    /* JADX INFO: renamed from: com.transsnet.downloader.ugc.fragment.UGCTransferReceivedFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCTransferReceivedFragment a() {
            return new UGCTransferReceivedFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59779a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59779a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59779a;
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
            this.f59779a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        TransferReceivedViewModel.i(r1(), false, 1, null);
    }

    private final void p1(DownloadBean entity) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), kotlinx.coroutines.y0.b(), null, new UGCTransferReceivedFragment$deleteItem$1(entity, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(UGCTransferReceivedFragment uGCTransferReceivedFragment) {
        Navigator.x(TheRouter.c("/download/transfer"), uGCTransferReceivedFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    private final TransferReceivedViewModel r1() {
        return (TransferReceivedViewModel) this.mTransferViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(UGCTransferReceivedFragment uGCTransferReceivedFragment, List list) {
        uGCTransferReceivedFragment.v1(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(DownloadMoreDialog downloadMoreDialog, final DownloadBean downloadBean, final UGCTransferReceivedFragment uGCTransferReceivedFragment, int i11, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (Intrinsics.c(str2, "transfer_file_2_mb")) {
            Navigator.x(TheRouter.c("/download/transfer"), downloadMoreDialog.requireContext(), null, 2, null);
        } else if (Intrinsics.c(str2, RequestParameters.SUBRESOURCE_DELETE)) {
            DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(Utils.a().getString(R$string.cancel), Utils.a().getString(R$string.delete), Utils.a().getString(R$string.download_delete_tips, downloadBean.getTitleName()), null);
            downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.c1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return UGCTransferReceivedFragment.u1(this.f59788a, downloadBean, ((Boolean) obj).booleanValue());
                }
            });
            downloadConfirmDialogA.l0(uGCTransferReceivedFragment, "confirm_Dialog");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(UGCTransferReceivedFragment uGCTransferReceivedFragment, DownloadBean downloadBean, boolean z10) {
        if (z10) {
            uGCTransferReceivedFragment.p1(downloadBean);
        }
        return Unit.f67061a;
    }

    private final void v1(List list) {
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

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public String E0() {
        return (Intrinsics.c(getModeArg(), "ugc_sub") ? "/download/ugc_my_downloaded" : "/download/ugc_downloaded") + "_received";
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment
    public void S0(final DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        final DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb"), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE)));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.ugc.fragment.b1
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return UGCTransferReceivedFragment.t1(downloadMoreDialogA, bean, this, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.l0(this, "DownloadMoreDialog");
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        if (this.mEmptyView == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            String string = Utils.a().getString(R$string.download_transfer_received_empty_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(4, 6, false, "", string);
            String string2 = Utils.a().getString(R$string.download_empty_transfer_tips);
            Intrinsics.g(string2, "getString(...)");
            stateView.setReTryTxt(string2);
            stateView.retry(new Function0() { // from class: com.transsnet.downloader.ugc.fragment.a1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return UGCTransferReceivedFragment.q1(this.f59782a);
                }
            });
            this.mEmptyView = stateView;
        }
        View view = this.mEmptyView;
        Intrinsics.e(view);
        return view;
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        super.initListener();
    }

    @Override // com.transsnet.downloader.ugc.fragment.UGCStaggeredListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        r1().j().j(this, new b(new Function1() { // from class: com.transsnet.downloader.ugc.fragment.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UGCTransferReceivedFragment.s1(this.f59841a, (List) obj);
            }
        }));
    }
}
