package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0017"}, d2 = {"Lcom/transsion/home/bean/FilmListRequest;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "page", "", "perPage", "<init>", "(Ljava/lang/String;II)V", "getType", "()Ljava/lang/String;", "getPage", "()I", "getPerPage", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FilmListRequest {
    public static final int $stable = 0;

    @SerializedName("page")
    private final int page;

    @SerializedName("perPage")
    private final int perPage;

    @SerializedName(NativeComponentConstants.KEY_COMPONENT_TYPE)
    private final String type;

    public FilmListRequest(String type, int i11, int i12) {
        Intrinsics.h(type, "type");
        this.type = type;
        this.page = i11;
        this.perPage = i12;
    }

    public static /* synthetic */ FilmListRequest copy$default(FilmListRequest filmListRequest, String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = filmListRequest.type;
        }
        if ((i13 & 2) != 0) {
            i11 = filmListRequest.page;
        }
        if ((i13 & 4) != 0) {
            i12 = filmListRequest.perPage;
        }
        return filmListRequest.copy(str, i11, i12);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getPage() {
        return this.page;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getPerPage() {
        return this.perPage;
    }

    public final FilmListRequest copy(String type, int page, int perPage) {
        Intrinsics.h(type, "type");
        return new FilmListRequest(type, page, perPage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FilmListRequest)) {
            return false;
        }
        FilmListRequest filmListRequest = (FilmListRequest) other;
        return Intrinsics.c(this.type, filmListRequest.type) && this.page == filmListRequest.page && this.perPage == filmListRequest.perPage;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.page) * 31) + this.perPage;
    }

    public String toString() {
        return "FilmListRequest(type=" + this.type + ", page=" + this.page + ", perPage=" + this.perPage + ")";
    }
}
