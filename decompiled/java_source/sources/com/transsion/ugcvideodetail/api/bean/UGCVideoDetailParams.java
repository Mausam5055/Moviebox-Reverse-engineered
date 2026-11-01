package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\b\u0010\tJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JE\u0010\u001b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020!HÖ\u0001J\t\u0010\"\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000b\"\u0004\b\u000f\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000b\"\u0004\b\u0013\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006#"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDetailParams;", "Ljava/io/Serializable;", "ops", "", "ugcVideoId", "collectionId", "subjectId", "category", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getOps", "()Ljava/lang/String;", "setOps", "(Ljava/lang/String;)V", "getUgcVideoId", "setUgcVideoId", "getCollectionId", "setCollectionId", "getSubjectId", "setSubjectId", "getCategory", "setCategory", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoDetailParams implements Serializable {
    private String category;
    private String collectionId;
    private String ops;
    private String subjectId;
    private String ugcVideoId;

    public UGCVideoDetailParams() {
        this(null, null, null, null, null, 31, null);
    }

    public UGCVideoDetailParams(String str, String str2, String str3, String str4, String str5) {
        this.ops = str;
        this.ugcVideoId = str2;
        this.collectionId = str3;
        this.subjectId = str4;
        this.category = str5;
    }

    public /* synthetic */ UGCVideoDetailParams(String str, String str2, String str3, String str4, String str5, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : str4, (i11 & 16) != 0 ? null : str5);
    }

    public static /* synthetic */ UGCVideoDetailParams copy$default(UGCVideoDetailParams uGCVideoDetailParams, String str, String str2, String str3, String str4, String str5, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCVideoDetailParams.ops;
        }
        if ((i11 & 2) != 0) {
            str2 = uGCVideoDetailParams.ugcVideoId;
        }
        String str6 = str2;
        if ((i11 & 4) != 0) {
            str3 = uGCVideoDetailParams.collectionId;
        }
        String str7 = str3;
        if ((i11 & 8) != 0) {
            str4 = uGCVideoDetailParams.subjectId;
        }
        String str8 = str4;
        if ((i11 & 16) != 0) {
            str5 = uGCVideoDetailParams.category;
        }
        return uGCVideoDetailParams.copy(str, str6, str7, str8, str5);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOps() {
        return this.ops;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCollectionId() {
        return this.collectionId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    public final UGCVideoDetailParams copy(String ops, String ugcVideoId, String collectionId, String subjectId, String category) {
        return new UGCVideoDetailParams(ops, ugcVideoId, collectionId, subjectId, category);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoDetailParams)) {
            return false;
        }
        UGCVideoDetailParams uGCVideoDetailParams = (UGCVideoDetailParams) other;
        return Intrinsics.c(this.ops, uGCVideoDetailParams.ops) && Intrinsics.c(this.ugcVideoId, uGCVideoDetailParams.ugcVideoId) && Intrinsics.c(this.collectionId, uGCVideoDetailParams.collectionId) && Intrinsics.c(this.subjectId, uGCVideoDetailParams.subjectId) && Intrinsics.c(this.category, uGCVideoDetailParams.category);
    }

    public final String getCategory() {
        return this.category;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final String getOps() {
        return this.ops;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public int hashCode() {
        String str = this.ops;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.ugcVideoId;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.collectionId;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.subjectId;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.category;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final void setCategory(String str) {
        this.category = str;
    }

    public final void setCollectionId(String str) {
        this.collectionId = str;
    }

    public final void setOps(String str) {
        this.ops = str;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    public String toString() {
        return "UGCVideoDetailParams(ops=" + this.ops + ", ugcVideoId=" + this.ugcVideoId + ", collectionId=" + this.collectionId + ", subjectId=" + this.subjectId + ", category=" + this.category + ")";
    }
}
