package com.cloud.tmc.integration.bridge;

import android.util.Log;
import androidx.annotation.NonNull;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.KeyboardCache;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.eventcenter.IEvent;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber;
import com.cloud.tmc.kernel.security.Permission;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class KeyboardBridge implements BridgeExtension {
    private static final String TAG = "KeyboardBridge";
    private final IEventSubscriber eventSubscriber = new IEventSubscriber() { // from class: com.cloud.tmc.integration.bridge.KeyboardBridge.1
        @Override // com.cloud.tmc.kernel.proxy.eventcenter.IEventSubscriber
        public boolean onEvent(IEvent iEvent) {
            BridgeCallback bridgeCallback;
            if (iEvent != null && iEvent.getData() != null) {
                Map<String, Object> data = iEvent.getData();
                Object obj = data.get("page");
                Object obj2 = data.get("height");
                if ((obj instanceof Page) && (obj2 instanceof String)) {
                    Page page = (Page) obj;
                    String str = (String) obj2;
                    App app = page.getApp();
                    if (app == null || (bridgeCallback = (BridgeCallback) KeyboardBridge.this.getPages(app).get(page.getPageId())) == null) {
                        return true;
                    }
                    bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty("height", Integer.valueOf(Integer.parseInt(str))).build());
                }
            }
            return true;
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public WeakHashMap<String, BridgeCallback> getPages(@NonNull App app) {
        KeyboardCache keyboardCache = (KeyboardCache) app.getData(KeyboardCache.class, true);
        return keyboardCache == null ? new WeakHashMap<>() : keyboardCache.getPageCache();
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    public void checkEventSubscriber(App app, boolean z10) {
        TmcLogger.d(TAG, "checkEventSubscriber: register=" + z10 + " " + Log.getStackTraceString(new Throwable("Just print")));
        IEventCenter eventCenterInstance = ((IEventCenterFactory) TmcProxy.get(IEventCenterFactory.class)).getEventCenterInstance(app);
        if (eventCenterInstance == null) {
            return;
        }
        if (!z10) {
            eventCenterInstance.unregister(EventConstants.EVENT_KEYBOARD_HEIGHT_CHANGE, this.eventSubscriber);
        } else {
            if (eventCenterInstance.containsEventKey(EventConstants.EVENT_KEYBOARD_HEIGHT_CHANGE)) {
                return;
            }
            eventCenterInstance.register(EventConstants.EVENT_KEYBOARD_HEIGHT_CHANGE, this.eventSubscriber);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void hideKeyboard(@BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (page == null || page.getPageContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            ((IKeyboardProxy) TmcProxy.get(IKeyboardProxy.class)).hideKeyboard(page.getPageContext().getContentView());
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void offKeyboardHeightChange(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback BridgeCallback bridgeCallback) {
        if (app == null || page == null || page.getPageContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            BridgeCallback bridgeCallbackRemove = getPages(app).remove(page.getPageId());
            if (bridgeCallbackRemove != null) {
                bridgeCallbackRemove.close();
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendSuccessResponse();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized");
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public void onKeyboardHeightChange(@BindingNode(App.class) App app, @BindingNode(Page.class) Page page, @BindingCallback(isSticky = true) BridgeCallback bridgeCallback) {
        BridgeCallback bridgeCallback2;
        if (app == null || page == null || page.getPageContext() == null) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse();
            }
        } else {
            WeakHashMap<String, BridgeCallback> pages = getPages(app);
            if (pages.containsKey(page.getPageId()) && (bridgeCallback2 = pages.get(page.getPageId())) != null) {
                bridgeCallback2.close();
            }
            pages.put(page.getPageId(), bridgeCallback);
            checkEventSubscriber(app, true);
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }
}
