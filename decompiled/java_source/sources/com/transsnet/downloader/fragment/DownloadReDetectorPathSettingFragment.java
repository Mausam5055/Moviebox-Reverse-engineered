package com.transsnet.downloader.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 *2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010&\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010!R\u0018\u0010)\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006,"}, d2 = {"Lcom/transsnet/downloader/fragment/DownloadReDetectorPathSettingFragment;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lpy/d0;", "<init>", "()V", "", "P0", "Lmy/b;", "info", "", RequestParameters.POSITION, "M0", "(Lmy/b;I)V", "Landroid/view/LayoutInflater;", "inflater", "L0", "(Landroid/view/LayoutInflater;)Lpy/d0;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lcom/transsnet/downloader/adapter/n;", "l", "Lcom/transsnet/downloader/adapter/n;", "listAdapter", "m", "I", "pageType", "n", "selectedPosition", "o", "itemClickedPosition", TtmlNode.TAG_P, "Lmy/b;", "selectedInfo", CampaignEx.JSON_KEY_AD_Q, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadReDetectorPathSettingFragment extends DownloadReDetectorBaseFragment<py.d0> {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private com.transsnet.downloader.adapter.n listAdapter;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int pageType = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int selectedPosition = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private int itemClickedPosition = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private my.b selectedInfo;

    /* JADX INFO: renamed from: com.transsnet.downloader.fragment.DownloadReDetectorPathSettingFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadReDetectorPathSettingFragment a(int i11) {
            DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment = new DownloadReDetectorPathSettingFragment();
            downloadReDetectorPathSettingFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_download_page_type", Integer.valueOf(i11))));
            return downloadReDetectorPathSettingFragment;
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f58972a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f58972a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f58972a;
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
            this.f58972a.invoke(obj);
        }
    }

    private final void M0(my.b info, int position) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.f(c0828a, tag, StringsKt.n("\n            path， handleItemClick, position = " + position + ", selectedPosition = " + this.itemClickedPosition + " \n                pathName =  " + (info != null ? info.d() : null) + " ,downloadPath =  " + (info != null ? info.b() : null) + " ,downloadShowPath =  " + (info != null ? info.c() : null) + "\n        "), false, 4, null);
        int i11 = this.itemClickedPosition;
        if (i11 == position) {
            return;
        }
        if (i11 >= 0) {
            com.transsnet.downloader.adapter.n nVar = this.listAdapter;
            my.b bVar = nVar != null ? (my.b) nVar.getItem(i11) : null;
            if (bVar != null) {
                bVar.g(false);
            }
            com.transsnet.downloader.adapter.n nVar2 = this.listAdapter;
            if (nVar2 != null) {
                nVar2.notifyItemChanged(this.itemClickedPosition, Boolean.FALSE);
            }
        }
        this.itemClickedPosition = position;
        if (info != null) {
            info.g(true);
        }
        com.transsnet.downloader.adapter.n nVar3 = this.listAdapter;
        if (nVar3 != null) {
            nVar3.notifyItemChanged(position, Boolean.TRUE);
        }
        this.selectedInfo = info;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, View view) {
        androidx.p009lifecycle.b0 b0VarP;
        List<Object> data;
        com.transsnet.downloader.adapter.n nVar = downloadReDetectorPathSettingFragment.listAdapter;
        int size = (nVar == null || (data = nVar.getData()) == null) ? 0 : data.size();
        int i11 = downloadReDetectorPathSettingFragment.selectedPosition;
        if (size > i11) {
            com.transsnet.downloader.adapter.n nVar2 = downloadReDetectorPathSettingFragment.listAdapter;
            downloadReDetectorPathSettingFragment.M0(nVar2 != null ? (my.b) nVar2.getItem(i11) : null, downloadReDetectorPathSettingFragment.selectedPosition);
        }
        if (downloadReDetectorPathSettingFragment.pageType == 4) {
            downloadReDetectorPathSettingFragment.m0();
            return;
        }
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorPathSettingFragment.getViewModel();
        if (viewModel == null || (b0VarP = viewModel.p()) == null) {
            return;
        }
        b0VarP.q(Integer.valueOf(downloadReDetectorPathSettingFragment.pageType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, View view) {
        androidx.p009lifecycle.b0 b0VarP;
        androidx.p009lifecycle.b0 b0VarB;
        lg.a.C0828a.f(lg.a.f68839a, "DownloadReDetector", "Confirm click ----selectedInfo = " + downloadReDetectorPathSettingFragment.selectedInfo, false, 4, null);
        my.b bVar = downloadReDetectorPathSettingFragment.selectedInfo;
        if (bVar != null) {
            com.transsion.baselib.report.launch.b bVar2 = com.transsion.baselib.report.launch.b.f43370a;
            bVar2.b().putString("download_root_path", bVar.b());
            bVar2.b().putString("download_root_path_name", bVar.d());
            bVar2.b().putInt("download_root_path_type", bVar.e());
            DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
            aVar.a().X(bVar.b());
            aVar.a().Y(bVar.d());
            aVar.a().Z(bVar.e());
        }
        DownloadResourcesDetectorViewModel viewModel = downloadReDetectorPathSettingFragment.getViewModel();
        if (viewModel != null && (b0VarB = viewModel.B()) != null) {
            b0VarB.q(downloadReDetectorPathSettingFragment.selectedInfo);
        }
        downloadReDetectorPathSettingFragment.selectedPosition = downloadReDetectorPathSettingFragment.itemClickedPosition;
        if (downloadReDetectorPathSettingFragment.pageType == 4) {
            downloadReDetectorPathSettingFragment.m0();
            return;
        }
        DownloadResourcesDetectorViewModel viewModel2 = downloadReDetectorPathSettingFragment.getViewModel();
        if (viewModel2 == null || (b0VarP = viewModel2.p()) == null) {
            return;
        }
        b0VarP.q(Integer.valueOf(downloadReDetectorPathSettingFragment.pageType));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void P0() {
        py.z0 z0Var;
        RecyclerView recyclerView;
        com.transsnet.downloader.adapter.n nVar = new com.transsnet.downloader.adapter.n(false, new ArrayList());
        nVar.w1(new p6.d() { // from class: com.transsnet.downloader.fragment.o3
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                DownloadReDetectorPathSettingFragment.Q0(this.f59276a, baseQuickAdapter, view, i11);
            }
        });
        this.listAdapter = nVar;
        py.d0 d0Var = (py.d0) getMViewBinding();
        if (d0Var == null || (z0Var = d0Var.f72664b) == null || (recyclerView = z0Var.f73009g) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = q0();
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext()));
        recyclerView.setAdapter(this.listAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "<unused var>");
        Object item = adapter.getItem(i11);
        my.b bVar = item instanceof my.b ? (my.b) item : null;
        if (bVar == null || bVar.getItemType() != 4) {
            downloadReDetectorPathSettingFragment.M0(bVar, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit R0(DownloadReDetectorPathSettingFragment downloadReDetectorPathSettingFragment, List list) {
        lg.a.C0828a c0828a = lg.a.f68839a;
        String tag = downloadReDetectorPathSettingFragment.getTAG();
        Intrinsics.g(tag, "<get-TAG>(...)");
        lg.a.C0828a.r(c0828a, tag, new String[]{"path setting size = " + list.size() + " "}, false, 4, null);
        Intrinsics.e(list);
        int i11 = 0;
        for (Object obj : list) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            my.b bVar = (my.b) obj;
            if (bVar.f()) {
                downloadReDetectorPathSettingFragment.selectedPosition = i11;
                downloadReDetectorPathSettingFragment.itemClickedPosition = i11;
                downloadReDetectorPathSettingFragment.selectedInfo = bVar;
            }
            i11 = i12;
        }
        com.transsnet.downloader.adapter.n nVar = downloadReDetectorPathSettingFragment.listAdapter;
        if (nVar != null) {
            nVar.n1(list);
        }
        return Unit.f67061a;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public py.d0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.d0 d0VarC = py.d0.c(inflater);
        Intrinsics.g(d0VarC, "inflate(...)");
        return d0VarC;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
        py.z0 z0Var;
        AppCompatTextView appCompatTextView;
        py.z0 z0Var2;
        ImageView imageView;
        py.d0 d0Var = (py.d0) getMViewBinding();
        if (d0Var != null && (z0Var2 = d0Var.f72664b) != null && (imageView = z0Var2.f73005c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.p3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadReDetectorPathSettingFragment.N0(this.f59284a, view);
                }
            });
        }
        py.d0 d0Var2 = (py.d0) getMViewBinding();
        if (d0Var2 == null || (z0Var = d0Var2.f72664b) == null || (appCompatTextView = z0Var.f73010h) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.q3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadReDetectorPathSettingFragment.O0(this.f59294a, view);
            }
        });
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        lg.a.C0828a.f(lg.a.f68839a, "premium_d", "DownloadReDetectorPathSettingFragment --> initViewData()", false, 4, null);
        Bundle arguments = getArguments();
        this.pageType = arguments != null ? arguments.getInt("extra_download_page_type") : 1;
        P0();
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarR;
        Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            lg.a.C0828a c0828a = lg.a.f68839a;
            String tag = getTAG();
            Intrinsics.g(tag, "<get-TAG>(...)");
            lg.a.C0828a.r(c0828a, tag, new String[]{"initViewModel "}, false, 4, null);
            DownloadResourcesDetectorViewModel viewModel = getViewModel();
            if (viewModel != null && (b0VarR = viewModel.r()) != null) {
                b0VarR.j(parentFragment, new b(new Function1() { // from class: com.transsnet.downloader.fragment.r3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return DownloadReDetectorPathSettingFragment.R0(this.f59305a, (List) obj);
                    }
                }));
            }
        }
        DownloadResourcesDetectorViewModel viewModel2 = getViewModel();
        if (viewModel2 != null) {
            viewModel2.v();
        }
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
    public void retryLoadData() {
    }
}
