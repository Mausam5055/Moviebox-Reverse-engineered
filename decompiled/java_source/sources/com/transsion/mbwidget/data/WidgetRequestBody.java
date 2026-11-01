package com.transsion.mbwidget.data;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lcom/transsion/mbwidget/data/WidgetRequestBody;", "Ljava/io/Serializable;", "hotListCnt", "", "userInterestsCnt", "<init>", "(II)V", "getHotListCnt", "()I", "getUserInterestsCnt", "DeskWidget_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WidgetRequestBody implements Serializable {
    private final int hotListCnt;
    private final int userInterestsCnt;

    /* JADX WARN: Illegal instructions before constructor call */
    public WidgetRequestBody() {
        int i11 = 0;
        this(i11, i11, 3, null);
    }

    public WidgetRequestBody(int i11, int i12) {
        this.hotListCnt = i11;
        this.userInterestsCnt = i12;
    }

    public /* synthetic */ WidgetRequestBody(int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 8 : i12);
    }

    public final int getHotListCnt() {
        return this.hotListCnt;
    }

    public final int getUserInterestsCnt() {
        return this.userInterestsCnt;
    }
}
