package com.cloud.tmc.kernel.constants;

import com.cloud.tmc.kernel.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/cloud/tmc/kernel/constants/LauncherLifecycleType;", "", "()V", "LAUNCHER_FULL_SEARCH_ENTER", "", "LAUNCHER_FULL_SEARCH_EXIT", "LAUNCHER_HEADLINE_UPDATE", "LAUNCHER_MINIAPP_START", "LAUNCHER_NEWS_CARD_UPDATE", "LAUNCHER_ZERO_SCREEN_ENTER", "LAUNCHER_ZERO_SCREEN_EXIT", "LAUNCHER_ZREO_SCREEN_HEAD_UPDATE", "LAUNCHER_ZREO_SCREEN_NEWS_UPDATE", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class LauncherLifecycleType {
    public static final LauncherLifecycleType INSTANCE = new LauncherLifecycleType();
    public static final int LAUNCHER_FULL_SEARCH_ENTER = 3;
    public static final int LAUNCHER_FULL_SEARCH_EXIT = 4;
    public static final int LAUNCHER_HEADLINE_UPDATE = 5;
    public static final int LAUNCHER_MINIAPP_START = 17;
    public static final int LAUNCHER_NEWS_CARD_UPDATE = 6;
    public static final int LAUNCHER_ZERO_SCREEN_ENTER = 1;
    public static final int LAUNCHER_ZERO_SCREEN_EXIT = 2;
    public static final int LAUNCHER_ZREO_SCREEN_HEAD_UPDATE = 8;
    public static final int LAUNCHER_ZREO_SCREEN_NEWS_UPDATE = 7;

    private LauncherLifecycleType() {
    }
}
