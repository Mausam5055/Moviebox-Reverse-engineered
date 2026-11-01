package com.transsion.rewardscenterapi;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0006HÆ\u0003J5\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/transsion/rewardscenterapi/DrawChance;", "Ljava/io/Serializable;", "remain", "", "todayRemain", "imgUrl", "", CampaignEx.JSON_KEY_TITLE, "<init>", "(IILjava/lang/String;Ljava/lang/String;)V", "getRemain", "()I", "getTodayRemain", "getImgUrl", "()Ljava/lang/String;", "getTitle", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "RewardsCenterApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DrawChance implements Serializable {
    private final String imgUrl;
    private final int remain;
    private final String title;
    private final int todayRemain;

    public DrawChance() {
        this(0, 0, null, null, 15, null);
    }

    public DrawChance(int i11, int i12, String str, String str2) {
        this.remain = i11;
        this.todayRemain = i12;
        this.imgUrl = str;
        this.title = str2;
    }

    public /* synthetic */ DrawChance(int i11, int i12, String str, String str2, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 0 : i12, (i13 & 4) != 0 ? null : str, (i13 & 8) != 0 ? null : str2);
    }

    public static /* synthetic */ DrawChance copy$default(DrawChance drawChance, int i11, int i12, String str, String str2, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = drawChance.remain;
        }
        if ((i13 & 2) != 0) {
            i12 = drawChance.todayRemain;
        }
        if ((i13 & 4) != 0) {
            str = drawChance.imgUrl;
        }
        if ((i13 & 8) != 0) {
            str2 = drawChance.title;
        }
        return drawChance.copy(i11, i12, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getRemain() {
        return this.remain;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getTodayRemain() {
        return this.todayRemain;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getImgUrl() {
        return this.imgUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final DrawChance copy(int remain, int todayRemain, String imgUrl, String title) {
        return new DrawChance(remain, todayRemain, imgUrl, title);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DrawChance)) {
            return false;
        }
        DrawChance drawChance = (DrawChance) other;
        return this.remain == drawChance.remain && this.todayRemain == drawChance.todayRemain && Intrinsics.c(this.imgUrl, drawChance.imgUrl) && Intrinsics.c(this.title, drawChance.title);
    }

    public final String getImgUrl() {
        return this.imgUrl;
    }

    public final int getRemain() {
        return this.remain;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTodayRemain() {
        return this.todayRemain;
    }

    public int hashCode() {
        int i11 = ((this.remain * 31) + this.todayRemain) * 31;
        String str = this.imgUrl;
        int iHashCode = (i11 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.title;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "DrawChance(remain=" + this.remain + ", todayRemain=" + this.todayRemain + ", imgUrl=" + this.imgUrl + ", title=" + this.title + ")";
    }
}
