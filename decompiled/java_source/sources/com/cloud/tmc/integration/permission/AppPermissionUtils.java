package com.cloud.tmc.integration.permission;

import androidx.annotation.Keep;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.permission.model.ApiPermissionInfo;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.security.Accessor;
import com.cloud.tmc.kernel.utils.BundleUtils;
import com.cloud.tmc.kernel.utils.JSONUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class AppPermissionUtils {
    public static final String TAG = "Tmcintegration:AppPermissionUtils";

    public static ApiPermissionInfo convert2ApiPermissionInfo(PermissionModel permissionModel) {
        try {
            TmcLogger.debug(TAG, "convert2ApiPermissionInfo " + permissionModel);
            if (permissionModel != null) {
                ApiPermissionInfo apiPermissionInfo = new ApiPermissionInfo();
                List<String> jsapiList = permissionModel.getJsapiList();
                if (jsapiList != null && !jsapiList.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    for (String str : jsapiList) {
                        if (str instanceof String) {
                            arrayList.add(str);
                        }
                    }
                    apiPermissionInfo.setApiLevelList(PermissionConstant.JS_API_LIST, arrayList);
                }
                Set<String> validDomains = permissionModel.getValidDomains();
                if (validDomains != null && !validDomains.isEmpty()) {
                    ArrayList arrayList2 = new ArrayList();
                    for (String str2 : validDomains) {
                        if (str2 instanceof String) {
                            arrayList2.add(str2);
                        }
                    }
                    apiPermissionInfo.setApiLevelList(PermissionConstant.VALID_DOMAIN, arrayList2);
                }
                JsonObject specialConfigs = permissionModel.getSpecialConfigs();
                if (specialConfigs != null && specialConfigs.size() != 0) {
                    for (String str3 : specialConfigs.keySet()) {
                        JsonObject jsonObject = JSONUtils.getJsonObject(specialConfigs, str3, null);
                        if (jsonObject != null) {
                            ArrayList arrayList3 = new ArrayList();
                            for (String str4 : jsonObject.keySet()) {
                                arrayList3.add(str4);
                                JsonArray jsonArray = JSONUtils.getJsonArray(jsonObject, str4, null);
                                if (jsonArray != null && !jsonArray.isEmpty()) {
                                    ArrayList arrayList4 = new ArrayList();
                                    for (Object obj : jsonArray) {
                                        if (obj instanceof String) {
                                            arrayList4.add((String) obj);
                                        }
                                    }
                                    apiPermissionInfo.setApiLevelList("JSAPI_SP_Config_" + str3 + "_" + str4, arrayList4);
                                }
                            }
                            apiPermissionInfo.setApiLevelList("JSAPI_SP_Config_" + str3, arrayList3);
                        }
                    }
                }
                apiPermissionInfo.setHasPermissionFile(true);
                return apiPermissionInfo;
            }
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
        }
        return null;
    }

    public static String getAggregationMainAppId(AppModel appModel) {
        JsonObject jsonObject;
        if (appModel == null || appModel.getExtendInfos() == null || (jsonObject = JSONUtils.getJsonObject(appModel.getExtendInfos(), TmcConstants.EXTRA_RES_LAUNCH_PARAMS, null)) == null) {
            return null;
        }
        return JSONUtils.getString(jsonObject, "aggregationMainAppId");
    }

    public static App getApp(Accessor accessor) {
        if (!(accessor instanceof Node)) {
            return null;
        }
        Node parentNode = (Node) accessor;
        int i11 = 5;
        while (parentNode != null) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                break;
            }
            if (parentNode instanceof App) {
                return (App) parentNode;
            }
            parentNode = parentNode.getParentNode();
            i11 = i12;
        }
        return null;
    }

    public static String getPermissionAppId(Accessor accessor) {
        App app = getApp(accessor);
        if (app != null) {
            return app.getAppId();
        }
        return null;
    }

    public static PermissionModel getPermissionModel(App app) {
        AppModel appModel = (AppModel) BundleUtils.getParcelable(app.getSceneParams(), TmcConstants.EXTRA_APPINFO);
        if (appModel != null) {
            return appModel.getPermissions();
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x001f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:16:0x0020  */
    public static PermissionModel getPermissionModel(Accessor accessor) {
        App app;
        if (!(accessor instanceof Node)) {
            return null;
        }
        Node parentNode = (Node) accessor;
        int i11 = 5;
        while (parentNode != null) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                break;
            }
            if (parentNode instanceof App) {
                app = (App) parentNode;
            } else {
                parentNode = parentNode.getParentNode();
                i11 = i12;
            }
            if (app == null) {
                return null;
            }
            return getPermissionModel(app);
        }
        app = null;
        if (app == null) {
            return null;
        }
        return getPermissionModel(app);
    }
}
