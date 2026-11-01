package com.cloud.tmc.kernel.extension.registry;

import android.text.TextUtils;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.Extension;
import com.cloud.tmc.kernel.extension.action.ActionMeta;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ClassLoaderUtils;
import com.cloud.tmc.kernel.utils.JSONUtils;
import com.google.gson.JsonArray;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class BridgeExtensionRegistry {
    private static final String TAG = "TmcKernel:BridgeExtensionRegistry";
    private final Map<String, ActionMeta> mActionMethodMap = new HashMap();
    private final Set<Class<? extends BridgeExtension>> mBridgeExtensionClazzSet = new HashSet();
    private final Map<String, ExtensionMetaInfo> mActionMetaMap = new HashMap();
    private Set<String> mIgnoredJsApiSet = null;

    BridgeExtensionRegistry() {
    }

    private void checkValidate(Class<? extends BridgeExtension> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("extension is null");
        }
        if (this.mBridgeExtensionClazzSet.contains(cls)) {
            throw new IllegalArgumentException("extension has registered");
        }
    }

    private Set<String> getIgnoredJsapi() {
        if (this.mIgnoredJsApiSet == null) {
            synchronized (this) {
                try {
                    if (this.mIgnoredJsApiSet != null) {
                        ConfigService configService = (ConfigService) TmcProxy.get(ConfigService.class);
                        JsonArray jsonArray = configService != null ? JSONUtils.getJsonArray(configService.getConfigJsonObject("h5_jsapiandPluginsConfig"), "extensions", null) : null;
                        if (jsonArray == null || jsonArray.size() == 0) {
                            this.mIgnoredJsApiSet = Collections.emptySet();
                        } else {
                            this.mIgnoredJsApiSet = new HashSet();
                            int size = jsonArray.size();
                            for (int i11 = 0; i11 < size; i11++) {
                                this.mIgnoredJsApiSet.add(jsonArray.get(i11).getAsString());
                            }
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.mIgnoredJsApiSet;
    }

    private List<ActionMeta> initActionMeta(Class<? extends BridgeExtension> cls) {
        Method[] declaredMethods;
        ArrayList arrayList = new ArrayList();
        if (cls != null && cls.getDeclaredMethods() != null) {
            if (cls.getSuperclass() == null || !BridgeExtension.class.isAssignableFrom(cls.getSuperclass())) {
                declaredMethods = cls.getDeclaredMethods();
            } else {
                TmcLogger.d(TAG, "initActionMeta found has super BridgeExtension, getAllMethods!");
                declaredMethods = cls.getMethods();
            }
            Set<String> ignoredJsapi = getIgnoredJsapi();
            for (Method method : declaredMethods) {
                try {
                    if (!method.isAccessible()) {
                        method.setAccessible(true);
                    }
                    ActionFilter actionFilter = (ActionFilter) method.getAnnotation(ActionFilter.class);
                    if (actionFilter != null) {
                        String strValue = actionFilter.value();
                        if (strValue == null || strValue.length() <= 0) {
                            strValue = method.getName();
                        }
                        if (ignoredJsapi == null || !ignoredJsapi.contains(strValue)) {
                            ActionMeta actionMeta = new ActionMeta();
                            actionMeta.actionMethod = method;
                            actionMeta.bridgeExtensionClazz = cls;
                            actionMeta.actionName = strValue;
                            if (!this.mActionMethodMap.containsKey(strValue)) {
                                arrayList.add(actionMeta);
                            } else if (actionFilter.canOverride()) {
                                this.mActionMethodMap.remove(strValue);
                                TmcLogger.w(TAG, "initActionMeta BridgeExtension action [" + strValue + "] override by " + cls.getName());
                                arrayList.add(actionMeta);
                            } else {
                                TmcLogger.w(TAG, "BridgeExtension action [" + strValue + "] is not allow duplicate register");
                            }
                        } else {
                            TmcLogger.d(TAG, "ignore action:\t" + strValue);
                        }
                    }
                } catch (Throwable th2) {
                    TmcLogger.w(TAG, "initActionMeta " + method + " exception!", th2);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    ActionMeta findActionMeta(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.mActionMethodMap.get(str) == null) {
            synchronized (this.mActionMethodMap) {
                try {
                    if (this.mActionMethodMap.get(str) == null && this.mActionMetaMap.containsKey(str)) {
                        TmcLogger.d(TAG, "findActionMeta lazy init " + str);
                        ExtensionMetaInfo extensionMetaInfo = this.mActionMetaMap.get(str);
                        Class<? extends Extension> clsLoadClass = ClassLoaderUtils.loadClass(extensionMetaInfo.bundleName, extensionMetaInfo.extensionClass);
                        if (clsLoadClass == null) {
                            return null;
                        }
                        register((Class<? extends BridgeExtension>) clsLoadClass);
                        this.mActionMetaMap.remove(str);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.mActionMethodMap.get(str);
    }

    public int getRegisteredActionCount() {
        return this.mActionMethodMap.size() + this.mActionMetaMap.size();
    }

    void register(ExtensionMetaInfo extensionMetaInfo) {
        for (String str : extensionMetaInfo.filter) {
            if (this.mActionMetaMap.containsKey(str)) {
                TmcLogger.w(TAG, "register " + str + " override by " + extensionMetaInfo);
            }
            this.mActionMetaMap.put(str, extensionMetaInfo);
        }
    }

    public void register(Class<? extends BridgeExtension> cls) {
        checkValidate(cls);
        List<ActionMeta> listInitActionMeta = initActionMeta(cls);
        if (listInitActionMeta == null || listInitActionMeta.isEmpty()) {
            TmcLogger.w(TAG, "action method not found in bridgeExtension: " + cls);
            return;
        }
        for (ActionMeta actionMeta : listInitActionMeta) {
            TmcLogger.d(TAG, "register " + actionMeta);
            this.mActionMethodMap.put(actionMeta.actionName, actionMeta);
        }
        this.mBridgeExtensionClazzSet.add(cls);
    }

    public void unRegister(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (String str : list) {
            TmcLogger.d(TAG, "unRegister \t" + str);
            this.mActionMethodMap.remove(str);
        }
    }
}
