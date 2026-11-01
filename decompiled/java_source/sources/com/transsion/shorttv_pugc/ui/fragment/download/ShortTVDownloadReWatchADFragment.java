package com.transsion.shorttv_pugc.ui.fragment.download;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.b0;
import com.blankj.utilcode.util.Utils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.viewmodel.ShortTvDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.y;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000 ,2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0004J!\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006."}, d2 = {"Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReWatchADFragment;", "Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTvDownloadReBaseFragment;", "Lms/y;", "<init>", "()V", "", "r0", "p0", "onDestroy", "initViewData", "Landroid/view/LayoutInflater;", "inflater", "m0", "(Landroid/view/LayoutInflater;)Lms/y;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "hidden", "onHiddenChanged", "(Z)V", "Lcom/transsion/shorttv_pugc/utils/b;", "m", "Lkotlin/Lazy;", "l0", "()Lcom/transsion/shorttv_pugc/utils/b;", "shortTVReporter", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "n", "Lcom/transsion/ad/bidding/video/BiddingVideoManager;", "videoManager", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "o", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "interstitialManager", TtmlNode.TAG_P, "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class ShortTVDownloadReWatchADFragment extends ShortTvDownloadReBaseFragment<y> {

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortTVReporter = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ShortTVDownloadReWatchADFragment.q0();
        }
    });

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private BiddingVideoManager videoManager;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private BiddingInterstitialManager interstitialManager;

    /* JADX INFO: renamed from: com.transsion.shorttv_pugc.ui.fragment.download.ShortTVDownloadReWatchADFragment$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ShortTVDownloadReWatchADFragment a() {
            return new ShortTVDownloadReWatchADFragment();
        }
    }

    private final com.transsion.shorttv_pugc.utils.b l0() {
        return (com.transsion.shorttv_pugc.utils.b) this.shortTVReporter.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(ShortTVDownloadReWatchADFragment shortTVDownloadReWatchADFragment, View view) {
        b0 b0VarE;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReWatchADFragment.getViewModel();
        if (shortTvDownloadViewModelH0 == null || (b0VarE = shortTvDownloadViewModelH0.e()) == null) {
            return;
        }
        b0VarE.q("download_short_tv");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(ShortTVDownloadReWatchADFragment shortTVDownloadReWatchADFragment, View view) {
        b0 b0VarN;
        String str;
        if (ht.c.f64838a.a(view.getId(), 1000L)) {
            return;
        }
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = shortTVDownloadReWatchADFragment.getViewModel();
        if (shortTvDownloadViewModelH0 != null && (b0VarN = shortTvDownloadViewModelH0.n()) != null && (str = (String) b0VarN.f()) != null) {
            com.transsion.shorttv_pugc.utils.b.b(shortTVDownloadReWatchADFragment.l0(), str, "dialog_minitv_download_unlock", "1", null, 8, null);
        }
        shortTVDownloadReWatchADFragment.p0();
    }

    private final void p0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final com.transsion.shorttv_pugc.utils.b q0() {
        return new com.transsion.shorttv_pugc.utils.b();
    }

    private final void r0() {
        AppCompatTextView appCompatTextView;
        b0 b0VarH;
        ShortTvDownloadViewModel shortTvDownloadViewModelH0 = getViewModel();
        String strValueOf = (shortTvDownloadViewModelH0 == null || (b0VarH = shortTvDownloadViewModelH0.h()) == null) ? null : (String) b0VarH.f();
        if (strValueOf == null || strValueOf.length() == 0) {
            strValueOf = String.valueOf(com.transsion.shorttv_pugc.utils.h.f54445a.h());
        }
        y yVar = (y) getMViewBinding();
        if (yVar == null || (appCompatTextView = yVar.f69957d) == null) {
            return;
        }
        appCompatTextView.setText(Utils.a().getString(R$string.short_tv_download_watch_ad_ep, strValueOf));
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initListener() {
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewData() {
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        r0();
        y yVar = (y) getMViewBinding();
        if (yVar != null && (appCompatImageView = yVar.f69956c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.v
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ShortTVDownloadReWatchADFragment.n0(this.f54253a, view);
                }
            });
        }
        y yVar2 = (y) getMViewBinding();
        if (yVar2 == null || (appCompatTextView = yVar2.f69958e) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv_pugc.ui.fragment.download.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVDownloadReWatchADFragment.o0(this.f54254a, view);
            }
        });
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void initViewModel() {
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public y getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        y yVarC = y.c(inflater);
        Intrinsics.g(yVarC, "inflate(...)");
        return yVarC;
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        BiddingVideoManager biddingVideoManager = this.videoManager;
        if (biddingVideoManager != null) {
            biddingVideoManager.V();
        }
        BiddingInterstitialManager biddingInterstitialManager = this.interstitialManager;
        if (biddingInterstitialManager != null) {
            biddingInterstitialManager.V();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        r0();
    }

    @Override // com.transsion.shorttv_pugc.ui.fragment.download.ShortTvDownloadReBaseFragment, com.transsion.shorttv_pugc.base.fragment.PageStatusFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
    }

    @Override // com.transsion.shorttv_pugc.base.fragment.PageStatusFragment
    public void retryLoadData() {
    }
}
