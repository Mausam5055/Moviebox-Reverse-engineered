package com.transsion.subtitle.fragment;

import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.p009lifecycle.v0;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.subtitle.dialog.SubtitleMainDialog2;
import com.transsion.subtitle.viewmodel.SubtitleDownloadViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\n\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u0005J\r\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0005R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010#\u001a\n \u001e*\u0004\u0018\u00010\u00110\u00118\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0014\u0010&\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010*\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010)R$\u00100\u001a\u0004\u0018\u00010\u00118\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b-\u0010 \u001a\u0004\b.\u0010\"\"\u0004\b/\u0010\u0014¨\u00061"}, d2 = {"Lcom/transsion/subtitle/fragment/SubtitleBaseFragment;", "Lg4/a;", "T", "Lcom/transsion/baseui/fragment/BaseFragment;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "a0", "", "c0", "()Z", "", "dialogName", "e0", "(Ljava/lang/String;)V", "d0", "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;", "a", "Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;", "b0", "()Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;", "setViewModel", "(Lcom/transsion/subtitle/viewmodel/SubtitleDownloadViewModel;)V", "viewModel", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "getTAG", "()Ljava/lang/String;", "TAG", "c", "Z", "isSmallScreen", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "screenWidth", "e", "screenHeight", "f", "getPageName", "setPageName", "pageName", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class SubtitleBaseFragment<T extends g4.a> extends BaseFragment<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private SubtitleDownloadViewModel viewModel;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final String TAG = getClass().getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final boolean isSmallScreen = oh.h.f71021a.f();

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final int screenWidth = com.blankj.utilcode.util.y.e();

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int screenHeight = com.blankj.utilcode.util.y.c();

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private String pageName;

    public void a0() {
        Fragment parentFragment = getParentFragment();
        SubtitleMainDialog2 subtitleMainDialog2 = parentFragment instanceof SubtitleMainDialog2 ? (SubtitleMainDialog2) parentFragment : null;
        if (subtitleMainDialog2 != null) {
            subtitleMainDialog2.dismissAllowingStateLoss();
        }
    }

    /* JADX INFO: renamed from: b0, reason: from getter */
    protected final SubtitleDownloadViewModel getViewModel() {
        return this.viewModel;
    }

    public final boolean c0() {
        return this.isSmallScreen || ((double) (((float) (((this.screenWidth * 9) / 16) + com.blankj.utilcode.util.a0.a(40.0f))) / ((float) this.screenHeight))) > 0.35d;
    }

    public void d0() {
    }

    public final void e0(String dialogName) {
        Intrinsics.h(dialogName, "dialogName");
        HashMap map = new HashMap();
        map.put("dialog_name", dialogName);
        String str = this.pageName;
        if (str != null) {
            hj.i.f64505a.r(str, map);
        }
    }

    protected final String getPageName() {
        return this.pageName;
    }

    protected final String getTAG() {
        return this.TAG;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        Fragment parentFragment = getParentFragment();
        SubtitleMainDialog2 subtitleMainDialog2 = parentFragment instanceof SubtitleMainDialog2 ? (SubtitleMainDialog2) parentFragment : null;
        if (subtitleMainDialog2 != null) {
            this.viewModel = (SubtitleDownloadViewModel) new v0(subtitleMainDialog2).a(SubtitleDownloadViewModel.class);
        }
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.pageName = arguments.getString("KEY_PAGE_NAME", "");
        }
    }
}
