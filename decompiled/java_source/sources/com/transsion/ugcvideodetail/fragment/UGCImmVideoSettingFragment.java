package com.transsion.ugcvideodetail.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.noober.background.view.BLConstraintLayout;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.dialog.UGCImmVideoSettingDialog;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001d\u0010\u0004R\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010'R\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020*0)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020/0.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010,R\u001c\u00103\u001a\b\u0012\u0004\u0012\u00020\u00070.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u0010,R\u0016\u00106\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R0\u0010B\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u0005\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR0\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010=\u001a\u0004\bD\u0010?\"\u0004\bE\u0010AR*\u0010N\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR*\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010G8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010I\u001a\u0004\bP\u0010K\"\u0004\bQ\u0010MR0\u0010W\u001a\u0010\u0012\u0004\u0012\u00020S\u0012\u0004\u0012\u00020\u0005\u0018\u00010;8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010=\u001a\u0004\bU\u0010?\"\u0004\bV\u0010A¨\u0006X"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqv/g;", "<init>", "()V", "", "u0", "", "index", "J0", "(I)V", "D0", "s0", "B0", "q0", "o0", "k0", "Landroid/view/LayoutInflater;", "inflater", "m0", "(Landroid/view/LayoutInflater;)Lqv/g;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "initListener", "lazyLoadData", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "n0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "viewModel", "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "l0", "()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", "subtitleViewModel", "", "", "c", "Ljava/util/List;", "speedOptions", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "qualityOptions", "e", "qualityOptionsOrigin", "f", "I", "selectedQualityIndex", "Lcom/transsion/ugcvideodetail/adapter/d;", "g", "Lcom/transsion/ugcvideodetail/adapter/d;", "qualityAdapter", "Lkotlin/Function1;", "h", "Lkotlin/jvm/functions/Function1;", "getOnSpeedSelected", "()Lkotlin/jvm/functions/Function1;", "H0", "(Lkotlin/jvm/functions/Function1;)V", "onSpeedSelected", "i", "getOnQualitySelected", "G0", "onQualitySelected", "Lkotlin/Function0;", "j", "Lkotlin/jvm/functions/Function0;", "getOnSubtitleClick", "()Lkotlin/jvm/functions/Function0;", "I0", "(Lkotlin/jvm/functions/Function0;)V", "onSubtitleClick", CampaignEx.JSON_KEY_AD_K, "getOnCleanModeClick", "F0", "onCleanModeClick", "", "l", "getOnAutoplayChanged", "E0", "onAutoplayChanged", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoSettingFragment extends BaseFragment<qv.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy viewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$2
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
    private final Lazy subtitleViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.ugcvideodetail.hepler.subtitle.a.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$3
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.ugcvideodetail.fragment.UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$4
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
    private final List speedOptions = CollectionsKt.o(Float.valueOf(0.5f), Float.valueOf(0.75f), Float.valueOf(1.0f), Float.valueOf(1.25f), Float.valueOf(1.5f), Float.valueOf(2.0f));

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private List qualityOptions = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private List qualityOptionsOrigin = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int selectedQualityIndex;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private com.transsion.ugcvideodetail.adapter.d qualityAdapter;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private Function1 onSpeedSelected;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private Function1 onQualitySelected;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private Function0 onSubtitleClick;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private Function0 onCleanModeClick;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private Function1 onAutoplayChanged;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        uGCImmVideoSettingFragment.D0(5);
    }

    private final void B0() {
        BLConstraintLayout bLConstraintLayout;
        qv.g mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bLConstraintLayout = mViewBinding.f73736f) == null) {
            return;
        }
        bLConstraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCImmVideoSettingFragment.C0(this.f56207a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "half_screen"), TuplesKt.a("module_name", "subtitle")));
        Fragment parentFragment = uGCImmVideoSettingFragment.getParentFragment();
        UGCImmVideoSettingDialog uGCImmVideoSettingDialog = parentFragment instanceof UGCImmVideoSettingDialog ? (UGCImmVideoSettingDialog) parentFragment : null;
        if (uGCImmVideoSettingDialog != null) {
            uGCImmVideoSettingDialog.x0();
        }
        Function0 function0 = uGCImmVideoSettingFragment.onSubtitleClick;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void D0(int index) {
        J0(index);
        float fFloatValue = ((Number) this.speedOptions.get(index)).floatValue();
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "half_screen"), TuplesKt.a("module_name", "speed"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(fFloatValue))));
        com.transsion.baselib.report.launch.b.f43370a.b().putFloat("KEY_UGC_IMM_VIDEO_SPEED", fFloatValue);
        Function1 function1 = this.onSpeedSelected;
        if (function1 != null) {
            function1.invoke(this.speedOptions.get(index));
        }
        k0();
    }

    private final void J0(int index) {
        int i11 = 0;
        if (index < 0 || index >= this.speedOptions.size()) {
            return;
        }
        qv.g mViewBinding = getMViewBinding();
        GradientTextView gradientTextView = mViewBinding != null ? mViewBinding.f73749s : null;
        qv.g mViewBinding2 = getMViewBinding();
        GradientTextView gradientTextView2 = mViewBinding2 != null ? mViewBinding2.f73750t : null;
        qv.g mViewBinding3 = getMViewBinding();
        GradientTextView gradientTextView3 = mViewBinding3 != null ? mViewBinding3.f73751u : null;
        qv.g mViewBinding4 = getMViewBinding();
        GradientTextView gradientTextView4 = mViewBinding4 != null ? mViewBinding4.f73752v : null;
        qv.g mViewBinding5 = getMViewBinding();
        GradientTextView gradientTextView5 = mViewBinding5 != null ? mViewBinding5.f73753w : null;
        qv.g mViewBinding6 = getMViewBinding();
        List listO = CollectionsKt.o(gradientTextView, gradientTextView2, gradientTextView3, gradientTextView4, gradientTextView5, mViewBinding6 != null ? mViewBinding6.f73754x : null);
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        int color = androidx.core.content.b.getColor(contextRequireContext, R$color.brand_new_gradient_start);
        int color2 = androidx.core.content.b.getColor(contextRequireContext, R$color.brand_new_gradient_center);
        int color3 = androidx.core.content.b.getColor(contextRequireContext, R$color.brand_new_gradient_end);
        int color4 = androidx.core.content.b.getColor(contextRequireContext, R$color.text_03);
        for (Object obj : listO) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            GradientTextView gradientTextView6 = (GradientTextView) obj;
            if (i11 == index) {
                if (gradientTextView6 != null) {
                    gradientTextView6.setGradientColors(color, color2, color3);
                }
            } else if (gradientTextView6 != null) {
                gradientTextView6.setGradientColors(color4, color4, color4);
            }
            i11 = i12;
        }
    }

    private final void k0() {
        Fragment parentFragment = getParentFragment();
        UGCImmVideoSettingDialog uGCImmVideoSettingDialog = parentFragment instanceof UGCImmVideoSettingDialog ? (UGCImmVideoSettingDialog) parentFragment : null;
        if (uGCImmVideoSettingDialog != null) {
            uGCImmVideoSettingDialog.dismissAllowingStateLoss();
        }
    }

    private final com.transsion.ugcvideodetail.hepler.subtitle.a l0() {
        return (com.transsion.ugcvideodetail.hepler.subtitle.a) this.subtitleViewModel.getValue();
    }

    private final UGCImmVideoDetailViewModel n0() {
        return (UGCImmVideoDetailViewModel) this.viewModel.getValue();
    }

    private final void o0() {
        SwitchButton switchButton;
        qv.g mViewBinding = getMViewBinding();
        if (mViewBinding == null || (switchButton = mViewBinding.f73745o) == null) {
            return;
        }
        switchButton.setChecked(com.transsion.baselib.report.launch.b.f43370a.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false));
        switchButton.setOnCheckedChangeListener(new SwitchButton.d() { // from class: com.transsion.ugcvideodetail.fragment.w
            @Override // com.tn.lib.view.SwitchButton.d
            public final void a(SwitchButton switchButton2, boolean z10) {
                UGCImmVideoSettingFragment.p0(this.f56278a, switchButton2, z10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, SwitchButton switchButton, boolean z10) {
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "half_screen"), TuplesKt.a("module_name", "auto_play")));
        com.transsion.baselib.report.launch.b.f43370a.b().putBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", z10);
        Function1 function1 = uGCImmVideoSettingFragment.onAutoplayChanged;
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z10));
        }
    }

    private final void q0() {
        BLConstraintLayout bLConstraintLayout;
        qv.g mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bLConstraintLayout = mViewBinding.f73733c) == null) {
            return;
        }
        bLConstraintLayout.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UGCImmVideoSettingFragment.r0(this.f56274a, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "half_screen"), TuplesKt.a("module_name", "clean_mode")));
        uGCImmVideoSettingFragment.k0();
        Function0 function0 = uGCImmVideoSettingFragment.onCleanModeClick;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void s0() {
        UGCVideoPlayInfo playInfo;
        List<UGCVideoPlayStream> resources;
        Integer num;
        RecyclerView recyclerView;
        BLConstraintLayout bLConstraintLayout;
        RecyclerView recyclerView2;
        qv.g mViewBinding = getMViewBinding();
        int iIntValue = 0;
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f73744n) != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(recyclerView2.getContext(), 0, false));
            recyclerView2.addItemDecoration(new ig.c(dk.a.b(28), 0));
        }
        UGCImmVideo uGCImmVideo = (UGCImmVideo) n0().L0().f();
        if (uGCImmVideo == null || (playInfo = uGCImmVideo.getPlayInfo()) == null || (resources = playInfo.getResources()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = resources.iterator();
        while (true) {
            num = null;
            if (!it.hasNext()) {
                break;
            }
            Integer numV = StringsKt.v(((UGCVideoPlayStream) it.next()).getResolutions());
            if (numV != null && numV.intValue() > 0) {
                num = numV;
            }
            if (num != null) {
                arrayList.add(num);
            }
        }
        List listH0 = CollectionsKt.H0(CollectionsKt.c0(arrayList));
        if (listH0.isEmpty()) {
            qv.g mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (bLConstraintLayout = mViewBinding2.f73734d) == null) {
                return;
            }
            jg.c.g(bLConstraintLayout);
            return;
        }
        this.qualityOptions.clear();
        this.qualityOptionsOrigin.clear();
        List list = this.qualityOptions;
        List list2 = listH0;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((Number) it2.next()).intValue() + "P");
        }
        list.addAll(arrayList2);
        this.qualityOptionsOrigin.addAll(listH0);
        String str = (String) n0().M0().f();
        Integer numV2 = str != null ? StringsKt.v(str) : null;
        if (numV2 != null) {
            Integer numValueOf = Integer.valueOf(listH0.indexOf(numV2));
            num = numValueOf.intValue() >= 0 ? numValueOf : null;
            if (num != null) {
                iIntValue = num.intValue();
            }
        }
        this.selectedQualityIndex = iIntValue;
        com.transsion.ugcvideodetail.adapter.d dVar = new com.transsion.ugcvideodetail.adapter.d(CollectionsKt.U0(this.qualityOptions));
        dVar.D1(this.selectedQualityIndex);
        dVar.w1(new p6.d() { // from class: com.transsion.ugcvideodetail.fragment.u
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                UGCImmVideoSettingFragment.t0(this.f56268a, baseQuickAdapter, view, i11);
            }
        });
        this.qualityAdapter = dVar;
        qv.g mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f73744n) == null) {
            return;
        }
        recyclerView.setAdapter(this.qualityAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        com.transsion.ugcvideodetail.adapter.d dVar = adapter instanceof com.transsion.ugcvideodetail.adapter.d ? (com.transsion.ugcvideodetail.adapter.d) adapter : null;
        if (dVar != null) {
            dVar.D1(i11);
        }
        uGCImmVideoSettingFragment.selectedQualityIndex = i11;
        int iIntValue = ((Number) uGCImmVideoSettingFragment.qualityOptionsOrigin.get(i11)).intValue();
        uGCImmVideoSettingFragment.n0().M0().q(String.valueOf(((Number) uGCImmVideoSettingFragment.qualityOptionsOrigin.get(i11)).intValue()));
        hj.i.f64505a.p("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "half_screen"), TuplesKt.a("module_name", "quality"), TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(iIntValue))));
        Function1 function1 = uGCImmVideoSettingFragment.onQualitySelected;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(iIntValue));
        }
    }

    private final void u0() {
        GradientTextView gradientTextView;
        GradientTextView gradientTextView2;
        GradientTextView gradientTextView3;
        GradientTextView gradientTextView4;
        GradientTextView gradientTextView5;
        GradientTextView gradientTextView6;
        qv.g mViewBinding = getMViewBinding();
        if (mViewBinding != null && (gradientTextView6 = mViewBinding.f73749s) != null) {
            gradientTextView6.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoSettingFragment.v0(this.f56281a, view);
                }
            });
        }
        qv.g mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (gradientTextView5 = mViewBinding2.f73750t) != null) {
            gradientTextView5.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.y
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoSettingFragment.w0(this.f56283a, view);
                }
            });
        }
        qv.g mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (gradientTextView4 = mViewBinding3.f73751u) != null) {
            gradientTextView4.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoSettingFragment.x0(this.f56285a, view);
                }
            });
        }
        qv.g mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (gradientTextView3 = mViewBinding4.f73752v) != null) {
            gradientTextView3.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoSettingFragment.y0(this.f56198a, view);
                }
            });
        }
        qv.g mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (gradientTextView2 = mViewBinding5.f73753w) != null) {
            gradientTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoSettingFragment.z0(this.f56201a, view);
                }
            });
        }
        qv.g mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (gradientTextView = mViewBinding6.f73754x) != null) {
            gradientTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ugcvideodetail.fragment.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    UGCImmVideoSettingFragment.A0(this.f56204a, view);
                }
            });
        }
        float f11 = com.transsion.baselib.report.launch.b.f43370a.b().getFloat("KEY_UGC_IMM_VIDEO_SPEED", 1.0f);
        Iterator it = this.speedOptions.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            if (((Number) it.next()).floatValue() == f11) {
                J0(i11);
            }
            i11++;
        }
        i11 = -1;
        J0(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        uGCImmVideoSettingFragment.D0(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        uGCImmVideoSettingFragment.D0(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        uGCImmVideoSettingFragment.D0(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        uGCImmVideoSettingFragment.D0(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(UGCImmVideoSettingFragment uGCImmVideoSettingFragment, View view) {
        uGCImmVideoSettingFragment.D0(4);
    }

    public final void E0(Function1 function1) {
        this.onAutoplayChanged = function1;
    }

    public final void F0(Function0 function0) {
        this.onCleanModeClick = function0;
    }

    public final void G0(Function1 function1) {
        this.onQualitySelected = function1;
    }

    public final void H0(Function1 function1) {
        this.onSpeedSelected = function1;
    }

    public final void I0(Function0 function0) {
        this.onSubtitleClick = function0;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initData(View view, Bundle savedInstanceState) {
        BLConstraintLayout bLConstraintLayout;
        BLConstraintLayout bLConstraintLayout2;
        Intrinsics.h(view, "view");
        Collection collection = (Collection) l0().d().f();
        if (collection == null || collection.isEmpty()) {
            qv.g mViewBinding = getMViewBinding();
            if (mViewBinding == null || (bLConstraintLayout = mViewBinding.f73736f) == null) {
                return;
            }
            jg.c.g(bLConstraintLayout);
            return;
        }
        qv.g mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (bLConstraintLayout2 = mViewBinding2.f73736f) == null) {
            return;
        }
        jg.c.k(bLConstraintLayout2);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initListener() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        u0();
        s0();
        B0();
        q0();
        o0();
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public qv.g getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qv.g gVarC = qv.g.c(inflater);
        Intrinsics.g(gVarC, "inflate(...)");
        return gVarC;
    }
}
