package com.transsion.usercenter.setting.labelsfeedback.model;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOptionList;", "Ljava/io/Serializable;", "labelList", "", "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbOption;", "<init>", "(Ljava/util/List;)V", "getLabelList", "()Ljava/util/List;", "setLabelList", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class FbOptionList implements Serializable {
    private List<FbOption> labelList;

    public FbOptionList(List<FbOption> labelList) {
        Intrinsics.h(labelList, "labelList");
        this.labelList = labelList;
    }

    public final List<FbOption> getLabelList() {
        return this.labelList;
    }

    public final void setLabelList(List<FbOption> list) {
        Intrinsics.h(list, "<set-?>");
        this.labelList = list;
    }
}
