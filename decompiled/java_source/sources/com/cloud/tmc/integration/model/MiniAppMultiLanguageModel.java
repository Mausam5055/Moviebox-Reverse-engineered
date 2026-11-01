package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;", "Lcom/cloud/tmc/kernel/model/BaseBean;", CampaignEx.JSON_KEY_TITLE, "", "buttonText", "(Ljava/lang/String;Ljava/lang/String;)V", "getButtonText", "()Ljava/lang/String;", "getTitle", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppMultiLanguageModel extends BaseBean {
    private final String buttonText;
    private final String title;

    public MiniAppMultiLanguageModel(String str, String str2) {
        this.title = str;
        this.buttonText = str2;
    }

    public static /* synthetic */ MiniAppMultiLanguageModel copy$default(MiniAppMultiLanguageModel miniAppMultiLanguageModel, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = miniAppMultiLanguageModel.title;
        }
        if ((i11 & 2) != 0) {
            str2 = miniAppMultiLanguageModel.buttonText;
        }
        return miniAppMultiLanguageModel.copy(str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getButtonText() {
        return this.buttonText;
    }

    public final MiniAppMultiLanguageModel copy(String title, String buttonText) {
        return new MiniAppMultiLanguageModel(title, buttonText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppMultiLanguageModel)) {
            return false;
        }
        MiniAppMultiLanguageModel miniAppMultiLanguageModel = (MiniAppMultiLanguageModel) other;
        return Intrinsics.c(this.title, miniAppMultiLanguageModel.title) && Intrinsics.c(this.buttonText, miniAppMultiLanguageModel.buttonText);
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        String str = this.title;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.buttonText;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "MiniAppMultiLanguageModel(title=" + this.title + ", buttonText=" + this.buttonText + ")";
    }
}
