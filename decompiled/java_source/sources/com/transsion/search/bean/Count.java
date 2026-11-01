package com.transsion.search.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ2\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/transsion/search/bean/Count;", "Ljava/io/Serializable;", "subjectType", "", "name", "", "num", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getSubjectType", "()Ljava/lang/Integer;", "setSubjectType", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "getNum", "setNum", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/transsion/search/bean/Count;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Count implements Serializable {
    private String name;
    private Integer num;
    private Integer subjectType;

    public Count(Integer num, String str, Integer num2) {
        this.subjectType = num;
        this.name = str;
        this.num = num2;
    }

    public static /* synthetic */ Count copy$default(Count count, Integer num, String str, Integer num2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            num = count.subjectType;
        }
        if ((i11 & 2) != 0) {
            str = count.name;
        }
        if ((i11 & 4) != 0) {
            num2 = count.num;
        }
        return count.copy(num, str, num2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getSubjectType() {
        return this.subjectType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getNum() {
        return this.num;
    }

    public final Count copy(Integer subjectType, String name, Integer num) {
        return new Count(subjectType, name, num);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Count)) {
            return false;
        }
        Count count = (Count) other;
        return Intrinsics.c(this.subjectType, count.subjectType) && Intrinsics.c(this.name, count.name) && Intrinsics.c(this.num, count.num);
    }

    public final String getName() {
        return this.name;
    }

    public final Integer getNum() {
        return this.num;
    }

    public final Integer getSubjectType() {
        return this.subjectType;
    }

    public int hashCode() {
        Integer num = this.subjectType;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.name;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num2 = this.num;
        return iHashCode2 + (num2 != null ? num2.hashCode() : 0);
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setNum(Integer num) {
        this.num = num;
    }

    public final void setSubjectType(Integer num) {
        this.subjectType = num;
    }

    public String toString() {
        return "Count(subjectType=" + this.subjectType + ", name=" + this.name + ", num=" + this.num + ")";
    }
}
