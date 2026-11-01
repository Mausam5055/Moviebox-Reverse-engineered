package com.transsion.ad.bidding.video;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.R$style;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J)\u0010\u0018\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u00152\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u0015¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u001c\u0010\u001dR \u0010 \u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR \u0010\"\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010(\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010%¨\u0006)"}, d2 = {"Lcom/transsion/ad/bidding/video/BiddingCloseAdDialog;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroidx/fragment/app/FragmentManager;", "fragmentManager", "", "tag", "", "d0", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V", "getClassTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Lkotlin/Function0;", "closeAdCallback", "resumeAdCallback", "b0", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/ad/bidding/video/BiddingCloseAdDialog;", "Landroid/content/Context;", "context", "c0", "(Landroid/content/Context;Ljava/lang/String;)V", "a", "Lkotlin/jvm/functions/Function0;", "mResumeAdCallback", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mCloseAdCallback", "Landroidx/appcompat/widget/AppCompatTextView;", "c", "Landroidx/appcompat/widget/AppCompatTextView;", "tvResumeAd", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "tvCloseAd", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingCloseAdDialog extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Function0 mResumeAdCallback;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private Function0 mCloseAdCallback;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvResumeAd;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private AppCompatTextView tvCloseAd;

    public BiddingCloseAdDialog() {
        super(R$layout.dialog_video_cloase_ad_layout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(BiddingCloseAdDialog biddingCloseAdDialog, View view) {
        Function0 function0 = biddingCloseAdDialog.mCloseAdCallback;
        if (function0 != null) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a0(BiddingCloseAdDialog biddingCloseAdDialog, View view) {
        biddingCloseAdDialog.dismissAllowingStateLoss();
        Function0 function0 = biddingCloseAdDialog.mResumeAdCallback;
        if (function0 != null) {
        }
    }

    private final void d0(FragmentManager fragmentManager, String tag) {
        try {
            fragmentManager.g0();
            if (!isAdded() && fragmentManager.k0(tag) == null) {
                show(fragmentManager, tag);
            }
        } catch (IllegalStateException e11) {
            e11.printStackTrace();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public final BiddingCloseAdDialog b0(Function0 closeAdCallback, Function0 resumeAdCallback) {
        Intrinsics.h(closeAdCallback, "closeAdCallback");
        Intrinsics.h(resumeAdCallback, "resumeAdCallback");
        this.mCloseAdCallback = closeAdCallback;
        this.mResumeAdCallback = resumeAdCallback;
        return this;
    }

    public final void c0(Context context, String tag) {
        if (context instanceof FragmentActivity) {
            FragmentActivity fragmentActivity = (FragmentActivity) context;
            if (fragmentActivity.isFinishing() || fragmentActivity.isDestroyed()) {
                return;
            }
            try {
                FragmentManager supportFragmentManager = ((FragmentActivity) context).getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                d0(supportFragmentManager, tag);
            } catch (IllegalStateException e11) {
                e11.printStackTrace();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    public final String getClassTag() {
        String simpleName = BiddingCloseAdDialog.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setStyle(0, R$style.ad_center_DialogStyle);
        oi.a.o(oi.a.f71022a, "ad_v", getClassTag() + " --> onCreate() --> 观看广告弹窗", 0, false, 4, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Window window2;
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Dialog dialog = getDialog();
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout(-2, -2);
        }
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setGravity(17);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null) {
            dialog3.setCancelable(false);
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(R$id.tvCloseAd);
        this.tvCloseAd = appCompatTextView;
        if (appCompatTextView != null) {
            appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.n
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BiddingCloseAdDialog.Z(this.f42065a, view2);
                }
            });
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(R$id.tvResumeAd);
        this.tvResumeAd = appCompatTextView2;
        if (appCompatTextView2 != null) {
            appCompatTextView2.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ad.bidding.video.o
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    BiddingCloseAdDialog.a0(this.f42066a, view2);
                }
            });
        }
    }
}
