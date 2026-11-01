package com.transsion.home.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Pager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J?\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/transsion/home/bean/FilmListResponse;", "", CampaignEx.JSON_KEY_DESC, "", "items", "", "Lcom/transsion/home/bean/UgcGenreTopRespGenreItem;", "pager", "Lcom/transsion/moviedetailapi/bean/Pager;", "ops", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Ljava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getItems", "()Ljava/util/List;", "getPager", "()Lcom/transsion/moviedetailapi/bean/Pager;", "getOps", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FilmListResponse {
    public static final int $stable = 8;

    @SerializedName(CampaignEx.JSON_KEY_DESC)
    private final String desc;

    @SerializedName("list")
    private final List<UgcGenreTopRespGenreItem> items;

    @SerializedName("ops")
    private final String ops;

    @SerializedName("pager")
    private final Pager pager;

    public FilmListResponse() {
        this(null, null, null, null, 15, null);
    }

    public FilmListResponse(String str, List<UgcGenreTopRespGenreItem> list, Pager pager, String str2) {
        this.desc = str;
        this.items = list;
        this.pager = pager;
        this.ops = str2;
    }

    public /* synthetic */ FilmListResponse(String str, List list, Pager pager, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : pager, (i11 & 8) != 0 ? null : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FilmListResponse copy$default(FilmListResponse filmListResponse, String str, List list, Pager pager, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = filmListResponse.desc;
        }
        if ((i11 & 2) != 0) {
            list = filmListResponse.items;
        }
        if ((i11 & 4) != 0) {
            pager = filmListResponse.pager;
        }
        if ((i11 & 8) != 0) {
            str2 = filmListResponse.ops;
        }
        return filmListResponse.copy(str, list, pager, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    public final List<UgcGenreTopRespGenreItem> component2() {
        return this.items;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Pager getPager() {
        return this.pager;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    public final FilmListResponse copy(String desc, List<UgcGenreTopRespGenreItem> items, Pager pager, String ops) {
        return new FilmListResponse(desc, items, pager, ops);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FilmListResponse)) {
            return false;
        }
        FilmListResponse filmListResponse = (FilmListResponse) other;
        return Intrinsics.c(this.desc, filmListResponse.desc) && Intrinsics.c(this.items, filmListResponse.items) && Intrinsics.c(this.pager, filmListResponse.pager) && Intrinsics.c(this.ops, filmListResponse.ops);
    }

    public final String getDesc() {
        return this.desc;
    }

    public final List<UgcGenreTopRespGenreItem> getItems() {
        return this.items;
    }

    public final String getOps() {
        return this.ops;
    }

    public final Pager getPager() {
        return this.pager;
    }

    public int hashCode() {
        String str = this.desc;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<UgcGenreTopRespGenreItem> list = this.items;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Pager pager = this.pager;
        int iHashCode3 = (iHashCode2 + (pager == null ? 0 : pager.hashCode())) * 31;
        String str2 = this.ops;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "FilmListResponse(desc=" + this.desc + ", items=" + this.items + ", pager=" + this.pager + ", ops=" + this.ops + ")";
    }
}
