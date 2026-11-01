package com.transsnet.downloader.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R.\u0010\u0018\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0014 \u0015*\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00130\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;", "Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;", "<init>", "()V", "", "l1", "initViewData", TmcConstants.NAVIGATION_ON_START, "", "hidden", "onHiddenChanged", "(Z)V", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "i", "Z", "isRequestPermission", "Landroidx/activity/result/b;", "", "", "kotlin.jvm.PlatformType", "j", "Landroidx/activity/result/b;", "requestMultiplePermission", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class LocalFileBaseFragment extends AllHistoricalPlayRecordFragment {

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private boolean isRequestPermission;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final androidx.activity.result.b requestMultiplePermission;

    public LocalFileBaseFragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.h(), new androidx.activity.result.a() { // from class: com.transsnet.downloader.fragment.u6
            @Override // androidx.activity.result.a
            public final void a(Object obj) {
                LocalFileBaseFragment.k1(this.f59338a, (Map) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestMultiplePermission = bVarRegisterForActivityResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k1(LocalFileBaseFragment localFileBaseFragment, Map result) {
        Intrinsics.h(result, "result");
        if (!com.transsion.baselib.helper.e.f43267a.c(localFileBaseFragment.requireContext())) {
            localFileBaseFragment.l1();
        } else {
            localFileBaseFragment.showLoadingView();
            localFileBaseFragment.G0().N();
        }
    }

    private final void l1() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.fragment_no_permission_layout, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R$id.btn)).setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.fragment.v6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LocalFileBaseFragment.m1(this.f59347a, view);
            }
        });
        com.transsnet.downloader.adapter.a aVarF0 = getMAllHistoricalPlayRecordAdapter();
        if (aVarF0 != null) {
            Intrinsics.e(viewInflate);
            aVarF0.Y0(viewInflate);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m1(LocalFileBaseFragment localFileBaseFragment, View view) {
        FragmentActivity activity = localFileBaseFragment.getActivity();
        if (activity == null || activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
        if (!a0Var.p(activity)) {
            localFileBaseFragment.requestMultiplePermission.a(com.transsion.baselib.helper.e.f43267a.a());
        } else {
            localFileBaseFragment.isRequestPermission = true;
            a0Var.x();
        }
    }

    @Override // com.transsion.baseui.fragment.PageStatusFragment
    public View getLoadingView() {
        return LayoutInflater.from(requireContext()).inflate(R$layout.adapter_empty_local_file_layout, (ViewGroup) null);
    }

    @Override // com.transsnet.downloader.fragment.AllHistoricalPlayRecordFragment, com.transsion.baseui.fragment.PageStatusFragment
    public void initViewData() {
        super.initViewData();
        if (com.transsnet.downloader.viewmodel.a0.f60085a.a()) {
            return;
        }
        l1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.isRequestPermission) {
            this.isRequestPermission = false;
            G0().N();
        }
    }
}
