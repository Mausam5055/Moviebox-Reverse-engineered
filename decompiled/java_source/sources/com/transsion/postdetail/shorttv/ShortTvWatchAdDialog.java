package com.transsion.postdetail.shorttv;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.google.android.material.R$id;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.dialog.BaseDialog;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.R$style;
import com.transsnet.downloader.util.d0;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\b\u0005*\u0002$(\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J!\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u0019\u0010\u0013\u001a\u00020\u00122\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0015\u0010\u0010R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog;", "Lcom/tn/lib/dialog/BaseDialog;", "<init>", "()V", "", "h0", "g0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onResume", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "onDismiss", "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", "a", "Lkotlin/Lazy;", "f0", "()Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", "shortTvPlayListViewModel", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "videoManager", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "c", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "interstitialManager", "com/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$videoListener$1;", "videoListener", "com/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1", "e", "Lcom/transsion/postdetail/shorttv/ShortTvWatchAdDialog$interstitialListener$1;", "interstitialListener", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvWatchAdDialog extends BaseDialog {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTvPlayListViewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private BiddingVideoManager videoManager;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private BiddingInterstitialManager interstitialManager;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final ShortTvWatchAdDialog$videoListener$1 videoListener;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final ShortTvWatchAdDialog$interstitialListener$1 interstitialListener;

    /* JADX WARN: Type inference failed for: r0v4, types: [com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$videoListener$1] */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$interstitialListener$1] */
    public ShortTvWatchAdDialog() {
        super(R$layout.dialog_short_tv_unlock_tips);
        this.shortTvPlayListViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ShortTvPlayListViewModel.class), new Function0<x0>() { // from class: com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() { // from class: com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$special$$inlined$activityViewModels$default$2
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
        this.videoListener = new di.a() { // from class: com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$videoListener$1

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private boolean f49194d;

            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                this.f49195e.g0();
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                kotlinx.coroutines.k.d(v.a(this.f49195e), null, null, new ShortTvWatchAdDialog$videoListener$1$onBiddingLoad$1(this.f49195e, biddingIntermediateMaterialBean, null), 3, null);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                if (this.f49194d) {
                    this.f49195e.f0().i("ad_success");
                } else {
                    this.f49195e.f0().i("ad_cancel");
                }
                this.f49195e.dismissAllowingStateLoss();
            }

            @Override // di.a
            public void o(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.o(biddingIntermediateMaterialBean);
                this.f49194d = true;
            }

            @Override // di.a
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                this.f49195e.g0();
            }
        };
        this.interstitialListener = new di.a() { // from class: com.transsion.postdetail.shorttv.ShortTvWatchAdDialog$interstitialListener$1
            @Override // di.a
            public void i(TAdErrorCode tAdErrorCode) {
                super.i(tAdErrorCode);
                this.f49193d.f0().i("ad_load_fail");
                this.f49193d.dismissAllowingStateLoss();
            }

            @Override // di.a
            public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.j(biddingIntermediateMaterialBean);
                kotlinx.coroutines.k.d(v.a(this.f49193d), null, null, new ShortTvWatchAdDialog$interstitialListener$1$onBiddingLoad$1(this.f49193d, biddingIntermediateMaterialBean, null), 3, null);
            }

            @Override // di.a
            public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.m(biddingIntermediateMaterialBean);
                this.f49193d.f0().i("ad_success");
                this.f49193d.dismissAllowingStateLoss();
            }

            @Override // di.a
            public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                super.p(biddingIntermediateMaterialBean);
                this.f49193d.f0().i("ad_load_fail");
                this.f49193d.dismissAllowingStateLoss();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ShortTvPlayListViewModel f0() {
        return (ShortTvPlayListViewModel) this.shortTvPlayListViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        BiddingInterstitialManager biddingInterstitialManager = this.interstitialManager;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
        BiddingInterstitialManager biddingInterstitialManager2 = new BiddingInterstitialManager();
        this.interstitialManager = biddingInterstitialManager2;
        biddingInterstitialManager2.O0("ShortTvInterstitialScene");
        BiddingInterstitialManager biddingInterstitialManager3 = this.interstitialManager;
        if (biddingInterstitialManager3 != null) {
            biddingInterstitialManager3.N0(this.interstitialListener);
        }
        kotlinx.coroutines.k.d(v.a(this), null, null, new ShortTvWatchAdDialog$loadInterstitialAd$1(this, null), 3, null);
    }

    private final void h0() {
        BiddingVideoManager biddingVideoManager = this.videoManager;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
        BiddingVideoManager biddingVideoManager2 = new BiddingVideoManager();
        this.videoManager = biddingVideoManager2;
        biddingVideoManager2.O0("ShortTvVideoScene");
        BiddingVideoManager biddingVideoManager3 = this.videoManager;
        if (biddingVideoManager3 != null) {
            biddingVideoManager3.N0(this.videoListener);
        }
        kotlinx.coroutines.k.d(v.a(this), null, null, new ShortTvWatchAdDialog$loadVideoAd$1(this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(ShortTvWatchAdDialog shortTvWatchAdDialog, View view) {
        shortTvWatchAdDialog.dismissAllowingStateLoss();
        shortTvWatchAdDialog.f0().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(ShortTvWatchAdDialog shortTvWatchAdDialog, View view) {
        if (com.transsion.baseui.util.c.f43504a.a(view.getId(), 1000L)) {
            return;
        }
        oh.g gVar = oh.g.f71020a;
        Context contextRequireContext = shortTvWatchAdDialog.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        if (!gVar.a(contextRequireContext)) {
            com.tn.lib.widget.toast.core.h.f41479a.k(R$string.player_no_network_tip2);
            return;
        }
        Subject subject = (Subject) shortTvWatchAdDialog.f0().h().f();
        if (subject == null) {
            return;
        }
        k.b(k.f49224a, subject.getSubjectId(), subject.getOps(), "dialog_minitv_unlock", "1", null, 16, null);
        shortTvWatchAdDialog.h0();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onCancel(dialog);
        f0().j();
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        com.google.android.material.bottomsheet.c cVar = new com.google.android.material.bottomsheet.c(requireContext(), R$style.BottomDialogTheme);
        cVar.setCanceledOnTouchOutside(false);
        return cVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.h(dialog, "dialog");
        super.onDismiss(dialog);
        BiddingVideoManager biddingVideoManager = this.videoManager;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
        BiddingInterstitialManager biddingInterstitialManager = this.interstitialManager;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
    }

    @Override // com.tn.lib.dialog.BaseDialog, androidx.fragment.app.Fragment
    public void onResume() {
        Window window;
        View viewFindViewById;
        super.onResume();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null || (viewFindViewById = window.findViewById(R$id.design_bottom_sheet)) == null) {
            return;
        }
        viewFindViewById.setBackgroundResource(R.color.transparent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String subjectId;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        view.findViewById(com.transsion.postdetail.R$id.iv_close).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShortTvWatchAdDialog.i0(this.f49225a, view2);
            }
        });
        TextView textView = (TextView) view.findViewById(com.transsion.postdetail.R$id.tv_episode);
        Subject subject = (Subject) f0().h().f();
        int totalEpisode = subject != null ? subject.getTotalEpisode() : 0;
        d0 d0Var = d0.f59926a;
        int iE = d0Var.e();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        textView.setText(iE + d0Var.c(subjectId) >= totalEpisode ? getString(R$string.short_tv_watch_ad_tips, getString(R$string.short_tv_all)) : getString(R$string.short_tv_watch_ad_tips, String.valueOf(d0Var.e())));
        view.findViewById(com.transsion.postdetail.R$id.tv_unlock).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShortTvWatchAdDialog.j0(this.f49226a, view2);
            }
        });
    }
}
