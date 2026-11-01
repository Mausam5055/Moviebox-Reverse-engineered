package com.transsion.videodetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003JE\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\tHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/transsion/videodetail/bean/ExtCaption;", "Ljava/io/Serializable;", "id", "", "lan", "lanName", "url", "size", "delay", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "getId", "()Ljava/lang/String;", "getLan", "getLanName", "getUrl", "getSize", "getDelay", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ExtCaption implements Serializable {
    private final int delay;
    private final String id;
    private final String lan;
    private final String lanName;
    private final String size;
    private final String url;

    public ExtCaption(String id2, String lan, String lanName, String url, String size, int i11) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(lan, "lan");
        Intrinsics.h(lanName, "lanName");
        Intrinsics.h(url, "url");
        Intrinsics.h(size, "size");
        this.id = id2;
        this.lan = lan;
        this.lanName = lanName;
        this.url = url;
        this.size = size;
        this.delay = i11;
    }

    public static /* synthetic */ ExtCaption copy$default(ExtCaption extCaption, String str, String str2, String str3, String str4, String str5, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = extCaption.id;
        }
        if ((i12 & 2) != 0) {
            str2 = extCaption.lan;
        }
        String str6 = str2;
        if ((i12 & 4) != 0) {
            str3 = extCaption.lanName;
        }
        String str7 = str3;
        if ((i12 & 8) != 0) {
            str4 = extCaption.url;
        }
        String str8 = str4;
        if ((i12 & 16) != 0) {
            str5 = extCaption.size;
        }
        String str9 = str5;
        if ((i12 & 32) != 0) {
            i11 = extCaption.delay;
        }
        return extCaption.copy(str, str6, str7, str8, str9, i11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
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
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getSize() {
        return this.size;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getDelay() {
        return this.delay;
    }

    public final ExtCaption copy(String id2, String lan, String lanName, String url, String size, int delay) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(lan, "lan");
        Intrinsics.h(lanName, "lanName");
        Intrinsics.h(url, "url");
        Intrinsics.h(size, "size");
        return new ExtCaption(id2, lan, lanName, url, size, delay);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExtCaption)) {
            return false;
        }
        ExtCaption extCaption = (ExtCaption) other;
        return Intrinsics.c(this.id, extCaption.id) && Intrinsics.c(this.lan, extCaption.lan) && Intrinsics.c(this.lanName, extCaption.lanName) && Intrinsics.c(this.url, extCaption.url) && Intrinsics.c(this.size, extCaption.size) && this.delay == extCaption.delay;
    }

    public final int getDelay() {
        return this.delay;
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

    public final String getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public int hashCode() {
        return (((((((((this.id.hashCode() * 31) + this.lan.hashCode()) * 31) + this.lanName.hashCode()) * 31) + this.url.hashCode()) * 31) + this.size.hashCode()) * 31) + this.delay;
    }

    public String toString() {
        return "ExtCaption(id=" + this.id + ", lan=" + this.lan + ", lanName=" + this.lanName + ", url=" + this.url + ", size=" + this.size + ", delay=" + this.delay + ")";
    }
}
