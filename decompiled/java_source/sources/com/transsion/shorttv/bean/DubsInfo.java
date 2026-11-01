package com.transsion.shorttv.bean;

import androidx.annotation.Keep;
import androidx.compose.foundation.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ts.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\r\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJ>\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u000bJ\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0018\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001a\u001a\u0004\b\u001b\u0010\u000bR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001a\u001a\u0004\b\u001c\u0010\u000bR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001a\u001a\u0004\b\u001d\u0010\u000bR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001e\u001a\u0004\b\u001f\u0010\u000fR\"\u0010 \u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010\u001e\u001a\u0004\b \u0010\u000f\"\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001e\u001a\u0004\b#\u0010\u000f\"\u0004\b$\u0010\"R$\u0010&\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006,"}, d2 = {"Lcom/transsion/shorttv/bean/DubsInfo;", "Ljava/io/Serializable;", "", "subjectId", "lanName", "lanCode", "", "original", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "()Z", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/shorttv/bean/DubsInfo;", "toString", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getSubjectId", "getLanName", "getLanCode", "Z", "getOriginal", "isSelected", "setSelected", "(Z)V", "isSubtitle", "setSubtitle", "Lts/b;", "subInfo", "Lts/b;", "getSubInfo", "()Lts/b;", "setSubInfo", "(Lts/b;)V", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class DubsInfo implements Serializable {
    private transient boolean isSelected;
    private transient boolean isSubtitle;
    private final String lanCode;
    private final String lanName;
    private final boolean original;
    private transient b subInfo;
    private final String subjectId;

    public DubsInfo() {
        this(null, null, null, false, 15, null);
    }

    public DubsInfo(String str, String str2, String str3, boolean z10) {
        this.subjectId = str;
        this.lanName = str2;
        this.lanCode = str3;
        this.original = z10;
    }

    public /* synthetic */ DubsInfo(String str, String str2, String str3, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? false : z10);
    }

    public static /* synthetic */ DubsInfo copy$default(DubsInfo dubsInfo, String str, String str2, String str3, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = dubsInfo.subjectId;
        }
        if ((i11 & 2) != 0) {
            str2 = dubsInfo.lanName;
        }
        if ((i11 & 4) != 0) {
            str3 = dubsInfo.lanCode;
        }
        if ((i11 & 8) != 0) {
            z10 = dubsInfo.original;
        }
        return dubsInfo.copy(str, str2, str3, z10);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getLanName() {
        return this.lanName;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanCode() {
        return this.lanCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getOriginal() {
        return this.original;
    }

    public final DubsInfo copy(String subjectId, String lanName, String lanCode, boolean original) {
        return new DubsInfo(subjectId, lanName, lanCode, original);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DubsInfo)) {
            return false;
        }
        DubsInfo dubsInfo = (DubsInfo) other;
        return Intrinsics.c(this.subjectId, dubsInfo.subjectId) && Intrinsics.c(this.lanName, dubsInfo.lanName) && Intrinsics.c(this.lanCode, dubsInfo.lanCode) && this.original == dubsInfo.original;
    }

    public final String getLanCode() {
        return this.lanCode;
    }

    public final String getLanName() {
        return this.lanName;
    }

    public final boolean getOriginal() {
        return this.original;
    }

    public final b getSubInfo() {
        return this.subInfo;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public int hashCode() {
        String str = this.subjectId;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.lanName;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.lanCode;
        return ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + e.a(this.original);
    }

    /* JADX INFO: renamed from: isSelected, reason: from getter */
    public final boolean getIsSelected() {
        return this.isSelected;
    }

    /* JADX INFO: renamed from: isSubtitle, reason: from getter */
    public final boolean getIsSubtitle() {
        return this.isSubtitle;
    }

    public final void setSelected(boolean z10) {
        this.isSelected = z10;
    }

    public final void setSubInfo(b bVar) {
        this.subInfo = bVar;
    }

    public final void setSubtitle(boolean z10) {
        this.isSubtitle = z10;
    }

    public String toString() {
        return "DubsInfo(subjectId=" + this.subjectId + ", lanName=" + this.lanName + ", lanCode=" + this.lanCode + ", original=" + this.original + ")";
    }
}
