package com.transsion.postdetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\rJ&\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/transsion/postdetail/bean/PagerBody;", "Ljava/io/Serializable;", "page", "", "perPage", "", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "getPage", "()Ljava/lang/String;", "setPage", "(Ljava/lang/String;)V", "getPerPage", "()Ljava/lang/Integer;", "setPerPage", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "component1", "component2", "copy", "(Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/postdetail/bean/PagerBody;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PagerBody implements Serializable {

    @SerializedName("page")
    private String page;

    @SerializedName("perPage")
    private Integer perPage;

    public PagerBody(String str, Integer num) {
        this.page = str;
        this.perPage = num;
    }

    public static /* synthetic */ PagerBody copy$default(PagerBody pagerBody, String str, Integer num, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = pagerBody.page;
        }
        if ((i11 & 2) != 0) {
            num = pagerBody.perPage;
        }
        return pagerBody.copy(str, num);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getPerPage() {
        return this.perPage;
    }

    public final PagerBody copy(String page, Integer perPage) {
        return new PagerBody(page, perPage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PagerBody)) {
            return false;
        }
        PagerBody pagerBody = (PagerBody) other;
        return Intrinsics.c(this.page, pagerBody.page) && Intrinsics.c(this.perPage, pagerBody.perPage);
    }

    public final String getPage() {
        return this.page;
    }

    public final Integer getPerPage() {
        return this.perPage;
    }

    public int hashCode() {
        String str = this.page;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.perPage;
        return iHashCode + (num != null ? num.hashCode() : 0);
    }

    public final void setPage(String str) {
        this.page = str;
    }

    public final void setPerPage(Integer num) {
        this.perPage = num;
    }

    public String toString() {
        return "PagerBody(page=" + this.page + ", perPage=" + this.perPage + ")";
    }
}
