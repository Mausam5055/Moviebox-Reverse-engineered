package com.cloud.tmc.ad;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u000e\u0018\u0000 \u00052\u00020\u0001:\f\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000eB\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u000f"}, d2 = {"Lcom/cloud/tmc/ad/Constants;", "", "()V", "AD_PS_TYPE", "CALLED_URL_TYPE", "Companion", "FillingResult", "FillingSource", "HOST", "INSTALL_APK_STATUS", "IS_ADM_AD", "IS_PSLINK_AD", "ImageLoadType", "InitType", "MIME", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class Constants {
    public static final String AD_FRAMEWORK_VERSION = "ad_sdk_version";
    public static final String AD_FRAMEWORK_VERSION_INT = "ad_sdk_version_int";
    public static final String GP_DEEPLINK = "play.google.com";
    public static final String IS_DEBUG = "IS_DEBUG";
    public static final String SERVICES_TIME_DIFFERENCE_VALUE = "services_time_difference_value";
    public static final String SMSTO = "smsto:";
    public static final String SMS_BODY = "sms_body";

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface AD_PS_TYPE {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int NO_PS_AD = 1;
        public static final int PS_MATERIAL_DOWNLOAD_FAIL = 5;
        public static final int PS_MATERIAL_DOWNLOAD_SUCCESS = 6;
        public static final int PS_MATERIAL_NOT_RETURN = 7;
        public static final int PS_NOT_GPLINK = 3;
        public static final int PS_NOT_INSTALL = 2;
        public static final int PS_RECOMMEND_ITEM_IIST_LESS = 4;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/cloud/tmc/ad/Constants$AD_PS_TYPE$Companion;", "", "()V", "NO_PS_AD", "", "PS_MATERIAL_DOWNLOAD_FAIL", "PS_MATERIAL_DOWNLOAD_SUCCESS", "PS_MATERIAL_NOT_RETURN", "PS_NOT_GPLINK", "PS_NOT_INSTALL", "PS_RECOMMEND_ITEM_IIST_LESS", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int NO_PS_AD = 1;
            public static final int PS_MATERIAL_DOWNLOAD_FAIL = 5;
            public static final int PS_MATERIAL_DOWNLOAD_SUCCESS = 6;
            public static final int PS_MATERIAL_NOT_RETURN = 7;
            public static final int PS_NOT_GPLINK = 3;
            public static final int PS_NOT_INSTALL = 2;
            public static final int PS_RECOMMEND_ITEM_IIST_LESS = 4;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$CALLED_URL_TYPE;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface CALLED_URL_TYPE {
        public static final int CLICKURLS = 3;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int GPLINK = 1;
        public static final int PSLINK = 2;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/Constants$CALLED_URL_TYPE$Companion;", "", "()V", "CLICKURLS", "", "GPLINK", "PSLINK", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int CLICKURLS = 3;
            public static final int GPLINK = 1;
            public static final int PSLINK = 2;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$FillingResult;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface FillingResult {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int FILL_FAIL = 2;
        public static final int FILL_SUCCESS = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/ad/Constants$FillingResult$Companion;", "", "()V", "FILL_FAIL", "", "FILL_SUCCESS", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int FILL_FAIL = 2;
            public static final int FILL_SUCCESS = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$FillingSource;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface FillingSource {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int OFFLINE_CACHE_AD = 3;
        public static final int ONLINE_CACHE_AD = 2;
        public static final int REQUEST_AD = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/Constants$FillingSource$Companion;", "", "()V", "OFFLINE_CACHE_AD", "", "ONLINE_CACHE_AD", "REQUEST_AD", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int OFFLINE_CACHE_AD = 3;
            public static final int ONLINE_CACHE_AD = 2;
            public static final int REQUEST_AD = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$HOST;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface HOST {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\b¨\u0006\u0012"}, d2 = {"Lcom/cloud/tmc/ad/Constants$HOST$Companion;", "", "()V", "ADN_FAT_SERVER_IMPRESSSION", "", "getADN_FAT_SERVER_IMPRESSSION", "()Ljava/lang/String;", "setADN_FAT_SERVER_IMPRESSSION", "(Ljava/lang/String;)V", "ADN_PRE_SERVER_IMPRESSSION", "getADN_PRE_SERVER_IMPRESSSION", "setADN_PRE_SERVER_IMPRESSSION", "ADN_RELEASE_SERVER_IMPRESSSION", "getADN_RELEASE_SERVER_IMPRESSSION", "setADN_RELEASE_SERVER_IMPRESSSION", "ADN_TEST_SERVER_IMPRESSSION", "getADN_TEST_SERVER_IMPRESSSION", "setADN_TEST_SERVER_IMPRESSSION", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            private static String ADN_FAT_SERVER_IMPRESSSION = "api.fat1.eagllwin.com";
            private static String ADN_TEST_SERVER_IMPRESSSION = "api.test.eagllwin.com";
            private static String ADN_PRE_SERVER_IMPRESSSION = "api.pre.eagllwin.com";
            private static String ADN_RELEASE_SERVER_IMPRESSSION = "api.eagllwin.com";

            private Companion() {
            }

            public final String getADN_FAT_SERVER_IMPRESSSION() {
                return ADN_FAT_SERVER_IMPRESSSION;
            }

            public final String getADN_PRE_SERVER_IMPRESSSION() {
                return ADN_PRE_SERVER_IMPRESSSION;
            }

            public final String getADN_RELEASE_SERVER_IMPRESSSION() {
                return ADN_RELEASE_SERVER_IMPRESSSION;
            }

            public final String getADN_TEST_SERVER_IMPRESSSION() {
                return ADN_TEST_SERVER_IMPRESSSION;
            }

            public final void setADN_FAT_SERVER_IMPRESSSION(String str) {
                Intrinsics.h(str, "<set-?>");
                ADN_FAT_SERVER_IMPRESSSION = str;
            }

            public final void setADN_PRE_SERVER_IMPRESSSION(String str) {
                Intrinsics.h(str, "<set-?>");
                ADN_PRE_SERVER_IMPRESSSION = str;
            }

            public final void setADN_RELEASE_SERVER_IMPRESSSION(String str) {
                Intrinsics.h(str, "<set-?>");
                ADN_RELEASE_SERVER_IMPRESSSION = str;
            }

            public final void setADN_TEST_SERVER_IMPRESSSION(String str) {
                Intrinsics.h(str, "<set-?>");
                ADN_TEST_SERVER_IMPRESSSION = str;
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$INSTALL_APK_STATUS;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface INSTALL_APK_STATUS {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int DOWNLOAD_APP_INSTALLED = 2;
        public static final int DOWNLOAD_APP_NOT_INSTALLED = 3;
        public static final int ERROR_SITUATION = -1;
        public static final int NON_DOWNLOAD_AD = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/cloud/tmc/ad/Constants$INSTALL_APK_STATUS$Companion;", "", "()V", "DOWNLOAD_APP_INSTALLED", "", "DOWNLOAD_APP_NOT_INSTALLED", "ERROR_SITUATION", "NON_DOWNLOAD_AD", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int DOWNLOAD_APP_INSTALLED = 2;
            public static final int DOWNLOAD_APP_NOT_INSTALLED = 3;
            public static final int ERROR_SITUATION = -1;
            public static final int NON_DOWNLOAD_AD = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$IS_ADM_AD;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface IS_ADM_AD {
        public static final int ADM_AD = 2;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int NO_ADM_AD = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/ad/Constants$IS_ADM_AD$Companion;", "", "()V", "ADM_AD", "", "NO_ADM_AD", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int ADM_AD = 2;
            public static final int NO_ADM_AD = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$IS_PSLINK_AD;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface IS_PSLINK_AD {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int IS_PSLINK_AD = 2;
        public static final int NO_IS_PSLINK_AD = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/ad/Constants$IS_PSLINK_AD$Companion;", "", "()V", "IS_PSLINK_AD", "", "NO_IS_PSLINK_AD", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int IS_PSLINK_AD = 2;
            public static final int NO_IS_PSLINK_AD = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$ImageLoadType;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface ImageLoadType {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int IMAGE_DISK_INCLUDED = 3;
        public static final int IMAGE_RAM_INCLUDED = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/cloud/tmc/ad/Constants$ImageLoadType$Companion;", "", "()V", "IMAGE_DISK_INCLUDED", "", "IMAGE_RAM_INCLUDED", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int IMAGE_DISK_INCLUDED = 3;
            public static final int IMAGE_RAM_INCLUDED = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$InitType;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface InitType {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int DEBUG = 0;
        public static final int NOT_INIT = -1;
        public static final int RELEASE = 1;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/Constants$InitType$Companion;", "", "()V", "DEBUG", "", "NOT_INIT", "RELEASE", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int DEBUG = 0;
            public static final int NOT_INIT = -1;
            public static final int RELEASE = 1;

            private Companion() {
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bf\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/cloud/tmc/ad/Constants$MIME;", "", "Companion", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public interface MIME {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = Companion.$$INSTANCE;
        public static final int GIF = 2;
        public static final int IMG = 1;
        public static final int VIDEO = 3;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/cloud/tmc/ad/Constants$MIME$Companion;", "", "()V", "GIF", "", "IMG", "VIDEO", "com.cloud.tmc.miniad"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int GIF = 2;
            public static final int IMG = 1;
            public static final int VIDEO = 3;

            private Companion() {
            }
        }
    }
}
