package com.transsion.commercialization.aha;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0013"}, d2 = {"Lcom/transsion/commercialization/aha/AhaGameRequest;", "Ljava/io/Serializable;", "query", "Lcom/transsion/commercialization/aha/AhaGameQuery;", "<init>", "(Lcom/transsion/commercialization/aha/AhaGameQuery;)V", "getQuery", "()Lcom/transsion/commercialization/aha/AhaGameQuery;", "setQuery", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AhaGameRequest implements Serializable {

    @SerializedName("query")
    private AhaGameQuery query;

    public AhaGameRequest(AhaGameQuery query) {
        Intrinsics.h(query, "query");
        this.query = query;
    }

    public static /* synthetic */ AhaGameRequest copy$default(AhaGameRequest ahaGameRequest, AhaGameQuery ahaGameQuery, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            ahaGameQuery = ahaGameRequest.query;
        }
        return ahaGameRequest.copy(ahaGameQuery);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final AhaGameQuery getQuery() {
        return this.query;
    }

    public final AhaGameRequest copy(AhaGameQuery query) {
        Intrinsics.h(query, "query");
        return new AhaGameRequest(query);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AhaGameRequest) && Intrinsics.c(this.query, ((AhaGameRequest) other).query);
    }

    public final AhaGameQuery getQuery() {
        return this.query;
    }

    public int hashCode() {
        return this.query.hashCode();
    }

    public final void setQuery(AhaGameQuery ahaGameQuery) {
        Intrinsics.h(ahaGameQuery, "<set-?>");
        this.query = ahaGameQuery;
    }

    public String toString() {
        return "AhaGameRequest(query=" + this.query + ")";
    }
}
