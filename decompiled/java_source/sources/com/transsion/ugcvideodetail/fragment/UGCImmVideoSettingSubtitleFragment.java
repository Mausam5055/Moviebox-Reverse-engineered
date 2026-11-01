package com.transsion.ugcvideodetail.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R0\u0010+\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R*\u00103\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010,8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010.\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u00064"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqv/h;", "<init>", "()V", "", "d0", "Landroid/view/LayoutInflater;", "inflater", "c0", "(Landroid/view/LayoutInflater;)Lqv/h;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "initListener", "lazyLoadData", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "getViewModel", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "viewModel", "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "b0", "()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", "subtitleViewModel", "Lcom/transsion/ugcvideodetail/adapter/e;", "c", "Lcom/transsion/ugcvideodetail/adapter/e;", "subtitleAdapter", "Lkotlin/Function1;", "Leu/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/jvm/functions/Function1;", "getOnSubtitleSelected", "()Lkotlin/jvm/functions/Function1;", "g0", "(Lkotlin/jvm/functions/Function1;)V", "onSubtitleSelected", "Lkotlin/Function0;", "e", "Lkotlin/jvm/functions/Function0;", "getOnBackClick", "()Lkotlin/jvm/functions/Function0;", "f0", "(Lkotlin/jvm/functions/Function0;)V", "onBackClick", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoSettingSubtitleFragment extends BaseFragment<qv.h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$2
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

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final Lazy subtitleViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.ugcvideodetail.hepler.subtitle.a.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$4
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

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.adapter.e subtitleAdapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private Function1 onSubtitleSelected;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private Function0 onBackClick;

    private final com.transsion.ugcvideodetail.hepler.subtitle.a b0() {
        return (com.transsion.ugcvideodetail.hepler.subtitle.a) this.subtitleViewModel.getValue();
    }

    private final void d0() {
        RecyclerView recyclerView;
        SubtitleDownloadTable subtitleDownloadTableB;
        RecyclerView recyclerView2;
        final List list = (List) b0().d().f();
        if (list == null) {
            return;
        }
        qv.h mViewBinding = getMViewBinding();
        int i11 = 0;
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f73758b) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext(), 1, false));
        }
        eu.a aVar = (eu.a) b0().c().f();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                i11 = -1;
                break;
            } else {
                if (Intrinsics.c(((eu.a) it.next()).b().getId(), (aVar == null || (subtitleDownloadTableB = aVar.b()) == null) ? null : subtitleDownloadTableB.getId())) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        com.transsion.ugcvideodetail.adapter.e eVar = new com.transsion.ugcvideodetail.adapter.e(list);
        if (i11 >= 0) {
            eVar.D1(i11);
        }
        eVar.w1(new p6.d() { // from class: com.transsion.ugcvideodetail.fragment.e0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i12) {
                UGCImmVideoSettingSubtitleFragment.e0(list, this, baseQuickAdapter, view, i12);
            }
        });
        this.subtitleAdapter = eVar;
        qv.h mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f73758b) == null) {
            return;
        }
        recyclerView.setAdapter(this.subtitleAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(List list, UGCImmVideoSettingSubtitleFragment uGCImmVideoSettingSubtitleFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        com.transsion.ugcvideodetail.adapter.e eVar = adapter instanceof com.transsion.ugcvideodetail.adapter.e ? (com.transsion.ugcvideodetail.adapter.e) adapter : null;
        if (eVar != null) {
            eVar.D1(i11);
        }
        eu.a aVar = (eu.a) list.get(i11);
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "half_screen"), TuplesKt.a("module_name", "subtitle"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, aVar.b().getLanName())));
        Function1 function1 = uGCImmVideoSettingSubtitleFragment.onSubtitleSelected;
        if (function1 != null) {
            function1.invoke(aVar);
        }
        Function0 function0 = uGCImmVideoSettingSubtitleFragment.onBackClick;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public qv.h getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.h hVarC = qv.h.c(inflater);
        Intrinsics.g(hVarC, "inflate(...)");
        return hVarC;
    }

    public final void f0(Function0 function0) {
        this.onBackClick = function0;
    }

    public final void g0(Function1 function1) {
        this.onSubtitleSelected = function1;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        d0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }
}
