package com.transsion.shorttv.ui.fragment.download;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.base.fragment.PageStatusFragment;
import com.transsion.shorttv.ui.dialog.ShortTvDownloadResDialog;
import com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u0005R\"\u0010\u0014\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\u0011¨\u0006%"}, d2 = {"Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;", "Lg4/a;", "T", "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "f0", "", "kotlin.jvm.PlatformType", "i", "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;", "j", "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;", "h0", "()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;", "setViewModel", "(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)V", "viewModel", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "g0", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "shortTvViewModel", "l", "curSDRootPath", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public abstract class ShortTvDownloadReBaseFragment<T extends g4.a> extends PageStatusFragment<T> {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ShortTvDownloadViewModel viewModel;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final String TAG = getClass().getSimpleName();

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTvViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvViewModel.class), new Function0<x0>() { // from class: com.transsion.shorttv.ui.fragment.download.ShortTvDownloadReBaseFragment$special$$inlined$activityViewModels$default$1
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x0 invoke() {
            x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<v0.c>() { // from class: com.transsion.shorttv.ui.fragment.download.ShortTvDownloadReBaseFragment$special$$inlined$activityViewModels$default$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final v0.c invoke() {
            v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private String curSDRootPath = "";

    public void f0() {
        Fragment parentFragment = getParentFragment();
        ShortTvDownloadResDialog shortTvDownloadResDialog = parentFragment instanceof ShortTvDownloadResDialog ? (ShortTvDownloadResDialog) parentFragment : null;
        if (shortTvDownloadResDialog != null) {
            shortTvDownloadResDialog.dismissAllowingStateLoss();
        }
    }

    protected final ShortTvViewModel g0() {
        return (ShortTvViewModel) this.shortTvViewModel.getValue();
    }

    protected final String getTAG() {
        return this.TAG;
    }

    /* JADX INFO: renamed from: h0, reason: from getter */
    protected final ShortTvDownloadViewModel getViewModel() {
        return this.viewModel;
    }

    @Override // com.transsion.shorttv.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Fragment parentFragment = getParentFragment();
        ShortTvDownloadResDialog shortTvDownloadResDialog = parentFragment instanceof ShortTvDownloadResDialog ? (ShortTvDownloadResDialog) parentFragment : null;
        if (shortTvDownloadResDialog != null) {
            this.viewModel = (ShortTvDownloadViewModel) new v0(shortTvDownloadResDialog).a(ShortTvDownloadViewModel.class);
        }
        super.onViewCreated(view, savedInstanceState);
    }
}
