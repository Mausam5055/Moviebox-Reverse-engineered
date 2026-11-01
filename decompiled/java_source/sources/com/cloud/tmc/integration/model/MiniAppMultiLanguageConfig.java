package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003JQ\u0010\u0017\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006 "}, d2 = {"Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageConfig;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "en", "Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;", "zh", "ar", "fr", "ru", "id", "(Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;)V", "getAr", "()Lcom/cloud/tmc/integration/model/MiniAppMultiLanguageModel;", "getEn", "getFr", "getId", "getRu", "getZh", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class MiniAppMultiLanguageConfig extends BaseBean {
    private final MiniAppMultiLanguageModel ar;
    private final MiniAppMultiLanguageModel en;
    private final MiniAppMultiLanguageModel fr;
    private final MiniAppMultiLanguageModel id;
    private final MiniAppMultiLanguageModel ru;
    private final MiniAppMultiLanguageModel zh;

    public MiniAppMultiLanguageConfig(MiniAppMultiLanguageModel miniAppMultiLanguageModel, MiniAppMultiLanguageModel miniAppMultiLanguageModel2, MiniAppMultiLanguageModel miniAppMultiLanguageModel3, MiniAppMultiLanguageModel miniAppMultiLanguageModel4, MiniAppMultiLanguageModel miniAppMultiLanguageModel5, MiniAppMultiLanguageModel miniAppMultiLanguageModel6) {
        this.en = miniAppMultiLanguageModel;
        this.zh = miniAppMultiLanguageModel2;
        this.ar = miniAppMultiLanguageModel3;
        this.fr = miniAppMultiLanguageModel4;
        this.ru = miniAppMultiLanguageModel5;
        this.id = miniAppMultiLanguageModel6;
    }

    public static /* synthetic */ MiniAppMultiLanguageConfig copy$default(MiniAppMultiLanguageConfig miniAppMultiLanguageConfig, MiniAppMultiLanguageModel miniAppMultiLanguageModel, MiniAppMultiLanguageModel miniAppMultiLanguageModel2, MiniAppMultiLanguageModel miniAppMultiLanguageModel3, MiniAppMultiLanguageModel miniAppMultiLanguageModel4, MiniAppMultiLanguageModel miniAppMultiLanguageModel5, MiniAppMultiLanguageModel miniAppMultiLanguageModel6, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            miniAppMultiLanguageModel = miniAppMultiLanguageConfig.en;
        }
        if ((i11 & 2) != 0) {
            miniAppMultiLanguageModel2 = miniAppMultiLanguageConfig.zh;
        }
        MiniAppMultiLanguageModel miniAppMultiLanguageModel7 = miniAppMultiLanguageModel2;
        if ((i11 & 4) != 0) {
            miniAppMultiLanguageModel3 = miniAppMultiLanguageConfig.ar;
        }
        MiniAppMultiLanguageModel miniAppMultiLanguageModel8 = miniAppMultiLanguageModel3;
        if ((i11 & 8) != 0) {
            miniAppMultiLanguageModel4 = miniAppMultiLanguageConfig.fr;
        }
        MiniAppMultiLanguageModel miniAppMultiLanguageModel9 = miniAppMultiLanguageModel4;
        if ((i11 & 16) != 0) {
            miniAppMultiLanguageModel5 = miniAppMultiLanguageConfig.ru;
        }
        MiniAppMultiLanguageModel miniAppMultiLanguageModel10 = miniAppMultiLanguageModel5;
        if ((i11 & 32) != 0) {
            miniAppMultiLanguageModel6 = miniAppMultiLanguageConfig.id;
        }
        return miniAppMultiLanguageConfig.copy(miniAppMultiLanguageModel, miniAppMultiLanguageModel7, miniAppMultiLanguageModel8, miniAppMultiLanguageModel9, miniAppMultiLanguageModel10, miniAppMultiLanguageModel6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final MiniAppMultiLanguageModel getEn() {
        return this.en;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final MiniAppMultiLanguageModel getZh() {
        return this.zh;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MiniAppMultiLanguageModel getAr() {
        return this.ar;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final MiniAppMultiLanguageModel getFr() {
        return this.fr;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final MiniAppMultiLanguageModel getRu() {
        return this.ru;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final MiniAppMultiLanguageModel getId() {
        return this.id;
    }

    public final MiniAppMultiLanguageConfig copy(MiniAppMultiLanguageModel en2, MiniAppMultiLanguageModel zh2, MiniAppMultiLanguageModel ar2, MiniAppMultiLanguageModel fr2, MiniAppMultiLanguageModel ru2, MiniAppMultiLanguageModel id2) {
        return new MiniAppMultiLanguageConfig(en2, zh2, ar2, fr2, ru2, id2);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MiniAppMultiLanguageConfig)) {
            return false;
        }
        MiniAppMultiLanguageConfig miniAppMultiLanguageConfig = (MiniAppMultiLanguageConfig) other;
        return Intrinsics.c(this.en, miniAppMultiLanguageConfig.en) && Intrinsics.c(this.zh, miniAppMultiLanguageConfig.zh) && Intrinsics.c(this.ar, miniAppMultiLanguageConfig.ar) && Intrinsics.c(this.fr, miniAppMultiLanguageConfig.fr) && Intrinsics.c(this.ru, miniAppMultiLanguageConfig.ru) && Intrinsics.c(this.id, miniAppMultiLanguageConfig.id);
    }

    public final MiniAppMultiLanguageModel getAr() {
        return this.ar;
    }

    public final MiniAppMultiLanguageModel getEn() {
        return this.en;
    }

    public final MiniAppMultiLanguageModel getFr() {
        return this.fr;
    }

    public final MiniAppMultiLanguageModel getId() {
        return this.id;
    }

    public final MiniAppMultiLanguageModel getRu() {
        return this.ru;
    }

    public final MiniAppMultiLanguageModel getZh() {
        return this.zh;
    }

    public int hashCode() {
        MiniAppMultiLanguageModel miniAppMultiLanguageModel = this.en;
        int iHashCode = (miniAppMultiLanguageModel == null ? 0 : miniAppMultiLanguageModel.hashCode()) * 31;
        MiniAppMultiLanguageModel miniAppMultiLanguageModel2 = this.zh;
        int iHashCode2 = (iHashCode + (miniAppMultiLanguageModel2 == null ? 0 : miniAppMultiLanguageModel2.hashCode())) * 31;
        MiniAppMultiLanguageModel miniAppMultiLanguageModel3 = this.ar;
        int iHashCode3 = (iHashCode2 + (miniAppMultiLanguageModel3 == null ? 0 : miniAppMultiLanguageModel3.hashCode())) * 31;
        MiniAppMultiLanguageModel miniAppMultiLanguageModel4 = this.fr;
        int iHashCode4 = (iHashCode3 + (miniAppMultiLanguageModel4 == null ? 0 : miniAppMultiLanguageModel4.hashCode())) * 31;
        MiniAppMultiLanguageModel miniAppMultiLanguageModel5 = this.ru;
        int iHashCode5 = (iHashCode4 + (miniAppMultiLanguageModel5 == null ? 0 : miniAppMultiLanguageModel5.hashCode())) * 31;
        MiniAppMultiLanguageModel miniAppMultiLanguageModel6 = this.id;
        return iHashCode5 + (miniAppMultiLanguageModel6 != null ? miniAppMultiLanguageModel6.hashCode() : 0);
    }

    public String toString() {
        return "MiniAppMultiLanguageConfig(en=" + this.en + ", zh=" + this.zh + ", ar=" + this.ar + ", fr=" + this.fr + ", ru=" + this.ru + ", id=" + this.id + ")";
    }
}
