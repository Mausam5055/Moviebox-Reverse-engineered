package com.transsnet.downloader.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.drawable.DrawableCreator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.DubsInfoData;
import com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment;
import com.transsnet.downloader.viewmodel.DownloadResourcesDetectorViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 +2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0004R\u0018\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, d2 = {"Lcom/transsnet/downloader/dialog/DownloadAudioTrackSelectDialog;", "Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;", "Lpy/u;", "<init>", "()V", "", "M0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/moviedetailapi/bean/DubsInfoData;", "dubsInfoData", "N0", "(Lcom/transsion/moviedetailapi/bean/DubsInfoData;)V", "Landroid/view/LayoutInflater;", "inflater", "J0", "(Landroid/view/LayoutInflater;)Lpy/u;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "initViewData", "l", "Lcom/transsion/moviedetailapi/bean/DubsInfoData;", "Lcom/transsnet/downloader/adapter/e;", "m", "Lcom/transsnet/downloader/adapter/e;", "adapter", "", "n", "J", "lastClickTime", "o", "Ljava/lang/String;", "curSubjectId", "", TtmlNode.TAG_P, "Z", "dialogStyle", CampaignEx.JSON_KEY_AD_Q, "a", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class DownloadAudioTrackSelectDialog extends DownloadReDetectorBaseFragment<py.u> {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private DubsInfoData dubsInfoData;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private com.transsnet.downloader.adapter.e adapter;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private long lastClickTime;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private String curSubjectId;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private boolean dialogStyle = true;

    /* JADX INFO: renamed from: com.transsnet.downloader.dialog.DownloadAudioTrackSelectDialog$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DownloadAudioTrackSelectDialog a(DubsInfoData dubsInfoData, boolean z10) {
            DownloadAudioTrackSelectDialog downloadAudioTrackSelectDialog = new DownloadAudioTrackSelectDialog();
            downloadAudioTrackSelectDialog.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_dialog_style", Boolean.valueOf(z10))));
            downloadAudioTrackSelectDialog.N0(dubsInfoData);
            return downloadAudioTrackSelectDialog;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(DownloadAudioTrackSelectDialog downloadAudioTrackSelectDialog, View view) {
        downloadAudioTrackSelectDialog.M0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(DownloadAudioTrackSelectDialog downloadAudioTrackSelectDialog, com.transsnet.downloader.adapter.e eVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        androidx.p009lifecycle.b0 b0VarG;
        androidx.p009lifecycle.b0 b0VarO;
        List<Object> data;
        List<Object> data2;
        DubsInfo dubsInfo;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (downloadAudioTrackSelectDialog.lastClickTime == 0 || System.currentTimeMillis() - downloadAudioTrackSelectDialog.lastClickTime > 1000) {
            downloadAudioTrackSelectDialog.lastClickTime = System.currentTimeMillis();
            com.transsnet.downloader.adapter.e eVar2 = downloadAudioTrackSelectDialog.adapter;
            if (eVar2 != null && (data = eVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i12 = -1;
                        break;
                    } else if (Intrinsics.c(downloadAudioTrackSelectDialog.curSubjectId, ((DubsInfo) it.next()).getSubjectId())) {
                        break;
                    } else {
                        i12++;
                    }
                }
                if (i12 >= 0) {
                    com.transsnet.downloader.adapter.e eVar3 = downloadAudioTrackSelectDialog.adapter;
                    if (eVar3 != null && (data2 = eVar3.getData()) != null && (dubsInfo = (DubsInfo) data2.get(i12)) != null) {
                        dubsInfo.setSelected(false);
                    }
                    com.transsnet.downloader.adapter.e eVar4 = downloadAudioTrackSelectDialog.adapter;
                    if (eVar4 != null) {
                        eVar4.notifyItemChanged(i12);
                    }
                }
            }
            DubsInfo dubsInfo2 = (DubsInfo) eVar.getItem(i11);
            downloadAudioTrackSelectDialog.curSubjectId = dubsInfo2.getSubjectId();
            dubsInfo2.setSelected(true);
            com.transsnet.downloader.adapter.e eVar5 = downloadAudioTrackSelectDialog.adapter;
            if (eVar5 != null) {
                eVar5.notifyItemChanged(i11);
            }
            DownloadResourcesDetectorViewModel viewModel = downloadAudioTrackSelectDialog.getViewModel();
            if (viewModel != null && (b0VarO = viewModel.o()) != null) {
                b0VarO.q(dubsInfo2);
            }
            DownloadResourcesDetectorViewModel viewModel2 = downloadAudioTrackSelectDialog.getViewModel();
            if (viewModel2 != null && (b0VarG = viewModel2.g()) != null) {
                b0VarG.q(dubsInfo2.getSubjectId());
            }
            downloadAudioTrackSelectDialog.M0();
        }
    }

    private final void M0() {
        androidx.p009lifecycle.b0 b0VarP;
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        if (viewModel == null || (b0VarP = viewModel.p()) == null) {
            return;
        }
        b0VarP.q(2);
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    /* JADX INFO: renamed from: J0, reason: merged with bridge method [inline-methods] */
    public py.u getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        py.u uVarC = py.u.c(inflater);
        Intrinsics.g(uVarC, "inflate(...)");
        return uVarC;
    }

    public final void N0(DubsInfoData dubsInfoData) {
        this.dubsInfoData = dubsInfoData;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initListener() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        List<DubsInfo> dubs;
        androidx.p009lifecycle.b0 b0VarG;
        lg.a.C0828a.f(lg.a.f68839a, "premium_d", "DownloadAudioTrackSelectDialog --> initViewData()", false, 4, null);
        py.u uVar = (py.u) getMViewBinding();
        if (uVar != null) {
            if (!this.dialogStyle) {
                uVar.f72929b.setBackground(new DrawableCreator.Builder().setSolidColor(requireActivity().getResources().getColor(R$color.gray_dark_00)).build());
            }
            uVar.f72929b.getLayoutParams().height = o0();
            uVar.f72931d.setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.dialog.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DownloadAudioTrackSelectDialog.K0(this.f58728a, view);
                }
            });
            RecyclerView recyclerView = uVar.f72932e;
            Context context = getContext();
            recyclerView.setLayoutManager((context == null || !com.transsion.baseui.util.b.a(context)) ? new NpaLinearLayoutManager(requireContext(), 1, false) : new NpaGridLayoutManager(requireContext(), 2));
            RecyclerView recyclerView2 = uVar.f72932e;
            final com.transsnet.downloader.adapter.e eVar = new com.transsnet.downloader.adapter.e();
            this.adapter = eVar;
            eVar.w1(new p6.d() { // from class: com.transsnet.downloader.dialog.d
                @Override // p6.d
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                    DownloadAudioTrackSelectDialog.L0(this.f58730a, eVar, baseQuickAdapter, view, i11);
                }
            });
            recyclerView2.setAdapter(eVar);
        }
        DownloadResourcesDetectorViewModel viewModel = getViewModel();
        String str = (viewModel == null || (b0VarG = viewModel.g()) == null) ? null : (String) b0VarG.f();
        this.curSubjectId = str;
        DubsInfoData dubsInfoData = this.dubsInfoData;
        if (dubsInfoData == null || (dubs = dubsInfoData.getDubs()) == null) {
            return;
        }
        List<DubsInfo> list = dubs;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        for (DubsInfo dubsInfo : list) {
            dubsInfo.setSelected(Intrinsics.c(dubsInfo.getSubjectId(), str));
            arrayList.add(dubsInfo);
        }
        com.transsnet.downloader.adapter.e eVar2 = this.adapter;
        if (eVar2 != null) {
            eVar2.n1(arrayList);
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsnet.downloader.fragment.DownloadReDetectorBaseFragment, com.transsion.baseui.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.dialogStyle = arguments != null ? arguments.getBoolean("extra_dialog_style") : true;
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
