package com.transsnet.downloader.fragment;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.StateView;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.viewmodel.LocalFileViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u0019\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0003J'\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R.\u0010+\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0017 (*\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010'0'0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, d2 = {"Lcom/transsnet/downloader/fragment/LocalFileListFragment;", "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;", "<init>", "()V", "", "loadData", "Lcom/transsion/baselib/db/download/DownloadBean;", "entity", "p1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "initViewModel", "bean", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "X0", "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V", TmcConstants.NAVIGATION_ON_START, "", "isShowTitleLayout", "getEmptyView", "(Z)Landroid/view/View;", "", "getPageName", "()Ljava/lang/String;", "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "r1", "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;", "mLocalFileViewModel", "l", "Z", "isRequestPermission", "m", "Landroid/view/View;", "mNoPermissionEmptyView", "Landroidx/activity/result/b;", "", "kotlin.jvm.PlatformType", "n", "Landroidx/activity/result/b;", "requestMultiplePermission", "o", "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LocalFileListFragment extends DownloadedBaseFragment {

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy mLocalFileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(LocalFileViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.LocalFileListFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.LocalFileListFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private boolean isRequestPermission;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private View mNoPermissionEmptyView;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b requestMultiplePermission;

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.LocalFileListFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalFileListFragment a() {
            return new LocalFileListFragment();
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59081a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59081a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59081a;
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
            this.f59081a.invoke(obj);
        }
    }

    public LocalFileListFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.h(), new androidx.activity.result.a() { // from class: com.transsnet.downloader.fragment.x6
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LocalFileListFragment.w1(this.f59364a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermission = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void loadData() {
        LocalFileViewModel.k(r1(), false, 1, null);
    }

    private final void p1(DownloadBean entity) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), kotlinx.coroutines.y0.b(), null, new LocalFileListFragment$deleteItem$1(entity, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q1(LocalFileListFragment localFileListFragment) {
        FragmentActivity activity = localFileListFragment.getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return Unit.f67061a;
        }
        com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
        if (a0Var.p(activity)) {
            localFileListFragment.isRequestPermission = true;
            a0Var.x();
        } else {
            localFileListFragment.requestMultiplePermission.a(com.transsion.baselib.helper.e.f43267a.a());
        }
        return Unit.f67061a;
    }

    private final LocalFileViewModel r1() {
        return (LocalFileViewModel) this.mLocalFileViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s1(LocalFileListFragment localFileListFragment, List list) {
        localFileListFragment.D0(list);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t1(LocalFileListFragment localFileListFragment, DownloadBean downloadBean) {
        List<Object> data;
        com.transsnet.downloader.adapter.k mAdapter;
        com.transsnet.downloader.adapter.k mAdapter2 = localFileListFragment.getMAdapter();
        if (mAdapter2 == null || (data = mAdapter2.getData()) == null) {
            return Unit.f67061a;
        }
        Iterator<Object> it = data.iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            }
            if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), downloadBean.getResourceId())) {
                break;
            }
            i11++;
        }
        if (i11 >= 0 && (mAdapter = localFileListFragment.getMAdapter()) != null) {
            mAdapter.notifyItemChanged(i11);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u1(DownloadMoreDialog downloadMoreDialog, final DownloadBean downloadBean, final LocalFileListFragment localFileListFragment, int i11, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (Intrinsics.c(str2, "transfer_file_2_mb")) {
            Navigator.x(TheRouter.c("/download/transfer"), downloadMoreDialog.requireContext(), null, 2, null);
        } else if (Intrinsics.c(str2, RequestParameters.SUBRESOURCE_DELETE)) {
            DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(Utils.a().getString(R$string.cancel), Utils.a().getString(R$string.delete), Utils.a().getString(R$string.download_delete_tips, downloadBean.getTitleName()), null);
            downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.fragment.c7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return LocalFileListFragment.v1(this.f59157a, downloadBean, ((Boolean) obj).booleanValue());
                }
            });
            downloadConfirmDialogA.l0(localFileListFragment, "confirm_Dialog");
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v1(LocalFileListFragment localFileListFragment, DownloadBean downloadBean, boolean z10) {
        if (z10) {
            localFileListFragment.p1(downloadBean);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w1(LocalFileListFragment localFileListFragment, Map result) {
        Intrinsics.h(result, "result");
        if (com.transsion.baselib.helper.e.f43267a.c(localFileListFragment.requireContext())) {
            localFileListFragment.loadData();
        }
    }

    @Override // com.transsnet.downloader.fragment.DownloadedBaseFragment
    public void X0(final DownloadBean bean, View view, int position) {
        Intrinsics.h(bean, "bean");
        Intrinsics.h(view, "view");
        final DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb")));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.fragment.b7
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return LocalFileListFragment.u1(downloadMoreDialogA, bean, this, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.l0(this, "DownloadMoreDialog");
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getEmptyView(boolean isShowTitleLayout) {
        if (com.transsnet.downloader.viewmodel.a0.f60085a.a()) {
            if (getMEmptyView() == null) {
                f1(super.getEmptyView(false));
            }
            View mEmptyView = getMEmptyView();
            Intrinsics.e(mEmptyView);
            return mEmptyView;
        }
        if (this.mNoPermissionEmptyView == null) {
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            StateView stateView = new StateView(contextRequireContext);
            stateView.updateNoContentResId(R$mipmap.ic_no_permission);
            String string = Utils.a().getString(R$string.download_file_permission_tips);
            Intrinsics.g(string, "getString(...)");
            stateView.showData(4, 6, false, "", string);
            String string2 = Utils.a().getString(R$string.download_no_permission_btn);
            Intrinsics.g(string2, "getString(...)");
            stateView.setReTryTxt(string2);
            stateView.retry(new Function0() { // from class: com.transsnet.downloader.fragment.a7
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return LocalFileListFragment.q1(this.f59126a);
                }
            });
            this.mNoPermissionEmptyView = stateView;
        }
        View view = this.mNoPermissionEmptyView;
        Intrinsics.e(view);
        return view;
    }

    @Override // com.transsnet.downloader.fragment.DownloadListBaseFragment
    public String getPageName() {
        return "file_manager_tab_local_files";
    }

    @Override // com.transsnet.downloader.fragment.DownloadedBaseFragment, com.transsnet.downloader.fragment.DownloadListBaseFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        super.initViewModel();
        r1().i().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.y6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalFileListFragment.s1(this.f59372a, (List) obj);
            }
        }));
        r1().e().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.z6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LocalFileListFragment.t1(this.f59379a, (DownloadBean) obj);
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
