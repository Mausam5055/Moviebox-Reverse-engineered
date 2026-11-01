package com.transsion.videodetail;

import android.R;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.dialog.BaseDialog;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onResume", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Ljx/a;", "a", "Ljx/a;", "dramaDialogEpisodeListBinding", "Landroidx/recyclerview/widget/GridLayoutManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/recyclerview/widget/GridLayoutManager;", "gridLayoutManager", "Lcom/transsion/videodetail/adapter/b;", "c", "Lcom/transsion/videodetail/adapter/b;", "adapter", "Lcom/transsion/videodetail/VideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "d0", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "", "e", "J", "lastClickTime", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class VideoDetailEpisodeSelectDialog extends BaseDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private jx.a dramaDialogEpisodeListBinding;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private GridLayoutManager gridLayoutManager;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private com.transsion.videodetail.adapter.b adapter;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final Lazy videoDetailViewModel;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private long lastClickTime;

    static final class a implements androidx.p009lifecycle.c0, FunctionAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final /* synthetic */ Function1 f57639a;

        a(Function1 function) {
            Intrinsics.h(function, "function");
            this.f57639a = function;
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        public final Function a() {
            return this.f57639a;
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
            this.f57639a.invoke(obj);
        }
    }

    public VideoDetailEpisodeSelectDialog() {
        super(R$layout.dialog_episode);
        this.videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() { // from class: com.transsion.videodetail.VideoDetailEpisodeSelectDialog$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() { // from class: com.transsion.videodetail.VideoDetailEpisodeSelectDialog$special$$inlined$activityViewModels$default$2
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
    }

    private final VideoDetailViewModel d0() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(VideoDetailEpisodeSelectDialog videoDetailEpisodeSelectDialog, View view) {
        videoDetailEpisodeSelectDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f0(VideoDetailEpisodeSelectDialog videoDetailEpisodeSelectDialog, com.transsion.videodetail.adapter.b bVar, BaseQuickAdapter baseQuickAdapter, View view, int i11) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (videoDetailEpisodeSelectDialog.lastClickTime == 0 || System.currentTimeMillis() - videoDetailEpisodeSelectDialog.lastClickTime > 1000) {
            videoDetailEpisodeSelectDialog.lastClickTime = System.currentTimeMillis();
            videoDetailEpisodeSelectDialog.d0().C((VideoDetailMediaSource) bVar.f0(i11));
            videoDetailEpisodeSelectDialog.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit g0(VideoDetailEpisodeSelectDialog videoDetailEpisodeSelectDialog, List list) {
        jx.a aVar;
        RecyclerView recyclerView;
        ProgressBar progressBar;
        jx.a aVar2 = videoDetailEpisodeSelectDialog.dramaDialogEpisodeListBinding;
        if (aVar2 != null && (progressBar = aVar2.f66332c) != null) {
            jg.c.g(progressBar);
        }
        if (list == null) {
            return Unit.f67061a;
        }
        if (list.size() >= 24 && (aVar = videoDetailEpisodeSelectDialog.dramaDialogEpisodeListBinding) != null && (recyclerView = aVar.f66333d) != null) {
            ViewGroup.LayoutParams layoutParams = recyclerView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.i.e(430.0f);
            recyclerView.setLayoutParams(bVar);
        }
        com.transsion.videodetail.adapter.b bVar2 = videoDetailEpisodeSelectDialog.adapter;
        if (bVar2 != null) {
            bVar2.q(list);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(VideoDetailEpisodeSelectDialog videoDetailEpisodeSelectDialog, VideoDetailMediaSource videoDetailMediaSource) {
        com.transsion.videodetail.adapter.b bVar = videoDetailEpisodeSelectDialog.adapter;
        if (bVar != null) {
            bVar.H1(videoDetailMediaSource);
        }
        return Unit.f67061a;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, com.transsion.baseui.R$style.BottomDialogTheme);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(requireContext(), com.transsion.baseui.R$style.BottomDialogTheme);
        cVar.k().U0(3);
        cVar.k().T0(true);
        return cVar;
    }

    @Override // com.tn.lib.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.getAttributes().gravity = 80;
        window.getAttributes().height = -2;
        View viewFindViewById = window.findViewById(com.google.android.material.R$id.design_bottom_sheet);
        if (viewFindViewById != null) {
            viewFindViewById.setBackgroundResource(R.color.transparent);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        jx.a aVarA = jx.a.a(view);
        aVarA.f66331b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.videodetail.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VideoDetailEpisodeSelectDialog.e0(this.f57886a, view2);
            }
        });
        ProgressBar pbLoading = aVarA.f66332c;
        Intrinsics.g(pbLoading, "pbLoading");
        jg.c.k(pbLoading);
        aVarA.f66333d.addItemDecoration(new com.transsion.videodetail.adapter.c(com.blankj.utilcode.util.i.e(12.0f)));
        RecyclerView recyclerView = aVarA.f66333d;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 3);
        this.gridLayoutManager = gridLayoutManager;
        recyclerView.setLayoutManager(gridLayoutManager);
        RecyclerView recyclerView2 = aVarA.f66333d;
        final com.transsion.videodetail.adapter.b bVar = new com.transsion.videodetail.adapter.b(SubjectType.TV.getValue(), false, R$layout.item_video_detail_sel_dialog_episode);
        this.adapter = bVar;
        bVar.w1(new p6.d() { // from class: com.transsion.videodetail.y0
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i11) {
                VideoDetailEpisodeSelectDialog.f0(this.f57888a, bVar, baseQuickAdapter, view2, i11);
            }
        });
        recyclerView2.setAdapter(bVar);
        this.dramaDialogEpisodeListBinding = aVarA;
        d0().s().j(this, new a(new Function1() { // from class: com.transsion.videodetail.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoDetailEpisodeSelectDialog.g0(this.f57891a, (List) obj);
            }
        }));
        d0().x().j(this, new a(new Function1() { // from class: com.transsion.videodetail.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VideoDetailEpisodeSelectDialog.h0(this.f57675a, (VideoDetailMediaSource) obj);
            }
        }));
    }
}
