package com.vungle.ads.internal.platform;

/* JADX INFO: loaded from: classes7.dex */
public interface d {
    public static final a Companion = a.$$INSTANCE;
    public static final String MANUFACTURER_AMAZON = "Amazon";

    public static final class a {
        static final /* synthetic */ a $$INSTANCE = new a();
        public static final String MANUFACTURER_AMAZON = "Amazon";

        private a() {
        }
    }

    com.vungle.ads.internal.model.a getAdvertisingInfo();

    String getAppSetId();

    Integer getAppSetIdScope();

    long getBuildTime();

    String getCarrierName();

    long getLastBootTime();

    long getOSInstallationTime();

    String getUserAgent();

    void getUserAgentLazy(androidx.core.util.a aVar);

    float getVolumeLevel();

    boolean isBatterySaverEnabled();

    boolean isSdCardPresent();

    boolean isSideLoaded();

    boolean isSilentModeEnabled();

    boolean isSoundEnabled();
}
