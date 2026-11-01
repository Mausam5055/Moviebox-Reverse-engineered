package com.transsion.baselib.db.consume;

import androidx.annotation.Keep;
import androidx.collection.s;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\tHÆ\u0003J=\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\u0003HÖ\u0001J\t\u0010'\u001a\u00020\tHÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006("}, d2 = {"Lcom/transsion/baselib/db/consume/ConsumeBean;", "Ljava/io/Serializable;", "id", "", "updateTimeStamp", "", "dataType", TmcStartParams.KEY_APP_VERSION, "consumeJson", "", "<init>", "(IJIILjava/lang/String;)V", "getId", "()I", "setId", "(I)V", "getUpdateTimeStamp", "()J", "setUpdateTimeStamp", "(J)V", "getDataType", "setDataType", "getAppVersion", "setAppVersion", "getConsumeJson", "()Ljava/lang/String;", "setConsumeJson", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "BaseLib_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConsumeBean implements Serializable {
    private int appVersion;
    private String consumeJson;
    private int dataType;
    private int id;
    private long updateTimeStamp;

    public ConsumeBean(int i11, long j11, int i12, int i13, String str) {
        this.id = i11;
        this.updateTimeStamp = j11;
        this.dataType = i12;
        this.appVersion = i13;
        this.consumeJson = str;
    }

    public /* synthetic */ ConsumeBean(int i11, long j11, int i12, int i13, String str, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this((i14 & 1) != 0 ? 0 : i11, j11, i12, i13, (i14 & 16) != 0 ? "" : str);
    }

    public static /* synthetic */ ConsumeBean copy$default(ConsumeBean consumeBean, int i11, long j11, int i12, int i13, String str, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i11 = consumeBean.id;
        }
        if ((i14 & 2) != 0) {
            j11 = consumeBean.updateTimeStamp;
        }
        long j12 = j11;
        if ((i14 & 4) != 0) {
            i12 = consumeBean.dataType;
        }
        int i15 = i12;
        if ((i14 & 8) != 0) {
            i13 = consumeBean.appVersion;
        }
        int i16 = i13;
        if ((i14 & 16) != 0) {
            str = consumeBean.consumeJson;
        }
        return consumeBean.copy(i11, j12, i15, i16, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getDataType() {
        return this.dataType;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getAppVersion() {
        return this.appVersion;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getConsumeJson() {
        return this.consumeJson;
    }

    public final ConsumeBean copy(int id2, long updateTimeStamp, int dataType, int appVersion, String consumeJson) {
        return new ConsumeBean(id2, updateTimeStamp, dataType, appVersion, consumeJson);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConsumeBean)) {
            return false;
        }
        ConsumeBean consumeBean = (ConsumeBean) other;
        return this.id == consumeBean.id && this.updateTimeStamp == consumeBean.updateTimeStamp && this.dataType == consumeBean.dataType && this.appVersion == consumeBean.appVersion && Intrinsics.c(this.consumeJson, consumeBean.consumeJson);
    }

    public final int getAppVersion() {
        return this.appVersion;
    }

    public final String getConsumeJson() {
        return this.consumeJson;
    }

    public final int getDataType() {
        return this.dataType;
    }

    public final int getId() {
        return this.id;
    }

    public final long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    public int hashCode() {
        int iA = ((((((this.id * 31) + s.a(this.updateTimeStamp)) * 31) + this.dataType) * 31) + this.appVersion) * 31;
        String str = this.consumeJson;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public final void setAppVersion(int i11) {
        this.appVersion = i11;
    }

    public final void setConsumeJson(String str) {
        this.consumeJson = str;
    }

    public final void setDataType(int i11) {
        this.dataType = i11;
    }

    public final void setId(int i11) {
        this.id = i11;
    }

    public final void setUpdateTimeStamp(long j11) {
        this.updateTimeStamp = j11;
    }

    public String toString() {
        return "ConsumeBean(id=" + this.id + ", updateTimeStamp=" + this.updateTimeStamp + ", dataType=" + this.dataType + ", appVersion=" + this.appVersion + ", consumeJson=" + this.consumeJson + ")";
    }
}
