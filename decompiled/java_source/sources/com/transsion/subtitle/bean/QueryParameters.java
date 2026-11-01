package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J1\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/transsion/subtitle/bean/QueryParameters;", "", "episode", "", "query", "season", "sublanguageid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getEpisode", "()Ljava/lang/String;", "getQuery", "getSeason", "getSublanguageid", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class QueryParameters {
    private final String episode;
    private final String query;
    private final String season;
    private final String sublanguageid;

    public QueryParameters(String episode, String query, String season, String sublanguageid) {
        Intrinsics.h(episode, "episode");
        Intrinsics.h(query, "query");
        Intrinsics.h(season, "season");
        Intrinsics.h(sublanguageid, "sublanguageid");
        this.episode = episode;
        this.query = query;
        this.season = season;
        this.sublanguageid = sublanguageid;
    }

    public static /* synthetic */ QueryParameters copy$default(QueryParameters queryParameters, String str, String str2, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = queryParameters.episode;
        }
        if ((i11 & 2) != 0) {
            str2 = queryParameters.query;
        }
        if ((i11 & 4) != 0) {
            str3 = queryParameters.season;
        }
        if ((i11 & 8) != 0) {
            str4 = queryParameters.sublanguageid;
        }
        return queryParameters.copy(str, str2, str3, str4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEpisode() {
        return this.episode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getQuery() {
        return this.query;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getSeason() {
        return this.season;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSublanguageid() {
        return this.sublanguageid;
    }

    public final QueryParameters copy(String episode, String query, String season, String sublanguageid) {
        Intrinsics.h(episode, "episode");
        Intrinsics.h(query, "query");
        Intrinsics.h(season, "season");
        Intrinsics.h(sublanguageid, "sublanguageid");
        return new QueryParameters(episode, query, season, sublanguageid);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryParameters)) {
            return false;
        }
        QueryParameters queryParameters = (QueryParameters) other;
        return Intrinsics.c(this.episode, queryParameters.episode) && Intrinsics.c(this.query, queryParameters.query) && Intrinsics.c(this.season, queryParameters.season) && Intrinsics.c(this.sublanguageid, queryParameters.sublanguageid);
    }

    public final String getEpisode() {
        return this.episode;
    }

    public final String getQuery() {
        return this.query;
    }

    public final String getSeason() {
        return this.season;
    }

    public final String getSublanguageid() {
        return this.sublanguageid;
    }

    public int hashCode() {
        return (((((this.episode.hashCode() * 31) + this.query.hashCode()) * 31) + this.season.hashCode()) * 31) + this.sublanguageid.hashCode();
    }

    public String toString() {
        return "QueryParameters(episode=" + this.episode + ", query=" + this.query + ", season=" + this.season + ", sublanguageid=" + this.sublanguageid + ")";
    }
}
