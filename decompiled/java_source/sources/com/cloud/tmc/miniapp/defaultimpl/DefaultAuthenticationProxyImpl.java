package com.cloud.tmc.miniapp.defaultimpl;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.cloud.tmc.integration.extension.IgnorePermissionPoint;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.model.AppInfoQuery;
import com.cloud.tmc.integration.model.AppInfoScene;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.ScopeModel;
import com.cloud.tmc.integration.permission.ApiPermissionCheckResult;
import com.cloud.tmc.integration.permission.AppPermissionUtils;
import com.cloud.tmc.integration.permission.PermissionConstant;
import com.cloud.tmc.integration.permission.model.ApiPermissionInfo;
import com.cloud.tmc.integration.permission.proxy.AuthenticationProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.bridge.NativeCallContext;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.bridge.BridgePermission;
import com.cloud.tmc.kernel.helper.BridgeResponseHelper;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.cloud.tmc.kernel.model.permission.ScopesV2Bean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.DefaultPermission;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.JSONUtils;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.ScopeUtils;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultAuthenticationProxyImpl implements AuthenticationProxy {
    public static String OooO0o = "Tmcintegration:DefaultAuthenticationProxyImpl";
    public Context OooO00o;
    public OooO0O0 OooO0o0;
    public String OooO0Oo = "";
    public Map<String, ApiPermissionInfo> OooO0O0 = new ConcurrentHashMap();
    public Map<String, PermissionModel> OooO0OO = new ConcurrentHashMap();

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("tel");
        arrayList.add("mailto");
        arrayList.add("sms");
        arrayList.add("geo");
    }

    public DefaultAuthenticationProxyImpl(Context context) {
        this.OooO00o = context;
        this.OooO0o0 = new OooO0O0(context);
    }

    public final boolean OooO00o(ApiPermissionInfo apiPermissionInfo, String str, String str2) {
        if (!TextUtils.equals(str2, PermissionConstant.VALID_SUB_RES_MIME_LIST) && !str2.startsWith(PermissionConstant.JS_API_SP_CONFIG) && !TextUtils.equals(str2, PermissionConstant.EVENT_LIST) && !TextUtils.equals(str2, PermissionConstant.HTTP_LINK_SUB_RES_MIME_LIST) && !str2.startsWith(PermissionConstant.WEB_VIEW_CONFIG) && !TextUtils.equals(str2, PermissionConstant.VALID_DOMAIN)) {
            return apiPermissionInfo.getApiLevelList(str2).contains(str);
        }
        List<String> apiLevelList = apiPermissionInfo.getApiLevelList(str2);
        if (apiLevelList == null || apiLevelList.isEmpty()) {
            return false;
        }
        Iterator<String> it = apiLevelList.iterator();
        while (it.hasNext()) {
            try {
                if (Pattern.compile(it.next()).matcher(str).find()) {
                    return true;
                }
            } catch (Exception e11) {
                TmcLogger.e(OooO0o, "hasPermission Regex Exception", e11);
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public boolean checkEventPermission(String str, String str2, Page page) {
        if (this.OooO0O0.containsKey(str)) {
            return hasPermission(str, str2, PermissionConstant.EVENT_LIST, page);
        }
        return true;
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public ApiPermissionCheckResult checkJSApi(Permission permission, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, App app) {
        String str = OooO0o;
        StringBuilder sbOooO00o = com.cloud.tmc.miniapp.OooO00o.OooO00o("checkJSApi,page i新日志##########");
        sbOooO00o.append(nativeCallContext.getSource());
        TmcLogger.d(str, sbOooO00o.toString());
        if (app == null) {
            TmcLogger.d(OooO0o, "checkJSApi,page is null");
            return ApiPermissionCheckResult.DENY;
        }
        IgnorePermissionPoint ignorePermissionPoint = (IgnorePermissionPoint) ExtensionPoint.as(IgnorePermissionPoint.class).node(app).create();
        if (ignorePermissionPoint != null && ignorePermissionPoint.ignoreAppPermission(app.getAppId())) {
            TmcLogger.d(OooO0o, "checkJSApi,IgnorePermissionPoint ignoreAppPermission");
            return ApiPermissionCheckResult.IGNORE;
        }
        AppModel appModel = app.getAppModel();
        if (appModel != null) {
            boolean zIsDevSource = AppInfoScene.isDevSource(app.getStartParams());
            String string = JSONUtils.getString(appModel.getExtendInfos(), "checkPermission", "YES");
            if (zIsDevSource && "NO".equalsIgnoreCase(string)) {
                TmcLogger.d(OooO0o, "checkJSApi, KEY_CHECK_PERMISSION ignoreAppPermission");
                return ApiPermissionCheckResult.IGNORE;
            }
        }
        String appId = app.getAppId();
        PermissionModel permissionModel = this.OooO0OO.get(appId);
        if (permission == null || permission == DefaultPermission.ALL || permissionModel == null) {
            TmcLogger.d(OooO0o, String.format("%s not have permission file", appId));
            return ApiPermissionCheckResult.IGNORE;
        }
        permissionModel.getJsapiList();
        return ScopeUtils.OooO00o.OooO00o(permission);
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public boolean checkSPJSApi(Permission permission, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, App app) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:40:0x0103  */
    /* JADX WARN: Code duplicated, block: B:42:0x0115  */
    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public boolean checkShowPermissionDialog(Permission permission, NativeCallContext nativeCallContext, BridgeResponseHelper bridgeResponseHelper, Page page) {
        Pair<Boolean, Long> pairOooO00o;
        Long second;
        PermissionModel permissionModel = this.OooO0OO.get(page.getApp().getAppId());
        if (permission == null || permission == DefaultPermission.ALL || permissionModel == null) {
            TmcLogger.d(OooO0o, "checkShowPermissionDialog permsionModel is null");
            return false;
        }
        OooO0O0 oooO0O0 = this.OooO0o0;
        oooO0O0.getClass();
        if (page.getApp() != null) {
            AppModel appModel = page.getApp().getAppModel();
            PermissionModel permissions = appModel.getPermissions();
            String appId = page.getApp().getAppId();
            String strAuthority = permission.authority();
            if ("0".equals(((ConfigService) TmcProxy.get(ConfigService.class)).getConfig("ta_permissionDialogSwitch", "1"))) {
                TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "checkShowPermissionDialog...dialogSwitch closed");
            } else {
                String scopeName = oooO0O0.OooO00o(strAuthority);
                ScopeModel scopeModel = OooO0O0.OooO0Oo.get(scopeName);
                if (scopeModel != null) {
                    ScopeUtils scopeUtils = ScopeUtils.OooO00o;
                    ArrayList<ScopesV2Bean> arrayListOooO00o = scopeUtils.OooO00o(page);
                    long validityTime = scopeModel.getValidityTime();
                    boolean userAuthorization = scopeModel.getUserAuthorization();
                    if (arrayListOooO00o != null) {
                        ScopesV2Bean scopesV2BeanOooO00o = scopeUtils.OooO00o(scopeName, arrayListOooO00o);
                        if (scopesV2BeanOooO00o == null) {
                            oooO0O0.OooO00o(nativeCallContext, bridgeResponseHelper, strAuthority, scopeName);
                            ExecutorUtils.execute(ExecutorType.NORMAL, new OooO00o(oooO0O0, scopeName, appId, appModel));
                        } else {
                            userAuthorization = scopesV2BeanOooO00o.getUserAuthorization();
                            long validityTime2 = scopesV2BeanOooO00o.getValidityTime();
                            scopeModel.setUserAuthorization(userAuthorization);
                            scopeModel.setValidityTime(validityTime2);
                            validityTime = validityTime2;
                        }
                        return true;
                    }
                    if (userAuthorization && !scopeUtils.OooO00o(oooO0O0.OooO00o, scopeName, validityTime, appId)) {
                        Context context = oooO0O0.OooO00o;
                        Intrinsics.h(context, "context");
                        Intrinsics.h(scopeName, "scopeName");
                        Intrinsics.h(appId, "appId");
                        if (Intrinsics.c(scopeName, "userLogin") || scopeUtils.OooO0O0(context, scopeName, appId) < 3) {
                            if ("notifyMessage".equals(scopeName)) {
                                pairOooO00o = scopeUtils.OooO00o(oooO0O0.OooO00o, appId);
                                if (Boolean.TRUE.equals(pairOooO00o.getFirst())) {
                                    second = pairOooO00o.getSecond();
                                    if (System.currentTimeMillis() - second.longValue() < 604800000) {
                                        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "notifyMsg scope not show again" + second);
                                        oooO0O0.OooO00o(nativeCallContext, bridgeResponseHelper, strAuthority, scopeName);
                                    }
                                }
                            }
                            return oooO0O0.OooO00o(page, appId, strAuthority, nativeCallContext, bridgeResponseHelper, permissions, false);
                        }
                        if (System.currentTimeMillis() - scopeUtils.OooO0o0(context, scopeName, appId) > 86400000) {
                            if ("notifyMessage".equals(scopeName)) {
                                pairOooO00o = scopeUtils.OooO00o(oooO0O0.OooO00o, appId);
                                if (Boolean.TRUE.equals(pairOooO00o.getFirst())) {
                                    second = pairOooO00o.getSecond();
                                    if (System.currentTimeMillis() - second.longValue() < 604800000 && second.longValue() != 0) {
                                        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "notifyMsg scope not show again" + second);
                                        oooO0O0.OooO00o(nativeCallContext, bridgeResponseHelper, strAuthority, scopeName);
                                    }
                                }
                            }
                            return oooO0O0.OooO00o(page, appId, strAuthority, nativeCallContext, bridgeResponseHelper, permissions, false);
                        }
                        oooO0O0.OooO00o(nativeCallContext, bridgeResponseHelper, strAuthority, scopeName);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public void clearPermissionModel(String str) {
        if (this.OooO0O0.get(str) != null) {
            this.OooO0O0.get(str).clear();
            this.OooO0O0.remove(str);
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0100  */
    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public Map<String, Boolean> getAllPermissions(String str, String str2, @Nullable AppModel appModel) {
        boolean z10;
        if (this.OooO0o0 == null) {
            this.OooO0o0 = new OooO0O0(this.OooO00o);
        }
        OooO0O0 oooO0O0 = this.OooO0o0;
        oooO0O0.getClass();
        TmcAppInfoManager tmcAppInfoManager = (TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class);
        if (appModel == null) {
            appModel = tmcAppInfoManager.getAppModel(oooO0O0.OooO00o, AppInfoQuery.make(str2));
        }
        HashMap map = new HashMap();
        if (appModel != null && appModel.getPermissions() != null && appModel.getPermissions().getNativeApiScopeConfig() != null) {
            JsonObject nativeApiScopeConfig = appModel.getPermissions().getNativeApiScopeConfig();
            String aggregationMainAppId = AppPermissionUtils.getAggregationMainAppId(appModel);
            for (String str3 : nativeApiScopeConfig.keySet()) {
                String strOooO00o = oooO0O0.OooO00o(str2, str3);
                String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(oooO0O0.OooO00o, str2, strOooO00o);
                TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "isThePermissionApplied,key: " + strOooO00o + ",value: " + string);
                if (TextUtils.isEmpty(string) && !TextUtils.isEmpty(aggregationMainAppId)) {
                    string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(oooO0O0.OooO00o, str2, oooO0O0.OooO00o(aggregationMainAppId, str3));
                }
                if (!TextUtils.isEmpty(string)) {
                    String strOooO00o2 = oooO0O0.OooO00o(str2, str3);
                    String string2 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(oooO0O0.OooO00o, str2, strOooO00o2);
                    TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "getPermissionByKey,key: " + strOooO00o2 + ",value: " + string2);
                    if (!TextUtils.equals(string2, "1")) {
                        if (!TextUtils.isEmpty(aggregationMainAppId)) {
                            z10 = TextUtils.equals(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(oooO0O0.OooO00o, str2, oooO0O0.OooO00o(aggregationMainAppId, str3)), "1");
                        }
                    }
                    map.put(str3, Boolean.valueOf(z10));
                }
            }
        }
        return map;
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public PermissionModel getPermissionModel(String str) {
        return this.OooO0OO.get(str);
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public List<Permission> getPermissions(String str) {
        List<String> jsapiList;
        PermissionModel permissionModel = this.OooO0OO.get(str);
        if (permissionModel == null || (jsapiList = permissionModel.getJsapiList()) == null || jsapiList.size() <= 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(jsapiList.size());
        for (String str2 : jsapiList) {
            arrayList.add(new BridgePermission(str2, str2));
        }
        return arrayList;
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public boolean hasPermission(String str, String str2, String str3, Page page) {
        Map<String, ApiPermissionInfo> map;
        TmcLogger.d(OooO0o, "hasPermission " + str + " " + str2 + " " + str3);
        IgnorePermissionPoint ignorePermissionPoint = (IgnorePermissionPoint) ExtensionPoint.as(IgnorePermissionPoint.class).node(page.getApp()).create();
        if (ignorePermissionPoint != null && ignorePermissionPoint.ignoreAppPermission(str)) {
            TmcLogger.d(OooO0o, "ignore hasPermission appid\t " + str);
            return true;
        }
        try {
            ApiPermissionInfo apiPermissionInfo = null;
            if (!TextUtils.isEmpty(this.OooO0Oo)) {
                JsonObject object = JSONUtils.parseObject(this.OooO0Oo);
                JsonObject jsonObject = JSONUtils.getJsonObject(object, str, null);
                if (jsonObject == null || jsonObject.size() == 0) {
                    if ("yes".equalsIgnoreCase(JSONUtils.getString(object, str3))) {
                        return true;
                    }
                } else if ("yes".equalsIgnoreCase(JSONUtils.getString(jsonObject, str3))) {
                    return true;
                }
            }
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && (map = this.OooO0O0) != null && map.get(str) != null && this.OooO0O0.get(str).getApiLevelList(str3) != null && !this.OooO0O0.get(str).getApiLevelList(str3).isEmpty()) {
                apiPermissionInfo = this.OooO0O0.get(str);
            }
            return apiPermissionInfo == null ? str3.startsWith(PermissionConstant.JS_API_SP_CONFIG) : OooO00o(apiPermissionInfo, str2, str3);
        } catch (Exception e11) {
            TmcLogger.e(OooO0o, "hasPermission Exception!", e11);
            return true;
        }
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public boolean hasPermissionModel(String str, Page page) {
        if (TextUtils.isEmpty(str)) {
            str = page.getApp().getAppId();
        }
        return this.OooO0OO.containsKey(str);
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public void setPermissionModel(String str, PermissionModel permissionModel) {
        this.OooO0OO.put(str, permissionModel);
        this.OooO0O0.put(str, AppPermissionUtils.convert2ApiPermissionInfo(permissionModel));
    }

    @Override // com.cloud.tmc.integration.permission.proxy.AuthenticationProxy
    public void setPermissionState(String str, String str2, String str3, boolean z10) {
        if (this.OooO0o0 == null) {
            this.OooO0o0 = new OooO0O0(this.OooO00o);
        }
        AppModel appModel = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModel(this.OooO00o, AppInfoQuery.make(str2));
        OooO0O0 oooO0O0 = this.OooO0o0;
        String aggregationMainAppId = AppPermissionUtils.getAggregationMainAppId(appModel);
        oooO0O0.getClass();
        if ("userLogin".equals(str3)) {
            return;
        }
        String strOooO00o = TextUtils.isEmpty(aggregationMainAppId) ? oooO0O0.OooO00o(str2, str3) : oooO0O0.OooO00o(aggregationMainAppId, str3);
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(oooO0O0.OooO00o, str2, strOooO00o, z10 ? "1" : "0");
        TmcLogger.d("Tmcintegration:LocalAuthPermissionManager", "changePermissionState,key: " + strOooO00o + ",opened: " + z10);
    }
}
