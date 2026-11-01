package com.transsion.moviedetailapi.bean;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.transsion.baselib.db.download.SubtitleBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0019\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b)\b\u0086\b\u0018\u0000 N2\u00020\u0001:\u0001OBu\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0014\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0015\u0010\u0013J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0016\u0010\u0013J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0017\u0010\u0013J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u001a\u0010\u0019J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001cJ\u0012\u0010\u001f\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b\u001f\u0010\u001cJ\u0094\u0001\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000bHÆ\u0001¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\"\u0010\u0013J\u0010\u0010#\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b#\u0010$J\u001a\u0010(\u001a\u00020'2\b\u0010&\u001a\u0004\u0018\u00010%HÖ\u0003¢\u0006\u0004\b(\u0010)R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010*\u001a\u0004\b+\u0010\u0013\"\u0004\b,\u0010-R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010*\u001a\u0004\b.\u0010\u0013\"\u0004\b/\u0010-R$\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010*\u001a\u0004\b0\u0010\u0013\"\u0004\b1\u0010-R$\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010*\u001a\u0004\b2\u0010\u0013\"\u0004\b3\u0010-R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010*\u001a\u0004\b4\u0010\u0013\"\u0004\b5\u0010-R$\u0010\t\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00106\u001a\u0004\b7\u0010\u0019\"\u0004\b8\u00109R$\u0010\n\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u00106\u001a\u0004\b:\u0010\u0019\"\u0004\b;\u00109R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010<\u001a\u0004\b=\u0010\u001c\"\u0004\b>\u0010?R$\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010<\u001a\u0004\b@\u0010\u001c\"\u0004\bA\u0010?R$\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010<\u001a\u0004\bB\u0010\u001c\"\u0004\bC\u0010?R$\u0010\u000f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010<\u001a\u0004\bD\u0010\u001c\"\u0004\bE\u0010?R$\u0010F\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010*\u001a\u0004\bG\u0010\u0013\"\u0004\bH\u0010-R\"\u0010I\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bI\u0010J\u001a\u0004\bI\u0010K\"\u0004\bL\u0010M¨\u0006P"}, d2 = {"Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "Ljava/io/Serializable;", "", "id", "lan", "lanName", "name", "url", "", "size", "delay", "", "season", "episode", "downloads", NativeComponentConstants.KEY_COMPONENT_TYPE, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "()Ljava/lang/Long;", "component7", "component8", "()Ljava/lang/Integer;", "component9", "component10", "component11", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "toString", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "getLan", "setLan", "getLanName", "setLanName", "getName", "setName", "getUrl", "setUrl", "Ljava/lang/Long;", "getSize", "setSize", "(Ljava/lang/Long;)V", "getDelay", "setDelay", "Ljava/lang/Integer;", "getSeason", "setSeason", "(Ljava/lang/Integer;)V", "getEpisode", "setEpisode", "getDownloads", "setDownloads", "getType", "setType", "fileId", "getFileId", "setFileId", "isOpenSubNewApi", "Z", "()Z", "setOpenSubNewApi", "(Z)V", "Companion", "a", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SubtitleItem implements Serializable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private Long delay;
    private Integer downloads;
    private Integer episode;
    private String fileId;
    private String id;
    private boolean isOpenSubNewApi;

    @SerializedName(alternate = {"shortLanguage"}, value = "lan")
    private String lan;

    @SerializedName(alternate = {TmcConstants.KEY_LANGUAGE}, value = "lanName")
    private String lanName;
    private String name;
    private Integer season;
    private Long size;
    private Integer type;
    private String url;

    /* JADX INFO: renamed from: com.transsion.moviedetailapi.bean.SubtitleItem$a, reason: from kotlin metadata */
    /* JADX INFO: loaded from: classes6.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SubtitleBean a(SubtitleItem item, String postId, String str, int i11, int i12) {
            int iIntValue;
            String lanName;
            Intrinsics.h(item, "item");
            Intrinsics.h(postId, "postId");
            Integer type = item.getType();
            if (type != null) {
                iIntValue = type.intValue();
            } else {
                String lan = item.getLan();
                iIntValue = (lan == null || lan.length() <= 0 || (lanName = item.getLanName()) == null || lanName.length() <= 0) ? 2 : 1;
            }
            int i13 = iIntValue;
            String id2 = item.getId();
            String str2 = (id2 == null && (id2 = item.getUrl()) == null) ? "" : id2;
            String url = item.getUrl();
            String lan2 = item.getLan();
            String lanName2 = item.getLanName();
            return new SubtitleBean(str2, postId, url, "", lan2, lanName2 == null ? "" : lanName2, item.getName(), item.getSize(), item.getDelay(), 0, i13, null, str, i11, i12, 0, 35328, null);
        }
    }

    public SubtitleItem(String str, String str2, String str3, String str4, String str5, Long l11, Long l12, Integer num, Integer num2, Integer num3, Integer num4) {
        this.id = str;
        this.lan = str2;
        this.lanName = str3;
        this.name = str4;
        this.url = str5;
        this.size = l11;
        this.delay = l12;
        this.season = num;
        this.episode = num2;
        this.downloads = num3;
        this.type = num4;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Integer getDownloads() {
        return this.downloads;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLan() {
        return this.lan;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanName() {
        return this.lanName;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Long getDelay() {
        return this.delay;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getSeason() {
        return this.season;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Integer getEpisode() {
        return this.episode;
    }

    public final SubtitleItem copy(String id2, String lan, String lanName, String name, String url, Long size, Long delay, Integer season, Integer episode, Integer downloads, Integer type) {
        return new SubtitleItem(id2, lan, lanName, name, url, size, delay, season, episode, downloads, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SubtitleItem)) {
            return false;
        }
        SubtitleItem subtitleItem = (SubtitleItem) other;
        return Intrinsics.c(this.id, subtitleItem.id) && Intrinsics.c(this.lan, subtitleItem.lan) && Intrinsics.c(this.lanName, subtitleItem.lanName) && Intrinsics.c(this.name, subtitleItem.name) && Intrinsics.c(this.url, subtitleItem.url) && Intrinsics.c(this.size, subtitleItem.size) && Intrinsics.c(this.delay, subtitleItem.delay) && Intrinsics.c(this.season, subtitleItem.season) && Intrinsics.c(this.episode, subtitleItem.episode) && Intrinsics.c(this.downloads, subtitleItem.downloads) && Intrinsics.c(this.type, subtitleItem.type);
    }

    public final Long getDelay() {
        return this.delay;
    }

    public final Integer getDownloads() {
        return this.downloads;
    }

    public final Integer getEpisode() {
        return this.episode;
    }

    public final String getFileId() {
        return this.fileId;
    }

    public final String getId() {
        return this.id;
    }

    public final String getLan() {
        return this.lan;
    }

    public final String getLanName() {
        return this.lanName;
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getSeason() {
        return this.season;
    }

    public final Long getSize() {
        return this.size;
    }

    public final Integer getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.lan;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.lanName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.name;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.url;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Long l11 = this.size;
        int iHashCode6 = (iHashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.delay;
        int iHashCode7 = (iHashCode6 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Integer num = this.season;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.episode;
        int iHashCode9 = (iHashCode8 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.downloads;
        int iHashCode10 = (iHashCode9 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.type;
        return iHashCode10 + (num4 != null ? num4.hashCode() : 0);
    }

    /* JADX INFO: renamed from: isOpenSubNewApi, reason: from getter */
    public final boolean getIsOpenSubNewApi() {
        return this.isOpenSubNewApi;
    }

    public final void setDelay(Long l11) {
        this.delay = l11;
    }

    public final void setDownloads(Integer num) {
        this.downloads = num;
    }

    public final void setEpisode(Integer num) {
        this.episode = num;
    }

    public final void setFileId(String str) {
        this.fileId = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setLan(String str) {
        this.lan = str;
    }

    public final void setLanName(String str) {
        this.lanName = str;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setOpenSubNewApi(boolean z10) {
        this.isOpenSubNewApi = z10;
    }

    public final void setSeason(Integer num) {
        this.season = num;
    }

    public final void setSize(Long l11) {
        this.size = l11;
    }

    public final void setType(Integer num) {
        this.type = num;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "SubtitleItem(id=" + this.id + ", lan=" + this.lan + ", lanName=" + this.lanName + ", name=" + this.name + ", url=" + this.url + ", size=" + this.size + ", delay=" + this.delay + ", season=" + this.season + ", episode=" + this.episode + ", downloads=" + this.downloads + ", type=" + this.type + ")";
    }
}
