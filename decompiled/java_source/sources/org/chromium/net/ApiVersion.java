package org.chromium.net;

/* JADX INFO: loaded from: classes.dex */
public class ApiVersion {
    private static final int API_LEVEL = 26;
    private static final String CRONET_VERSION = "119.0.6045.31";
    private static final String LAST_CHANGE = "c76b9b6a188d43a09957c13e835bc6a2fe7ac772-refs/branch-heads/6045@{#604}";
    private static final int MIN_COMPATIBLE_API_LEVEL = 3;

    private ApiVersion() {
    }

    public static int getApiLevel() {
        return 3;
    }

    public static String getCronetVersion() {
        return CRONET_VERSION;
    }

    public static String getCronetVersionWithLastChange() {
        return "119.0.6045.31@c76b9b6a";
    }

    public static String getLastChange() {
        return LAST_CHANGE;
    }

    public static int getMaximumAvailableApiLevel() {
        return 26;
    }
}
