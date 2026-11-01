package com.transsion.usercenter.setting.labelsfeedback.expandrecycler;

import com.google.android.flexbox.FlexboxLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/expandrecycler/FbFlowLayoutManager;", "Lcom/google/android/flexbox/FlexboxLayoutManager;", "", "canScrollHorizontally", "()Z", "canScrollVertically", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FbFlowLayoutManager extends FlexboxLayoutManager {
    @Override // com.google.android.flexbox.FlexboxLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollHorizontally() {
        return false;
    }

    @Override // com.google.android.flexbox.FlexboxLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollVertically() {
        return false;
    }
}
