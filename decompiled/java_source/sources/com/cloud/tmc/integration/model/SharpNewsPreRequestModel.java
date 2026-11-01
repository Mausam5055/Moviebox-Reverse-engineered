package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/model/SharpNewsPreRequestModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "id", "", "contentUrl", "(Ljava/lang/String;Ljava/lang/String;)V", "getContentUrl", "()Ljava/lang/String;", "setContentUrl", "(Ljava/lang/String;)V", "getId", "setId", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class SharpNewsPreRequestModel extends BaseBean {
    private String contentUrl;
    private String id;

    public SharpNewsPreRequestModel(String str, String contentUrl) {
        Intrinsics.h(contentUrl, "contentUrl");
        this.id = str;
        this.contentUrl = contentUrl;
    }

    public static /* synthetic */ SharpNewsPreRequestModel copy$default(SharpNewsPreRequestModel sharpNewsPreRequestModel, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = sharpNewsPreRequestModel.id;
        }
        if ((i11 & 2) != 0) {
            str2 = sharpNewsPreRequestModel.contentUrl;
        }
        return sharpNewsPreRequestModel.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getContentUrl() {
        return this.contentUrl;
    }

    public final SharpNewsPreRequestModel copy(String id2, String contentUrl) {
        Intrinsics.h(contentUrl, "contentUrl");
        return new SharpNewsPreRequestModel(id2, contentUrl);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SharpNewsPreRequestModel)) {
            return false;
        }
        SharpNewsPreRequestModel sharpNewsPreRequestModel = (SharpNewsPreRequestModel) other;
        return Intrinsics.c(this.id, sharpNewsPreRequestModel.id) && Intrinsics.c(this.contentUrl, sharpNewsPreRequestModel.contentUrl);
    }

    public final String getContentUrl() {
        return this.contentUrl;
    }

    public final String getId() {
        return this.id;
    }

    public int hashCode() {
        String str = this.id;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.contentUrl.hashCode();
    }

    public final void setContentUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.contentUrl = str;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public String toString() {
        return "SharpNewsPreRequestModel(id=" + this.id + ", contentUrl=" + this.contentUrl + ")";
    }
}
