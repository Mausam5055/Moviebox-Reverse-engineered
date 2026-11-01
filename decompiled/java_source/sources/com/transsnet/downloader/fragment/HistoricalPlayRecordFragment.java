package com.transsnet.downloader.fragment;

import android.content.Intent;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.activity.AllHistoricalPlayRecordActivity;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.transsnet.downloader.dialog.ClearHistoryDialog;
import com.transsnet.downloader.viewmodel.HistoricalPlayRecordViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J/\u0010\f\u001a\u00020\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ/\u0010\u0010\u001a\u00020\u000b2\u000e\u0010\u0006\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\rJ\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001d\u0010\u0013J\u000f\u0010\u001e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u000bH\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\u000bH\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\"\u0010\u0004R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001b\u0010,\u001a\u00020'8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\"\u00102\u001a\u0010\u0012\f\u0012\n /*\u0004\u0018\u00010.0.0-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105¨\u00067"}, d2 = {"Lcom/transsnet/downloader/fragment/HistoricalPlayRecordFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lpy/i0;", "<init>", "()V", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "adapter", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", RequestParameters.POSITION, "", "E0", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V", "t0", "(I)V", "D0", "", "getPageName", "()Ljava/lang/String;", "w0", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "Landroid/view/LayoutInflater;", "inflater", "v0", "(Landroid/view/LayoutInflater;)Lpy/i0;", "getPageStateLayoutTitle", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", "Lcom/transsnet/downloader/adapter/t0;", "a", "Lcom/transsnet/downloader/adapter/t0;", "mHistoricalPlayRecordAdapter", "Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "u0", "()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;", "mViewModel", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "c", "Landroidx/activity/result/b;", "startActivity", "Landroid/widget/FrameLayout;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/FrameLayout;", "mHistoryContainer", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HistoricalPlayRecordFragment extends PageStatusFragment<py.i0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final com.transsnet.downloader.adapter.t0 mHistoricalPlayRecordAdapter = new com.transsnet.downloader.adapter.t0();

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy mViewModel = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.fragment.k6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return HistoricalPlayRecordFragment.C0();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b startActivity;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private FrameLayout mHistoryContainer;

    public static final class a extends RecyclerView.l {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.y state) {
            Intrinsics.h(outRect, "outRect");
            Intrinsics.h(view, "view");
            Intrinsics.h(parent, "parent");
            Intrinsics.h(state, "state");
            super.getItemOffsets(outRect, view, parent, state);
            int childAdapterPosition = parent.getChildAdapterPosition(view);
            RecyclerView.Adapter adapter = parent.getAdapter();
            if (adapter == null || childAdapterPosition != adapter.getItemCount() - 1) {
                return;
            }
            outRect.right = com.blankj.utilcode.util.a0.a(16.0f);
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f59068a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f59068a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f59068a;
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
            this.f59068a.invoke(obj);
        }
    }

    public HistoricalPlayRecordFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() { // from class: com.transsnet.downloader.fragment.l6
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                HistoricalPlayRecordFragment.I0(this.f59254a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.startActivity = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean A0(HistoricalPlayRecordFragment historicalPlayRecordFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        historicalPlayRecordFragment.E0(adapter, view, i11);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(HistoricalPlayRecordFragment historicalPlayRecordFragment, List list) {
        if (list.isEmpty()) {
            FrameLayout frameLayout = historicalPlayRecordFragment.mHistoryContainer;
            ViewGroup.LayoutParams layoutParams = frameLayout != null ? frameLayout.getLayoutParams() : null;
            if (layoutParams != null) {
                layoutParams.height = 0;
            }
            FrameLayout frameLayout2 = historicalPlayRecordFragment.mHistoryContainer;
            if (frameLayout2 != null) {
                frameLayout2.setLayoutParams(layoutParams);
            }
            FrameLayout frameLayout3 = historicalPlayRecordFragment.mHistoryContainer;
            if ((frameLayout3 != null ? frameLayout3.getParent() : null) == null) {
                FrameLayout frameLayout4 = historicalPlayRecordFragment.mHistoryContainer;
                ViewParent parent = frameLayout4 != null ? frameLayout4.getParent() : null;
                Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                if (((ViewGroup) parent).getParent() != null) {
                    FrameLayout frameLayout5 = historicalPlayRecordFragment.mHistoryContainer;
                    ViewParent parent2 = frameLayout5 != null ? frameLayout5.getParent() : null;
                    Intrinsics.f(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
                    ViewParent parent3 = ((ViewGroup) parent2).getParent();
                    Intrinsics.f(parent3, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent3).invalidate();
                }
            }
            historicalPlayRecordFragment.mHistoricalPlayRecordAdapter.Y0(PageStatusFragment.getEmptyView$default(historicalPlayRecordFragment, false, 1, null));
        } else {
            FrameLayout frameLayout6 = historicalPlayRecordFragment.mHistoryContainer;
            ViewGroup.LayoutParams layoutParams2 = frameLayout6 != null ? frameLayout6.getLayoutParams() : null;
            if (layoutParams2 != null) {
                layoutParams2.height = -2;
            }
            FrameLayout frameLayout7 = historicalPlayRecordFragment.mHistoryContainer;
            if (frameLayout7 != null) {
                frameLayout7.setLayoutParams(layoutParams2);
            }
            if (list.size() >= 10) {
                historicalPlayRecordFragment.mHistoricalPlayRecordAdapter.n1(list.subList(0, 10));
            } else {
                historicalPlayRecordFragment.mHistoricalPlayRecordAdapter.n1(list);
            }
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HistoricalPlayRecordViewModel C0() {
        return new HistoricalPlayRecordViewModel();
    }

    private final void D0(BaseQuickAdapter adapter, View view, int position) {
        HistoricalPlayRecordBean historical;
        HistoricalPlayRecordBean historical2;
        DownloadBean video;
        if (view.getId() == R$id.historyRoot) {
            Object obj = adapter.getData().get(position);
            HistoricalPlayRecordMultipleEntity historicalPlayRecordMultipleEntity = obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null;
            if (historicalPlayRecordMultipleEntity != null && (historical2 = historicalPlayRecordMultipleEntity.getHistorical()) != null && historical2.getType() == 2 && (video = historical2.getVideo()) != null && video.getFileType() == 2) {
                DownloadBean video2 = historical2.getVideo();
                if (!com.transsnet.downloader.viewmodel.a0.f60085a.o(video2 != null ? video2.getPath() : null)) {
                    HistoricalPlayRecordBean historical3 = historicalPlayRecordMultipleEntity.getHistorical();
                    if (historical3 != null) {
                        historical3.setLocalFileDelete(Boolean.TRUE);
                    }
                    this.mHistoricalPlayRecordAdapter.notifyItemChanged(position);
                    return;
                }
            }
            if ((historicalPlayRecordMultipleEntity == null || (historical = historicalPlayRecordMultipleEntity.getHistorical()) == null) ? false : Intrinsics.c(historical.isLocalFileDelete(), Boolean.TRUE)) {
                uh.b.f76753a.e(getString(R$string.download_no_local_file_tips));
            } else {
                u0().c0(historicalPlayRecordMultipleEntity, requireActivity(), getPageName());
            }
        }
    }

    private final void E0(final BaseQuickAdapter adapter, View view, final int position) {
        ClearHistoryDialog clearHistoryDialog = new ClearHistoryDialog();
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        clearHistoryDialog.r0(childFragmentManager, "javaClass", "clear", new Function0() { // from class: com.transsnet.downloader.fragment.r6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HistoricalPlayRecordFragment.F0(this.f59308a, adapter, position);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F0(final HistoricalPlayRecordFragment historicalPlayRecordFragment, final BaseQuickAdapter baseQuickAdapter, final int i11) {
        HistoricalPlayRecordViewModel historicalPlayRecordViewModelU0 = historicalPlayRecordFragment.u0();
        Object objF0 = baseQuickAdapter.f0(i11);
        historicalPlayRecordViewModelU0.B(objF0 instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) objF0 : null, new Function0() { // from class: com.transsnet.downloader.fragment.s6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HistoricalPlayRecordFragment.G0(i11, baseQuickAdapter, historicalPlayRecordFragment);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G0(final int i11, BaseQuickAdapter baseQuickAdapter, final HistoricalPlayRecordFragment historicalPlayRecordFragment) {
        if (i11 >= baseQuickAdapter.getData().size()) {
            return Unit.f67061a;
        }
        HistoricalPlayRecordViewModel historicalPlayRecordViewModelU0 = historicalPlayRecordFragment.u0();
        Object obj = baseQuickAdapter.getData().get(i11);
        historicalPlayRecordViewModelU0.B(obj instanceof HistoricalPlayRecordMultipleEntity ? (HistoricalPlayRecordMultipleEntity) obj : null, new Function0() { // from class: com.transsnet.downloader.fragment.t6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HistoricalPlayRecordFragment.H0(this.f59327a, i11);
            }
        });
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(HistoricalPlayRecordFragment historicalPlayRecordFragment, int i11) {
        historicalPlayRecordFragment.t0(i11);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(HistoricalPlayRecordFragment historicalPlayRecordFragment, ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            historicalPlayRecordFragment.loadDefaultData();
        }
    }

    private final String getPageName() {
        return "historical_play_record";
    }

    private final void t0(int position) {
        if (position >= this.mHistoricalPlayRecordAdapter.getData().size()) {
            return;
        }
        this.mHistoricalPlayRecordAdapter.getData().remove(position);
        this.mHistoricalPlayRecordAdapter.notifyItemRemoved(position);
    }

    private final HistoricalPlayRecordViewModel u0() {
        return (HistoricalPlayRecordViewModel) this.mViewModel.getValue();
    }

    private final void w0() {
        Function1 function1 = new Function1() { // from class: com.transsnet.downloader.fragment.q6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoricalPlayRecordFragment.x0(this.f59297a, (my.e) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = my.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit x0(HistoricalPlayRecordFragment historicalPlayRecordFragment, my.e value) {
        Intrinsics.h(value, "value");
        try {
            historicalPlayRecordFragment.loadDefaultData();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(HistoricalPlayRecordFragment historicalPlayRecordFragment, View view) {
        historicalPlayRecordFragment.startActivity.a(new Intent(historicalPlayRecordFragment.requireContext(), (Class<?>) AllHistoricalPlayRecordActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(HistoricalPlayRecordFragment historicalPlayRecordFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        historicalPlayRecordFragment.D0(adapter, view, i11);
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
        RecyclerView recyclerView;
        com.transsion.baseui.util.o oVar = com.transsion.baseui.util.o.f43532a;
        py.i0 mViewBinding = getMViewBinding();
        oVar.a(new View[]{mViewBinding != null ? mViewBinding.f72759c : null}, new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.m6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HistoricalPlayRecordFragment.y0(this.f59262a, view);
            }
        });
        py.i0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f72758b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 0, false));
        recyclerView.setAdapter(this.mHistoricalPlayRecordAdapter);
        com.transsnet.downloader.adapter.t0 t0Var = this.mHistoricalPlayRecordAdapter;
        t0Var.l(R$id.historyRoot);
        t0Var.s1(new p6.b() { // from class: com.transsnet.downloader.fragment.n6
            @Override // p6.b
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                HistoricalPlayRecordFragment.z0(this.f59272a, baseQuickAdapter, view, i11);
            }
        });
        t0Var.y1(new p6.e() { // from class: com.transsnet.downloader.fragment.o6
            @Override // p6.e
            public final boolean a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                return HistoricalPlayRecordFragment.A0(this.f59279a, baseQuickAdapter, view, i11);
            }
        });
        recyclerView.addItemDecoration(new a());
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        u0().I().j(this, new b(new Function1() { // from class: com.transsnet.downloader.fragment.p6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoricalPlayRecordFragment.B0(this.f59287a, (List) obj);
            }
        }));
        w0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void loadDefaultData() {
        u0().i0(0);
        HistoricalPlayRecordViewModel.X(u0(), false, false, 2, null);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: v0, reason: merged with bridge method [inline-methods] */
    public py.i0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.i0 i0VarC = py.i0.c(inflater);
        Intrinsics.g(i0VarC, "inflate(...)");
        return i0VarC;
    }
}
