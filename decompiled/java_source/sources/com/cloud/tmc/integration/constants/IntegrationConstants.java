package com.cloud.tmc.integration.constants;

import android.content.Context;
import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b&\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010,\u001a\u00020\u00042\b\u0010-\u001a\u0004\u0018\u00010.R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/cloud/tmc/integration/constants/IntegrationConstants;", "", "()V", "BUNDLE_KEY_WARMUP_TYPE", "", "DARK_MODE_NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT", "ENABLE_PAGE_LOADING_DEFAULT", "", "EVENT_DATA", "IS_FOREGROUND", "LIMIT_TEXT_ZOOM_DEFAULT", "NAVIGATION_BAR_ALL_ACTION", "NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT", "NAVIGATION_BAR_BACK_ACTION", "NAVIGATION_BAR_HOME_ACTION_DEFAULT", "NAVIGATION_BAR_ICON_STYLE_DEFAULT", "NAVIGATION_BAR_ICON_STYLE_WHITE", "NAVIGATION_BAR_LOADING_DEFAULT", "NAVIGATION_BAR_TEXT_STYLE_DEFAULT", "NAVIGATION_BAR_TEXT_STYLE_WHITE", "NAVIGATION_STYLE_CUSTOM", "NAVIGATION_STYLE_DEFAULT", "NAVIGATION_STYLE_HIDE", "PRELOAD_AUTO", "PRELOAD_DEFAULT", "PRELOAD_MANUAL", "PULL_DOWN_REFRESH_DEFAULT", "PULL_UP_REFRESH_DEFAULT", "REFRESH_HEADER_STYLE_CUSTOM", "REFRESH_HEADER_STYLE_CUSTOM_TEXT_ENABLE_DEFAULT", "REFRESH_HEADER_STYLE_DEFAULT", "REFRESH_HEADER_TRANSLATION_CONTENT_DEFAULT", "TABBAR_ADJUST_PAN_DEFAULT", "TAB_BAR_BORDER_STYLE_DEFAULT", "TAB_BAR_BORDER_STYLE_WHITE", "TAB_BAR_CUSTOM", "TAB_BAR_CUSTOM_DEFAULT", "TAB_BAR_HANDLE_TAB_BAR_LOAD_DEFAULT", "TAB_BAR_HANDLE_TAB_BAR_LOAD_MANUAL", "TAB_BAR_POSITION_DEFAULT", "TAB_BAR_POSITION_TOP", "TOOL_SPLIT", "TRANSPARENT_STATUS_BAR_DEFAULT", "USER_AGENT_SHELL", "getDefaultNavigationBarBackgroundColor", "context", "Landroid/content/Context;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class IntegrationConstants {
    public static final String BUNDLE_KEY_WARMUP_TYPE = "warmupType";
    public static final String DARK_MODE_NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT = "#1C1E21";
    public static final boolean ENABLE_PAGE_LOADING_DEFAULT = false;
    public static final String EVENT_DATA = "eventData";
    public static final IntegrationConstants INSTANCE = new IntegrationConstants();
    public static final String IS_FOREGROUND = "isForeground";
    public static final boolean LIMIT_TEXT_ZOOM_DEFAULT = false;
    public static final String NAVIGATION_BAR_ALL_ACTION = "all";
    public static final String NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT = "#ffffff";
    public static final String NAVIGATION_BAR_BACK_ACTION = "back";
    public static final String NAVIGATION_BAR_HOME_ACTION_DEFAULT = "home";
    public static final String NAVIGATION_BAR_ICON_STYLE_DEFAULT = "black";
    public static final String NAVIGATION_BAR_ICON_STYLE_WHITE = "white";
    public static final boolean NAVIGATION_BAR_LOADING_DEFAULT = true;
    public static final String NAVIGATION_BAR_TEXT_STYLE_DEFAULT = "black";
    public static final String NAVIGATION_BAR_TEXT_STYLE_WHITE = "white";
    public static final String NAVIGATION_STYLE_CUSTOM = "custom";
    public static final String NAVIGATION_STYLE_DEFAULT = "default";
    public static final String NAVIGATION_STYLE_HIDE = "hide";
    public static final String PRELOAD_AUTO = "auto";
    public static final String PRELOAD_DEFAULT = "static";
    public static final String PRELOAD_MANUAL = "manual";
    public static final boolean PULL_DOWN_REFRESH_DEFAULT = false;
    public static final boolean PULL_UP_REFRESH_DEFAULT = false;
    public static final String REFRESH_HEADER_STYLE_CUSTOM = "custom";
    public static final boolean REFRESH_HEADER_STYLE_CUSTOM_TEXT_ENABLE_DEFAULT = true;
    public static final String REFRESH_HEADER_STYLE_DEFAULT = "default";
    public static final boolean REFRESH_HEADER_TRANSLATION_CONTENT_DEFAULT = true;
    public static final boolean TABBAR_ADJUST_PAN_DEFAULT = false;
    public static final String TAB_BAR_BORDER_STYLE_DEFAULT = "black";
    public static final String TAB_BAR_BORDER_STYLE_WHITE = "white";
    public static final boolean TAB_BAR_CUSTOM = true;
    public static final boolean TAB_BAR_CUSTOM_DEFAULT = false;
    public static final String TAB_BAR_HANDLE_TAB_BAR_LOAD_DEFAULT = "static";
    public static final String TAB_BAR_HANDLE_TAB_BAR_LOAD_MANUAL = "manual";
    public static final String TAB_BAR_POSITION_DEFAULT = "bottom";
    public static final String TAB_BAR_POSITION_TOP = "top";
    public static final String TOOL_SPLIT = "____";
    public static final boolean TRANSPARENT_STATUS_BAR_DEFAULT = false;
    public static final String USER_AGENT_SHELL = "MiniShell";

    private IntegrationConstants() {
    }

    public final String getDefaultNavigationBarBackgroundColor(Context context) {
        return NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT;
    }
}
