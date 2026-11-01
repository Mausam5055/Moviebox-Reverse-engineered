package com.transsion.usercenter.tvlink;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.mbridge.msdk.MBridgeConstans;
import com.tn.lib.view.StateView;
import com.transsion.baseui.fragment.BaseFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fw.o0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0004¨\u0006\u0011"}, d2 = {"Lcom/transsion/usercenter/tvlink/TvDownloadWebEmptyFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lfw/o0;", "<init>", "()V", "Landroid/view/LayoutInflater;", "inflater", "a0", "(Landroid/view/LayoutInflater;)Lfw/o0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TvDownloadWebEmptyFragment extends BaseFragment<o0> {
    @Override // com.transsion.baseui.fragment.BaseFragment
    /* JADX INFO: renamed from: a0, reason: merged with bridge method [inline-methods] */
    public o0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        o0 o0VarC = o0.c(inflater);
        Intrinsics.g(o0VarC, "inflate(...)");
        return o0VarC;
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void initView(View view, Bundle savedInstanceState) {
        StateView stateView;
        Intrinsics.h(view, "view");
        o0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (stateView = mViewBinding.f62837b) == null) {
            return;
        }
        StateView.showData$default(stateView, 2, 2, false, "", null, 16, null);
    }

    @Override // com.transsion.baseui.fragment.BaseFragment
    public void lazyLoadData() {
    }
}
