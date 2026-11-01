package com.transsion.search.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/search/bean/GoogleSuggestResponse;", "", "keyword", "", "suggestions", "", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getKeyword", "()Ljava/lang/String;", "getSuggestions", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GoogleSuggestResponse {
    private final String keyword;
    private final List<String> suggestions;

    public GoogleSuggestResponse(String keyword, List<String> suggestions) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(suggestions, "suggestions");
        this.keyword = keyword;
        this.suggestions = suggestions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GoogleSuggestResponse copy$default(GoogleSuggestResponse googleSuggestResponse, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = googleSuggestResponse.keyword;
        }
        if ((i11 & 2) != 0) {
            list = googleSuggestResponse.suggestions;
        }
        return googleSuggestResponse.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getKeyword() {
        return this.keyword;
    }

    public final List<String> component2() {
        return this.suggestions;
    }

    public final GoogleSuggestResponse copy(String keyword, List<String> suggestions) {
        Intrinsics.h(keyword, "keyword");
        Intrinsics.h(suggestions, "suggestions");
        return new GoogleSuggestResponse(keyword, suggestions);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GoogleSuggestResponse)) {
            return false;
        }
        GoogleSuggestResponse googleSuggestResponse = (GoogleSuggestResponse) other;
        return Intrinsics.c(this.keyword, googleSuggestResponse.keyword) && Intrinsics.c(this.suggestions, googleSuggestResponse.suggestions);
    }

    public final String getKeyword() {
        return this.keyword;
    }

    public final List<String> getSuggestions() {
        return this.suggestions;
    }

    public int hashCode() {
        return (this.keyword.hashCode() * 31) + this.suggestions.hashCode();
    }

    public String toString() {
        return "GoogleSuggestResponse(keyword=" + this.keyword + ", suggestions=" + this.suggestions + ")";
    }
}
