package com.transsion.search.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.permission.PermissionConfig;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Staff;
import com.transsion.moviedetailapi.bean.Subject;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t¢\u0006\u0004\b\u0011\u0010\u0012J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tHÆ\u0003J\u0011\u0010$\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\tHÆ\u0003J\u0011\u0010%\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\tHÆ\u0003J\u0011\u0010&\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\tHÆ\u0003J\u0086\u0001\u0010'\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010(J\u0013\u0010)\u001a\u00020\u00062\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020,HÖ\u0001J\t\u0010-\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0019\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0019\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001b¨\u0006."}, d2 = {"Lcom/transsion/search/bean/SearchList;", "", "topicType", "", CampaignEx.JSON_KEY_TITLE, "showMore", "", "moreTabId", "subjects", "", "Lcom/transsion/moviedetailapi/bean/Subject;", "staffs", "Lcom/transsion/moviedetailapi/bean/Staff;", PermissionConfig.GROUPS, "Lcom/transsion/moviedetailapi/bean/Group;", "verticalRanks", "Lcom/transsion/search/bean/VerticalRank;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getTopicType", "()Ljava/lang/String;", "getTitle", "getShowMore", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getMoreTabId", "getSubjects", "()Ljava/util/List;", "getStaffs", "getGroups", "getVerticalRanks", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/transsion/search/bean/SearchList;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SearchList {
    private final List<Group> groups;
    private final String moreTabId;
    private final Boolean showMore;
    private final List<Staff> staffs;
    private final List<Subject> subjects;
    private final String title;
    private final String topicType;
    private final List<VerticalRank> verticalRanks;

    /* JADX WARN: Multi-variable type inference failed */
    public SearchList(String str, String str2, Boolean bool, String str3, List<? extends Subject> list, List<? extends Staff> list2, List<Group> list3, List<VerticalRank> list4) {
        this.topicType = str;
        this.title = str2;
        this.showMore = bool;
        this.moreTabId = str3;
        this.subjects = list;
        this.staffs = list2;
        this.groups = list3;
        this.verticalRanks = list4;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTopicType() {
        return this.topicType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Boolean getShowMore() {
        return this.showMore;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getMoreTabId() {
        return this.moreTabId;
    }

    public final List<Subject> component5() {
        return this.subjects;
    }

    public final List<Staff> component6() {
        return this.staffs;
    }

    public final List<Group> component7() {
        return this.groups;
    }

    public final List<VerticalRank> component8() {
        return this.verticalRanks;
    }

    public final SearchList copy(String topicType, String title, Boolean showMore, String moreTabId, List<? extends Subject> subjects, List<? extends Staff> staffs, List<Group> groups, List<VerticalRank> verticalRanks) {
        return new SearchList(topicType, title, showMore, moreTabId, subjects, staffs, groups, verticalRanks);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchList)) {
            return false;
        }
        SearchList searchList = (SearchList) other;
        return Intrinsics.c(this.topicType, searchList.topicType) && Intrinsics.c(this.title, searchList.title) && Intrinsics.c(this.showMore, searchList.showMore) && Intrinsics.c(this.moreTabId, searchList.moreTabId) && Intrinsics.c(this.subjects, searchList.subjects) && Intrinsics.c(this.staffs, searchList.staffs) && Intrinsics.c(this.groups, searchList.groups) && Intrinsics.c(this.verticalRanks, searchList.verticalRanks);
    }

    public final List<Group> getGroups() {
        return this.groups;
    }

    public final String getMoreTabId() {
        return this.moreTabId;
    }

    public final Boolean getShowMore() {
        return this.showMore;
    }

    public final List<Staff> getStaffs() {
        return this.staffs;
    }

    public final List<Subject> getSubjects() {
        return this.subjects;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTopicType() {
        return this.topicType;
    }

    public final List<VerticalRank> getVerticalRanks() {
        return this.verticalRanks;
    }

    public int hashCode() {
        String str = this.topicType;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.showMore;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str3 = this.moreTabId;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<Subject> list = this.subjects;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        List<Staff> list2 = this.staffs;
        int iHashCode6 = (iHashCode5 + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<Group> list3 = this.groups;
        int iHashCode7 = (iHashCode6 + (list3 == null ? 0 : list3.hashCode())) * 31;
        List<VerticalRank> list4 = this.verticalRanks;
        return iHashCode7 + (list4 != null ? list4.hashCode() : 0);
    }

    public String toString() {
        return "SearchList(topicType=" + this.topicType + ", title=" + this.title + ", showMore=" + this.showMore + ", moreTabId=" + this.moreTabId + ", subjects=" + this.subjects + ", staffs=" + this.staffs + ", groups=" + this.groups + ", verticalRanks=" + this.verticalRanks + ")";
    }
}
