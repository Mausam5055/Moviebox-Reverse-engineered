package com.cloud.tmc.integration.event;

import com.cloud.tmc.integration.BuildConfig;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b'\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/cloud/tmc/integration/event/EventConstants;", "", "()V", "ABILITY_NAME_CALLBACK", "", "ABILITY_NAME_DISPATCH_EVENT", "ABILITY_NAME_LIFECYCLE", "ADDRESS_NATIVE", "ADDRESS_RENDER", "ADDRESS_WORKER", "EVENT_AD_FORM_PAGE", "EVENT_AD_LANDING_PAGE", "EVENT_AD_PERSONALIZATION_PAGE", "EVENT_CONNECTION_RENDER", "EVENT_CONNECTION_WORKER", "EVENT_CONSUME_TIME", "EVENT_KEYBOARD_HEIGHT_CHANGE", "EVENT_NAME_APP_READY", "EVENT_NAME_ON_APP_HIDE", "EVENT_NAME_ON_APP_SHOW", "EVENT_NAME_ON_PAGE_READY", "EVENT_NAME_ON_SWITCH_TAB", "EVENT_NAME_PAGE_BACK", "EVENT_NAME_PAGE_ENTER", "EVENT_NAME_PAGE_PULL_DOWN_REFRESH", "EVENT_NAME_PAGE_PULL_UP_REFRESH", "EVENT_NAME_PAGE_READY", "EVENT_NAME_RESEND_H5_PAGE_STACK", "EVENT_NAME_SLAVE_ATTACHED", "EVENT_NAME_SLAVE_LOADED", "EVENT_NAME_WORKER_INIT", "EVENT_RENDER_ON_MSG_READY", "EVENT_RENDER_STARUS", "EVENT_WORKER_ON_MSG_READY", "KEY_ABILITY_NAME", "KEY_ACTION", "KEY_CALLBACK_ID", "KEY_DATA_JSON", "KEY_EVENT_NAME", "KEY_RENDER_ID", "KEY_SOURCE", "KEY_TARGET", "KEY_TIME", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class EventConstants {
    public static final String ABILITY_NAME_CALLBACK = "callback";
    public static final String ABILITY_NAME_DISPATCH_EVENT = "DispatchEvent";
    public static final String ABILITY_NAME_LIFECYCLE = "Lifecycle";
    public static final String ADDRESS_NATIVE = "native";
    public static final String ADDRESS_RENDER = "render";
    public static final String ADDRESS_WORKER = "worker";
    public static final String EVENT_AD_FORM_PAGE = "adFromPage";
    public static final String EVENT_AD_LANDING_PAGE = "adLandingPage";
    public static final String EVENT_AD_PERSONALIZATION_PAGE = "adPersonalizationPage";
    public static final String EVENT_CONNECTION_RENDER = "connectionRender";
    public static final String EVENT_CONNECTION_WORKER = "connectionWorker";
    public static final String EVENT_CONSUME_TIME = "consumeTime";
    public static final String EVENT_KEYBOARD_HEIGHT_CHANGE = "onKeyboardHeightChange";
    public static final String EVENT_NAME_APP_READY = "appReady";
    public static final String EVENT_NAME_ON_APP_HIDE = "onAppHide";
    public static final String EVENT_NAME_ON_APP_SHOW = "onAppShow";
    public static final String EVENT_NAME_ON_PAGE_READY = "onPageReady";
    public static final String EVENT_NAME_ON_SWITCH_TAB = "onSwitchTab";
    public static final String EVENT_NAME_PAGE_BACK = "pageBack";
    public static final String EVENT_NAME_PAGE_ENTER = "pageEnter";
    public static final String EVENT_NAME_PAGE_PULL_DOWN_REFRESH = "onPullDownRefresh";
    public static final String EVENT_NAME_PAGE_PULL_UP_REFRESH = "onReachBottom";
    public static final String EVENT_NAME_PAGE_READY = "pageReady";
    public static final String EVENT_NAME_RESEND_H5_PAGE_STACK = "resendH5PageStack";
    public static final String EVENT_NAME_SLAVE_ATTACHED = "slaveAttached";
    public static final String EVENT_NAME_SLAVE_LOADED = "slaveLoaded";
    public static final String EVENT_NAME_WORKER_INIT = "workerInit";
    public static final String EVENT_RENDER_ON_MSG_READY = "renderOnMessageReady";
    public static final String EVENT_RENDER_STARUS = "renderStatus";
    public static final String EVENT_WORKER_ON_MSG_READY = "workerOnMessageReady";
    public static final EventConstants INSTANCE = new EventConstants();
    public static final String KEY_ABILITY_NAME = "abilityName";
    public static final String KEY_ACTION = "action";
    public static final String KEY_CALLBACK_ID = "callbackId";
    public static final String KEY_DATA_JSON = "dataJson";
    public static final String KEY_EVENT_NAME = "eventName";
    public static final String KEY_RENDER_ID = "renderId";
    public static final String KEY_SOURCE = "source";
    public static final String KEY_TARGET = "target";
    public static final String KEY_TIME = "time";

    private EventConstants() {
    }
}
