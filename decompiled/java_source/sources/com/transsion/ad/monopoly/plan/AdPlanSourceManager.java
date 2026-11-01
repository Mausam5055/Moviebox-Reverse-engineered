package com.transsion.ad.monopoly.plan;

import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.transsion.ad.db.plan.MbAdDbPlans;
import com.transsion.ad.monopoly.model.AdPlans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes5.dex */
public final class AdPlanSourceManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdPlanSourceManager f42166a = new AdPlanSourceManager();

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "AD_PLAN_DEFAULT_AD_SRC", "AD_PLAN_AD_SOURCE_PS", "AD_PLAN_AD_SOURCE_MB_PS", "AD_PLAN_AD_SOURCE_HI", "AD_PLAN_AD_SOURCE_ICON", "AD_PLAN_AD_SOURCE_PS_REFERRAL", "AD_PLAN_AD_SOURCE_H5", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum AdPlanEnum {
        AD_PLAN_DEFAULT_AD_SRC("_DefaultAdSrc"),
        AD_PLAN_AD_SOURCE_PS("AdSourcePS"),
        AD_PLAN_AD_SOURCE_MB_PS("AdSourceMBPS"),
        AD_PLAN_AD_SOURCE_HI("AdSourceHI"),
        AD_PLAN_AD_SOURCE_ICON("AdSourceIcon"),
        AD_PLAN_AD_SOURCE_PS_REFERRAL("AdSourcePSReferral"),
        AD_PLAN_AD_SOURCE_H5("AdSourceH5");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
        private final String value;

        AdPlanEnum(String str) {
            this.value = str;
        }

        public static EnumEntries<AdPlanEnum> getEntries() {
            return $ENTRIES;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private AdPlanSourceManager() {
    }

    public final boolean a(MbAdDbPlans mbAdDbPlans) {
        return TextUtils.equals(mbAdDbPlans != null ? mbAdDbPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_DEFAULT_AD_SRC.getValue());
    }

    public final boolean b(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_DEFAULT_AD_SRC.getValue());
    }

    public final boolean c(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_H5.getValue());
    }

    public final boolean d(MbAdDbPlans mbAdDbPlans) {
        return TextUtils.equals(mbAdDbPlans != null ? mbAdDbPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue());
    }

    public final boolean e(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_HI.getValue());
    }

    public final boolean f(MbAdDbPlans mbAdDbPlans) {
        return TextUtils.equals(mbAdDbPlans != null ? mbAdDbPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_ICON.getValue());
    }

    public final boolean g(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_ICON.getValue());
    }

    public final boolean h(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_MB_PS.getValue());
    }

    public final boolean i(MbAdDbPlans mbAdDbPlans) {
        return TextUtils.equals(mbAdDbPlans != null ? mbAdDbPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_PS.getValue());
    }

    public final boolean j(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_PS.getValue());
    }

    public final boolean k(MbAdDbPlans mbAdDbPlans) {
        return TextUtils.equals(mbAdDbPlans != null ? mbAdDbPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_PS_REFERRAL.getValue());
    }

    public final boolean l(AdPlans adPlans) {
        return TextUtils.equals(adPlans != null ? adPlans.getAdSource() : null, AdPlanEnum.AD_PLAN_AD_SOURCE_PS_REFERRAL.getValue());
    }
}
