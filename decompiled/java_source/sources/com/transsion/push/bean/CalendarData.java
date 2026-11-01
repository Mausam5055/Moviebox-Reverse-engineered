package com.transsion.push.bean;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b)\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010+\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010,\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010$J\u000b\u00102\u001a\u0004\u0018\u00010\u0006HÆ\u0003Jz\u00103\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006HÆ\u0001¢\u0006\u0002\u00104J\u0013\u00105\u001a\u0002062\b\u00107\u001a\u0004\u0018\u000108HÖ\u0003J\t\u00109\u001a\u00020\fHÖ\u0001J\t\u0010:\u001a\u00020\u0006HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0015\u0010\u0011\"\u0004\b\u0016\u0010\u0013R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0018\"\u0004\b\u001c\u0010\u001aR\u001c\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0018\"\u0004\b\u001e\u0010\u001aR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0018\"\u0004\b \u0010\u001aR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0018\"\u0004\b\"\u0010\u001aR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u0010\n\u0002\u0010'\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010\u0018\"\u0004\b)\u0010\u001a¨\u0006;"}, d2 = {"Lcom/transsion/push/bean/CalendarData;", "Ljava/io/Serializable;", "startTime", "", "endTime", CampaignEx.JSON_KEY_TITLE, "", "des", RequestParameters.SUBRESOURCE_LOCATION, "timeZone", "endTimeZone", "remindTime", "", "calendarId", "<init>", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "getStartTime", "()Ljava/lang/Long;", "setStartTime", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getEndTime", "setEndTime", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getDes", "setDes", "getLocation", "setLocation", "getTimeZone", "setTimeZone", "getEndTimeZone", "setEndTimeZone", "getRemindTime", "()Ljava/lang/Integer;", "setRemindTime", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getCalendarId", "setCalendarId", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/push/bean/CalendarData;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CalendarData implements Serializable {
    private String calendarId;
    private String des;
    private Long endTime;
    private String endTimeZone;
    private String location;
    private Integer remindTime;
    private Long startTime;
    private String timeZone;
    private String title;

    public CalendarData() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public CalendarData(Long l11, Long l12, String str, String str2, String str3, String str4, String str5, Integer num, String str6) {
        this.startTime = l11;
        this.endTime = l12;
        this.title = str;
        this.des = str2;
        this.location = str3;
        this.timeZone = str4;
        this.endTimeZone = str5;
        this.remindTime = num;
        this.calendarId = str6;
    }

    public /* synthetic */ CalendarData(Long l11, Long l12, String str, String str2, String str3, String str4, String str5, Integer num, String str6, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : l11, (i11 & 2) != 0 ? null : l12, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4, (i11 & 64) != 0 ? null : str5, (i11 & 128) != 0 ? null : num, (i11 & 256) == 0 ? str6 : null);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Long getStartTime() {
        return this.startTime;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getEndTime() {
        return this.endTime;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getDes() {
        return this.des;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getLocation() {
        return this.location;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getTimeZone() {
        return this.timeZone;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getEndTimeZone() {
        return this.endTimeZone;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Integer getRemindTime() {
        return this.remindTime;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getCalendarId() {
        return this.calendarId;
    }

    public final CalendarData copy(Long startTime, Long endTime, String title, String des, String location, String timeZone, String endTimeZone, Integer remindTime, String calendarId) {
        return new CalendarData(startTime, endTime, title, des, location, timeZone, endTimeZone, remindTime, calendarId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CalendarData)) {
            return false;
        }
        CalendarData calendarData = (CalendarData) other;
        return Intrinsics.c(this.startTime, calendarData.startTime) && Intrinsics.c(this.endTime, calendarData.endTime) && Intrinsics.c(this.title, calendarData.title) && Intrinsics.c(this.des, calendarData.des) && Intrinsics.c(this.location, calendarData.location) && Intrinsics.c(this.timeZone, calendarData.timeZone) && Intrinsics.c(this.endTimeZone, calendarData.endTimeZone) && Intrinsics.c(this.remindTime, calendarData.remindTime) && Intrinsics.c(this.calendarId, calendarData.calendarId);
    }

    public final String getCalendarId() {
        return this.calendarId;
    }

    public final String getDes() {
        return this.des;
    }

    public final Long getEndTime() {
        return this.endTime;
    }

    public final String getEndTimeZone() {
        return this.endTimeZone;
    }

    public final String getLocation() {
        return this.location;
    }

    public final Integer getRemindTime() {
        return this.remindTime;
    }

    public final Long getStartTime() {
        return this.startTime;
    }

    public final String getTimeZone() {
        return this.timeZone;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        Long l11 = this.startTime;
        int iHashCode = (l11 == null ? 0 : l11.hashCode()) * 31;
        Long l12 = this.endTime;
        int iHashCode2 = (iHashCode + (l12 == null ? 0 : l12.hashCode())) * 31;
        String str = this.title;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.des;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.location;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.timeZone;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.endTimeZone;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Integer num = this.remindTime;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        String str6 = this.calendarId;
        return iHashCode8 + (str6 != null ? str6.hashCode() : 0);
    }

    public final void setCalendarId(String str) {
        this.calendarId = str;
    }

    public final void setDes(String str) {
        this.des = str;
    }

    public final void setEndTime(Long l11) {
        this.endTime = l11;
    }

    public final void setEndTimeZone(String str) {
        this.endTimeZone = str;
    }

    public final void setLocation(String str) {
        this.location = str;
    }

    public final void setRemindTime(Integer num) {
        this.remindTime = num;
    }

    public final void setStartTime(Long l11) {
        this.startTime = l11;
    }

    public final void setTimeZone(String str) {
        this.timeZone = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "CalendarData(startTime=" + this.startTime + ", endTime=" + this.endTime + ", title=" + this.title + ", des=" + this.des + ", location=" + this.location + ", timeZone=" + this.timeZone + ", endTimeZone=" + this.endTimeZone + ", remindTime=" + this.remindTime + ", calendarId=" + this.calendarId + ")";
    }
}
