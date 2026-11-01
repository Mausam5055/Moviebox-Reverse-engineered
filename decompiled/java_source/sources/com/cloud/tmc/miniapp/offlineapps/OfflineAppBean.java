package com.cloud.tmc.miniapp.offlineapps;

import androidx.collection.s;
import com.cloud.tmc.integration.model.ClassificationInfo;
import com.cloud.tmc.kernel.model.BaseBean;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineAppBean extends BaseBean {
    private String appId;
    private Integer category;
    private List<ClassificationInfo> classification;
    private List<String> classificationNames;
    private String desc;
    private String logoPath;
    private String logoUrl;
    private String name;
    private long openTimestamp;
    private OfflineAppType type;
    private String version;

    public OfflineAppBean(String appId, String str, String str2, OfflineAppType type, String str3, String str4, Integer num, String str5, long j11, List<String> list, List<ClassificationInfo> list2) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(type, "type");
        this.appId = appId;
        this.version = str;
        this.name = str2;
        this.type = type;
        this.logoUrl = str3;
        this.logoPath = str4;
        this.category = num;
        this.desc = str5;
        this.openTimestamp = j11;
        this.classificationNames = list;
        this.classification = list2;
    }

    public /* synthetic */ OfflineAppBean(String str, String str2, String str3, OfflineAppType offlineAppType, String str4, String str5, Integer num, String str6, long j11, List list, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, offlineAppType, (i11 & 16) != 0 ? null : str4, (i11 & 32) != 0 ? null : str5, (i11 & 64) != 0 ? 0 : num, (i11 & 128) != 0 ? null : str6, (i11 & 256) != 0 ? 0L : j11, (i11 & 512) != 0 ? null : list, (i11 & 1024) != 0 ? null : list2);
    }

    public final String component1() {
        return this.appId;
    }

    public final List<String> component10() {
        return this.classificationNames;
    }

    public final List<ClassificationInfo> component11() {
        return this.classification;
    }

    public final String component2() {
        return this.version;
    }

    public final String component3() {
        return this.name;
    }

    public final OfflineAppType component4() {
        return this.type;
    }

    public final String component5() {
        return this.logoUrl;
    }

    public final String component6() {
        return this.logoPath;
    }

    public final Integer component7() {
        return this.category;
    }

    public final String component8() {
        return this.desc;
    }

    public final long component9() {
        return this.openTimestamp;
    }

    public final OfflineAppBean copy(String appId, String str, String str2, OfflineAppType type, String str3, String str4, Integer num, String str5, long j11, List<String> list, List<ClassificationInfo> list2) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(type, "type");
        return new OfflineAppBean(appId, str, str2, type, str3, str4, num, str5, j11, list, list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OfflineAppBean)) {
            return false;
        }
        OfflineAppBean offlineAppBean = (OfflineAppBean) obj;
        return Intrinsics.c(this.appId, offlineAppBean.appId) && Intrinsics.c(this.version, offlineAppBean.version) && Intrinsics.c(this.name, offlineAppBean.name) && this.type == offlineAppBean.type && Intrinsics.c(this.logoUrl, offlineAppBean.logoUrl) && Intrinsics.c(this.logoPath, offlineAppBean.logoPath) && Intrinsics.c(this.category, offlineAppBean.category) && Intrinsics.c(this.desc, offlineAppBean.desc) && this.openTimestamp == offlineAppBean.openTimestamp && Intrinsics.c(this.classificationNames, offlineAppBean.classificationNames) && Intrinsics.c(this.classification, offlineAppBean.classification);
    }

    public final String getAppId() {
        return this.appId;
    }

    public final Integer getCategory() {
        return this.category;
    }

    public final List<ClassificationInfo> getClassification() {
        return this.classification;
    }

    public final List<String> getClassificationNames() {
        return this.classificationNames;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getLogoPath() {
        return this.logoPath;
    }

    public final String getLogoUrl() {
        return this.logoUrl;
    }

    public final String getName() {
        return this.name;
    }

    public final long getOpenTimestamp() {
        return this.openTimestamp;
    }

    public final OfflineAppType getType() {
        return this.type;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        int iHashCode = this.appId.hashCode() * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.name;
        int iHashCode3 = (this.type.hashCode() + ((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        String str3 = this.logoUrl;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.logoPath;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.category;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        String str5 = this.desc;
        int iA = (s.a(this.openTimestamp) + ((iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31)) * 31;
        List<String> list = this.classificationNames;
        int iHashCode7 = (iA + (list == null ? 0 : list.hashCode())) * 31;
        List<ClassificationInfo> list2 = this.classification;
        return iHashCode7 + (list2 != null ? list2.hashCode() : 0);
    }

    public final void setAppId(String str) {
        Intrinsics.h(str, "<set-?>");
        this.appId = str;
    }

    public final void setCategory(Integer num) {
        this.category = num;
    }

    public final void setClassification(List<ClassificationInfo> list) {
        this.classification = list;
    }

    public final void setClassificationNames(List<String> list) {
        this.classificationNames = list;
    }

    public final void setDesc(String str) {
        this.desc = str;
    }

    public final void setLogoPath(String str) {
        this.logoPath = str;
    }

    public final void setLogoUrl(String str) {
        this.logoUrl = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOpenTimestamp(long j11) {
        this.openTimestamp = j11;
    }

    public final void setType(OfflineAppType offlineAppType) {
        Intrinsics.h(offlineAppType, "<set-?>");
        this.type = offlineAppType;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public String toString() {
        return "OfflineAppBean(appId=" + this.appId + ", version=" + this.version + ", name=" + this.name + ", type=" + this.type + ", logoUrl=" + this.logoUrl + ", logoPath=" + this.logoPath + ", category=" + this.category + ", desc=" + this.desc + ", openTimestamp=" + this.openTimestamp + ", classificationNames=" + this.classificationNames + ", classification=" + this.classification + ")";
    }
}
