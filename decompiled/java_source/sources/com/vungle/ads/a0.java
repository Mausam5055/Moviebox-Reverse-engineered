package com.vungle.ads;

import com.vungle.ads.internal.privacy.PrivacyConsent;
import com.vungle.ads.internal.privacy.PrivacyManager;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes7.dex */
public final class a0 {
    public static final a0 INSTANCE = new a0();

    private a0() {
    }

    @JvmStatic
    public static final String getCCPAStatus() {
        return PrivacyManager.INSTANCE.getCcpaStatus();
    }

    @JvmStatic
    public static final String getCOPPAStatus() {
        return PrivacyManager.INSTANCE.getCoppaStatus().name();
    }

    @JvmStatic
    public static final String getGDPRMessageVersion() {
        return PrivacyManager.INSTANCE.getConsentMessageVersion();
    }

    @JvmStatic
    public static final String getGDPRSource() {
        return PrivacyManager.INSTANCE.getConsentSource();
    }

    @JvmStatic
    public static final String getGDPRStatus() {
        return PrivacyManager.INSTANCE.getConsentStatus();
    }

    @JvmStatic
    public static final long getGDPRTimestamp() {
        return PrivacyManager.INSTANCE.getConsentTimestamp();
    }

    @JvmStatic
    public static final void setCCPAStatus(boolean z10) {
        PrivacyManager.INSTANCE.updateCcpaConsent(z10 ? PrivacyConsent.OPT_IN : PrivacyConsent.OPT_OUT);
    }

    @JvmStatic
    public static final void setCOPPAStatus(boolean z10) {
        PrivacyManager.INSTANCE.updateCoppaConsent(z10);
    }

    @JvmStatic
    public static final void setGDPRStatus(boolean z10, String str) {
        PrivacyManager.INSTANCE.updateGdprConsent(z10 ? PrivacyConsent.OPT_IN.getValue() : PrivacyConsent.OPT_OUT.getValue(), "publisher", str);
    }
}
