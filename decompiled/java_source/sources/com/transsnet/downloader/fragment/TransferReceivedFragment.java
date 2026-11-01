package com.transsnet.downloader.fragment;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.viewmodel.TransferReceivedViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0003J'\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/transsnet/downloader/fragment/TransferReceivedFragment;", "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;", "<init>", "()V", "", "loadData", "Lcom/transsion/baselib/db/download/DownloadBean;", "entity", "n1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "initViewModel", "bean", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "X0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", "", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "", "getPageName", "()Ljava/lang/String;", "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "p1", "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;", "mTransferViewModel", "l", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TransferReceivedFragment extends DownloadedBaseFragment {

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy mTransferViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(TransferReceivedViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.TransferReceivedFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.TransferReceivedFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.TransferReceivedFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TransferReceivedFragment a() {
            return new TransferReceivedFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59103a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59103a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59103a;
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
            this.f59103a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        TransferReceivedViewModel.i(p1(), false, 1, null);
    }

    private final void n1(DownloadBean entity) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), kotlinx.coroutines.y0.b(), null, new TransferReceivedFragment$deleteItem$1(entity, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o1(TransferReceivedFragment transferReceivedFragment) {
        Navigator.x(TheRouter.c("/download/transfer"), transferReceivedFragment.requireContext(), null, 2, null);
        return Unit.f67061a;
    }

    private final TransferReceivedViewModel p1() {
        return (TransferReceivedViewModel) this.mTransferViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(TransferReceivedFragment transferReceivedFragment, List list) {
        transferReceivedFragment.D0(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r1(DownloadMoreDialog downloadMoreDialog, final DownloadBean downloadBean, final TransferReceivedFragment transferReceivedFragment, int i11, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (Intrinsics.c(str2, "transfer_file_2_mb")) {
            Navigator.x(TheRouter.c("/download/transfer"), downloadMoreDialog.requireContext(), null, 2, null);
        } else if (Intrinsics.c(str2, RequestParameters.SUBRESOURCE_DELETE)) {
            DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(Utils.a().getString(R$string.cancel), Utils.a().getString(R$string.delete), Utils.a().getString(R$string.download_delete_tips, downloadBean.getTitleName()), null);
            downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.fragment.r7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TransferReceivedFragment.s1(this.f59311a, downloadBean, ((Boolean) obj).booleanValue());
                }
            });
            downloadConfirmDialogA.l0(transferReceivedFragment, "confirm_Dialog");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(TransferReceivedFragment transferReceivedFragment, DownloadBean downloadBean, boolean z10) {
        if (z10) {
            transferReceivedFragment.n1(downloadBean);
        }
        return Unit.f67061a;
    }

    @Override // com.transsnet.downloader.fragment.DownloadedBaseFragment
    public void X0(final DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        final DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb"), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE)));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.fragment.q7
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return TransferReceivedFragment.r1(downloadMoreDialogA, bean, this, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.l0(this, "DownloadMoreDialog");
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        if (getMEmptyView() == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            String string = Utils.a().getString(R$string.download_transfer_received_empty_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(4, 6, false, "", string);
            String string2 = Utils.a().getString(R$string.download_empty_transfer_tips);
            Intrinsics.g(string2, "getString(...)");
            stateView.setReTryTxt(string2);
            stateView.retry(new Function0() { // from class: com.transsnet.downloader.fragment.p7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return TransferReceivedFragment.o1(this.f59288a);
                }
            });
            f1(stateView);
        }
        View mEmptyView = getMEmptyView();
        Intrinsics.e(mEmptyView);
        return mEmptyView;
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public String getPageName() {
        return "file_manager_tab_received";
    }

    @Override // com.transsnet.downloader.fragment.DownloadedBaseFragment, com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        p1().j().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.o7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TransferReceivedFragment.q1(this.f59280a, (List) obj);
            }
        }));
    }
}
