package com.cloud.tmc.ad.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/cloud/tmc/ad/bean/FormCustomInfosDTO;", "Ljava/io/Serializable;", CampaignEx.JSON_KEY_TITLE, "", "values", "", "(Ljava/lang/String;Ljava/util/List;)V", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "getValues", "()Ljava/util/List;", "setValues", "(Ljava/util/List;)V", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class FormCustomInfosDTO implements Serializable {
    private String title;
    private List<String> values;

    /* JADX WARN: Multi-variable type inference failed */
    public FormCustomInfosDTO() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public FormCustomInfosDTO(String str, List<String> list) {
        this.title = str;
        this.values = list;
    }

    public /* synthetic */ FormCustomInfosDTO(String str, List list, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FormCustomInfosDTO copy$default(FormCustomInfosDTO formCustomInfosDTO, String str, List list, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = formCustomInfosDTO.title;
        }
        if ((i11 & 2) != 0) {
            list = formCustomInfosDTO.values;
        }
        return formCustomInfosDTO.copy(str, list);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final List<String> component2() {
        return this.values;
    }

    public final FormCustomInfosDTO copy(String title, List<String> values) {
        return new FormCustomInfosDTO(title, values);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FormCustomInfosDTO)) {
            return false;
        }
        FormCustomInfosDTO formCustomInfosDTO = (FormCustomInfosDTO) other;
        return Intrinsics.c(this.title, formCustomInfosDTO.title) && Intrinsics.c(this.values, formCustomInfosDTO.values);
    }

    public final String getTitle() {
        return this.title;
    }

    public final List<String> getValues() {
        return this.values;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<String> list = this.values;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setValues(List<String> list) {
        this.values = list;
    }

    public String toString() {
        return "FormCustomInfosDTO(title=" + this.title + ", values=" + this.values + ")";
    }
}
