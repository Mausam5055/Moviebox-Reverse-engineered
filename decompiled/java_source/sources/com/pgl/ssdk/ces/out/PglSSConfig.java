package com.pgl.ssdk.ces.out;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class PglSSConfig {
    public static final int COLLECT_MODE_DEFAULT = 0;
    public static final int COLLECT_MODE_ML_MINIMIZE = 1;
    public static final String CUSTOMINFO_KEY_ALLOWED_FIELDS = "fields_allowed";
    public static final String CUSTOMINFO_KEY_CHECKCLAZZ = "check_clz";
    public static final String CUSTOMINFO_KEY_IPV6 = "key_ipv6";
    public static final String CUSTOMINFO_KEY_SEC_CONFIG_STR = "sec_config";
    public static final String CUSTOMINFO_KEY_TARGET_IDC = "target-idc";
    public static final String CUSTOMINFO_KEY_TRANSFER_HOST = "key_transfer_host";
    public static final int OVREGION_TYPE_SG = 2;
    public static final int OVREGION_TYPE_UNKNOWN = -1;
    public static final int OVREGION_TYPE_VA = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f40116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f40117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f40118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f40119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, Object> f40120e;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f40121a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f40122b = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f40123c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f40124d;

        public PglSSConfig build() {
            if (TextUtils.isEmpty(this.f40121a)) {
                return null;
            }
            return new PglSSConfig(this.f40121a, this.f40122b, this.f40123c, this.f40124d);
        }

        public Builder setAdsdkVersion(String str) {
            this.f40124d = str;
            return this;
        }

        public Builder setAppId(String str) {
            this.f40121a = str;
            return this;
        }

        public Builder setCollectMode(int i11) {
            this.f40123c = i11;
            return this;
        }

        public Builder setOVRegionType(int i11) {
            this.f40122b = i11;
            return this;
        }
    }

    private PglSSConfig(String str, int i11, int i12, String str2) {
        this.f40116a = str;
        this.f40117b = i11;
        this.f40118c = i12;
        this.f40119d = str2;
    }

    public static Builder builder() {
        return new Builder();
    }

    public String getAdSdkVersion() {
        return this.f40119d;
    }

    public String getAppId() {
        return this.f40116a;
    }

    public int getCollectMode() {
        return this.f40118c;
    }

    public Map<String, Object> getCustomInfo() {
        return this.f40120e;
    }

    public int getOVRegionType() {
        return this.f40117b;
    }

    public void setCustomInfo(Map<String, Object> map) {
        this.f40120e = map;
    }
}
