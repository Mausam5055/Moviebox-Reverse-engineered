package com.transsnet.downloader.fragment;

import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.wrapperad.view.BiddingFloatingIrregularAnimationView;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.DownloadRefreshEvent;
import com.transsnet.flow.event.sync.event.LocalVideoEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u001f\u0010\u001c\u001a\u00020\u00052\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H&¢\u0006\u0004\b&\u0010'J'\u0010,\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&¢\u0006\u0004\b,\u0010-J'\u0010.\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&¢\u0006\u0004\b.\u0010-J'\u0010/\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&¢\u0006\u0004\b/\u0010-J\u000f\u00100\u001a\u00020\u000fH&¢\u0006\u0004\b0\u0010\u0011J\u0011\u00102\u001a\u0004\u0018\u000101H\u0016¢\u0006\u0004\b2\u00103R\u001a\u00107\u001a\u00020\u000f8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u0010\u0011R$\u0010=\u001a\u0004\u0018\u00010$8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010'R\u001b\u0010A\u001a\u0002018DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u00103¨\u0006B"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lpy/v;", "<init>", "()V", "", "u0", "Landroidx/fragment/app/Fragment;", "fragment", "p0", "(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "t0", "(Landroid/view/LayoutInflater;)Lpy/v;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "initViewData", "initViewModel", "initListener", "retryLoadData", "", "Lcom/transsion/baselib/db/download/DownloadBean;", "list", "D0", "(Ljava/util/List;)V", "hidden", "onHiddenChanged", "(Z)V", "Lhj/b;", "newLogViewConfig", "()Lhj/b;", "Lcom/transsnet/downloader/adapter/k;", "adapter", "o0", "(Lcom/transsnet/downloader/adapter/k;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "B0", "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V", "A0", "C0", "getPageName", "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "q0", "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;", "a", "Ljava/lang/String;", "getTAG", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsnet/downloader/adapter/k;", "r0", "()Lcom/transsnet/downloader/adapter/k;", "setMAdapter", "mAdapter", "c", "Lkotlin/Lazy;", "s0", "mViewModel", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class DownloadListBaseFragment extends PageStatusFragment<py.v> {

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private com.transsnet.downloader.adapter.k mAdapter;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final String TAG = "DownloadList_" + getClass().getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(DownloadViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsnet.downloader.fragment.DownloadListBaseFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsnet.downloader.fragment.DownloadListBaseFragment$special$$inlined$activityViewModels$default$2
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

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean areContentsTheSame(DownloadBean oldItem, DownloadBean newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return oldItem.getStatus() == newItem.getStatus() && oldItem.getProgress() == newItem.getProgress();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public boolean areItemsTheSame(DownloadBean oldItem, DownloadBean newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getResourceId(), newItem.getResourceId());
        }
    }

    private final Fragment p0(Fragment fragment) {
        for (Fragment parentFragment = fragment.getParentFragment(); parentFragment != null; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof DownloadMainFragment) {
                return parentFragment;
            }
        }
        return null;
    }

    private final void u0() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadListBaseFragment.v0(this.f59150a, (LocalVideoEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LocalVideoEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().q(), false, function1);
        Function1 function2 = new Function1() { // from class: com.transsnet.downloader.fragment.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DownloadListBaseFragment.w0(this.f59161a, (DownloadRefreshEvent) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = DownloadRefreshEvent.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().q(), false, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(DownloadListBaseFragment downloadListBaseFragment, LocalVideoEvent value) {
        List<Object> data;
        DownloadBean downloadBean;
        List<Object> data2;
        Intrinsics.h(value, "value");
        try {
            lg.a.C0828a.f(lg.a.f68839a, "LocalVideo-d", "observeEvent resourceId:" + value.getResourceId() + ",readProgress: " + value.getReadProgress() + ", isSeries: " + value.isSeries(), false, 4, null);
            com.transsnet.downloader.adapter.k kVar = downloadListBaseFragment.mAdapter;
            int i11 = -1;
            if (kVar != null && (data2 = kVar.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    if (Intrinsics.c(((DownloadBean) it.next()).getResourceId(), value.getResourceId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (value.isSeries() && (downloadListBaseFragment instanceof DownloadedListFragment) && i11 < 0) {
                DownloadViewModel.N(downloadListBaseFragment.s0(), false, 1, null);
                return Unit.f67061a;
            }
            if (i11 >= 0) {
                com.transsnet.downloader.adapter.k kVar2 = downloadListBaseFragment.mAdapter;
                if (i11 < (kVar2 != null ? kVar2.getItemCount() : 0)) {
                    com.transsnet.downloader.adapter.k kVar3 = downloadListBaseFragment.mAdapter;
                    if (kVar3 != null && (data = kVar3.getData()) != null && (downloadBean = (DownloadBean) data.get(i11)) != null) {
                        lg.a.C0828a.f(lg.a.f68839a, "LocalVideo-d", "observeEvent index:" + i11 + ", " + downloadBean.getTotalTitleName(), false, 4, null);
                        if (value.getReadProgress() >= 0) {
                            downloadBean.setReadProgress(value.getReadProgress());
                        }
                        if (value.getDuration() >= 0) {
                            downloadBean.setDuration(Long.valueOf(value.getDuration()));
                        }
                        if (value.getRefreshItemAll()) {
                            com.transsnet.downloader.adapter.k kVar4 = downloadListBaseFragment.mAdapter;
                            if (kVar4 != null) {
                                kVar4.notifyItemChanged(i11);
                            }
                        } else {
                            com.transsnet.downloader.adapter.k kVar5 = downloadListBaseFragment.mAdapter;
                            if (kVar5 != null) {
                                kVar5.notifyItemChanged(i11, downloadBean);
                            }
                        }
                    }
                    return Unit.f67061a;
                }
            }
            return Unit.f67061a;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w0(DownloadListBaseFragment downloadListBaseFragment, DownloadRefreshEvent value) {
        int i11;
        com.transsnet.downloader.adapter.k kVar;
        List<Object> data;
        com.transsnet.downloader.adapter.k kVar2;
        List<Object> data2;
        Intrinsics.h(value, "value");
        String resourceId = value.getResourceId();
        if (resourceId != null && resourceId.length() != 0) {
            String subjectId = value.getSubjectId();
            int i12 = 0;
            int i13 = -1;
            if (subjectId != null && subjectId.length() != 0 && (kVar2 = downloadListBaseFragment.mAdapter) != null && (data2 = kVar2.getData()) != null) {
                Iterator<Object> it = data2.iterator();
                i11 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i11 = -1;
                        break;
                    }
                    if (Intrinsics.c(((DownloadBean) it.next()).getSubjectId(), value.getSubjectId())) {
                        break;
                    }
                    i11++;
                }
            } else {
                i11 = -1;
                break;
            }
            if (i11 >= 0) {
                com.transsnet.downloader.adapter.k kVar3 = downloadListBaseFragment.mAdapter;
                if (kVar3 != null) {
                    kVar3.notifyItemChanged(i11);
                }
            } else {
                com.transsnet.downloader.adapter.k kVar4 = downloadListBaseFragment.mAdapter;
                if (kVar4 != null && (data = kVar4.getData()) != null) {
                    Iterator<Object> it2 = data.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.c(((DownloadBean) it2.next()).getResourceId(), value.getResourceId())) {
                            i13 = i12;
                            break;
                        }
                        i12++;
                    }
                }
                if (i13 >= 0 && (kVar = downloadListBaseFragment.mAdapter) != null) {
                    kVar.notifyItemChanged(i13);
                }
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(DownloadListBaseFragment downloadListBaseFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        downloadListBaseFragment.B0((com.transsnet.downloader.adapter.k) adapter, view, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(DownloadListBaseFragment downloadListBaseFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        downloadListBaseFragment.A0((com.transsnet.downloader.adapter.k) adapter, view, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean z0(DownloadListBaseFragment downloadListBaseFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return false;
        }
        downloadListBaseFragment.C0((com.transsnet.downloader.adapter.k) adapter, view, i11);
        return false;
    }

    public abstract void A0(com.transsnet.downloader.adapter.k adapter, View view, int position);

    public abstract void B0(com.transsnet.downloader.adapter.k adapter, View view, int position);

    public abstract void C0(com.transsnet.downloader.adapter.k adapter, View view, int position);

    public void D0(List list) {
        hj.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        com.transsnet.downloader.adapter.k kVar = this.mAdapter;
        if (kVar != null) {
            kVar.n1(list);
        }
    }

    public abstract String getPageName();

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    protected final String getTAG() {
        return this.TAG;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        u0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        RecyclerView recyclerView;
        py.w mViewBinding;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView;
        com.transsnet.downloader.adapter.k kVar = new com.transsnet.downloader.adapter.k(getMForYouViewModel());
        kVar.R0(new a());
        kVar.w1(new p6.d() { // from class: com.transsnet.downloader.fragment.z
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                DownloadListBaseFragment.x0(this.f59374a, baseQuickAdapter, view, i11);
            }
        });
        o0(kVar);
        kVar.s1(new p6.b() { // from class: com.transsnet.downloader.fragment.a0
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                DownloadListBaseFragment.y0(this.f59118a, baseQuickAdapter, view, i11);
            }
        });
        kVar.y1(new p6.e() { // from class: com.transsnet.downloader.fragment.b0
            @Override // p6.e
            public final boolean a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                return DownloadListBaseFragment.z0(this.f59135a, baseQuickAdapter, view, i11);
            }
        });
        this.mAdapter = kVar;
        py.v mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f72945e) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.mAdapter);
        Fragment fragmentP0 = p0(this);
        DownloadMainFragment downloadMainFragment = fragmentP0 instanceof DownloadMainFragment ? (DownloadMainFragment) fragmentP0 : null;
        if (downloadMainFragment == null || (mViewBinding = downloadMainFragment.getMViewBinding()) == null || (biddingFloatingIrregularAnimationView = mViewBinding.f72950b) == null) {
            return;
        }
        biddingFloatingIrregularAnimationView.setRecyclerView(recyclerView);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public hj.b newLogViewConfig() {
        return new hj.b(getPageName(), false, 2, null);
    }

    public abstract void o0(com.transsnet.downloader.adapter.k adapter);

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    /* JADX INFO: renamed from: q0 */
    public DownloadViewModel getMForYouViewModel() {
        return null;
    }

    /* JADX INFO: renamed from: r0, reason: from getter */
    protected final com.transsnet.downloader.adapter.k getMAdapter() {
        return this.mAdapter;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    protected final DownloadViewModel s0() {
        return (DownloadViewModel) this.mViewModel.getValue();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: t0, reason: merged with bridge method [inline-methods] */
    public py.v getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.v vVarC = py.v.c(inflater);
        Intrinsics.g(vVarC, "inflate(...)");
        return vVarC;
    }
}
