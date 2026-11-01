package com.transsion.usercenter.devicemanagement.adapter;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gw.f;
import gw.g;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J%\u0010\t\u001a\u00020\u00072\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/usercenter/devicemanagement/adapter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Ljw/a;", "<init>", "()V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<jw.a> {
    public a() {
        super(null, 1, null);
        F1(new g());
        F1(new gw.b());
        F1(new f());
        F1(new gw.d());
        F1(new gw.c());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends jw.a> data, int position) {
        Intrinsics.h(data, "data");
        jw.a aVar = data.get(position);
        if (aVar instanceof jw.a.e) {
            return 1;
        }
        if (aVar instanceof jw.a.C0803a) {
            return 2;
        }
        if (Intrinsics.c(aVar, jw.a.d.f66306a)) {
            return 3;
        }
        if (aVar instanceof jw.a.c) {
            return 4;
        }
        if (aVar instanceof jw.a.b) {
            return 5;
        }
        throw new NoWhenBranchMatchedException();
    }
}
