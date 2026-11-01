package com.cloud.tmc.miniapp.utils;

import android.content.Context;
import android.os.Bundle;
import com.cloud.tmc.integration.audio.recording.RecorderConstants;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PermissionAppInfoModel;
import com.cloud.tmc.integration.model.PermissionInfoModel;
import com.cloud.tmc.integration.model.ScopeModel;
import com.cloud.tmc.integration.permission.ApiPermissionCheckResult;
import com.cloud.tmc.integration.permission.config.ScopePermissionHelper;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.model.permission.PermissionModel;
import com.cloud.tmc.kernel.model.permission.ScopesV2Bean;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.StringUtils;
import com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class ScopeUtils {
    public static final ScopeUtils OooO00o = new ScopeUtils();
    public static final List<String> OooO0O0 = CollectionsKt.o("readPhotosAlbum", "userLocation", "phoneCall", "sms", "navigateTo", "bluetooth", "notifyMessage", LauncherMiniAppConfigHelper.KEY_SCAN_CODE_CONFIG, "wifi", "uploadFile", "camera", "downloadFile", "openExternalApp", "navigateToOutsideBrowser", RecorderConstants.RECORDER_DIR, "clipboard", "screenshot", "athena");

    public final ApiPermissionCheckResult OooO00o(Permission permission) {
        Intrinsics.h(permission, "permission");
        ConcurrentHashMap<String, String> concurrentHashMap = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0OO;
        if (!concurrentHashMap.containsKey(permission.authority())) {
            TmcLogger.d("ScopeUtils", " checkJSAPI deny \t" + permission.authority());
            return ApiPermissionCheckResult.DENY;
        }
        String str = concurrentHashMap.get(permission.authority());
        ConcurrentHashMap<String, ScopeModel> SHOW_SCOPE_MAP = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0Oo;
        Intrinsics.g(SHOW_SCOPE_MAP, "SHOW_SCOPE_MAP");
        if (SHOW_SCOPE_MAP.get(str) != null) {
            return ApiPermissionCheckResult.ALLOW;
        }
        TmcLogger.d("ScopeUtils", " checkJSAPI deny \t" + permission.authority());
        return ApiPermissionCheckResult.DENY;
    }

    public final ScopesV2Bean OooO00o(String str, ArrayList<ScopesV2Bean> arrayList) {
        Object obj = null;
        if (arrayList == null) {
            return null;
        }
        for (Object obj2 : arrayList) {
            if (Intrinsics.c(((ScopesV2Bean) obj2).getScopeName(), str)) {
                obj = obj2;
                break;
            }
        }
        return (ScopesV2Bean) obj;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String OooO00o(String str, String str2) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1600397930:
                    if (str.equals("clipboard")) {
                        String string = StringUtils.getString(R.string.mini_permission_clipboard_content);
                        Intrinsics.g(string, "getString(R.string.mini_…ission_clipboard_content)");
                        return string;
                    }
                    break;
                case -1407612381:
                    if (str.equals("athena")) {
                        String string2 = StringUtils.getString(R.string.mini_permission_athena_content);
                        Intrinsics.g(string2, "getString(R.string.mini_permission_athena_content)");
                        return string2;
                    }
                    break;
                case -1367751899:
                    if (str.equals("camera")) {
                        String string3 = StringUtils.getString(R.string.mini_permission_camera_content);
                        Intrinsics.g(string3, "getString(R.string.mini_permission_camera_content)");
                        return string3;
                    }
                    break;
                case -1029520148:
                    if (str.equals("phoneCall")) {
                        String string4 = StringUtils.getString(R.string.mini_permission_phone_content);
                        Intrinsics.g(string4, "getString(R.string.mini_permission_phone_content)");
                        return string4;
                    }
                    break;
                case -891002358:
                    if (str.equals(LauncherMiniAppConfigHelper.KEY_SCAN_CODE_CONFIG)) {
                        String string5 = StringUtils.getString(R.string.mini_permission_scan_content);
                        Intrinsics.g(string5, "getString(R.string.mini_permission_scan_content)");
                        return string5;
                    }
                    break;
                case -799233858:
                    if (str.equals(RecorderConstants.RECORDER_DIR)) {
                        String string6 = StringUtils.getString(R.string.mini_permission_record_content);
                        Intrinsics.g(string6, "getString(R.string.mini_permission_record_content)");
                        return string6;
                    }
                    break;
                case -416447130:
                    if (str.equals("screenshot")) {
                        String string7 = StringUtils.getString(R.string.mini_permission_screenshot_content);
                        Intrinsics.g(string7, "getString(R.string.mini_…ssion_screenshot_content)");
                        return string7;
                    }
                    break;
                case -243495139:
                    if (str.equals("uploadFile")) {
                        String string8 = StringUtils.getString(R.string.mini_permission_upload_content);
                        Intrinsics.g(string8, "getString(R.string.mini_permission_upload_content)");
                        return string8;
                    }
                    break;
                case 114009:
                    if (str.equals("sms")) {
                        String string9 = StringUtils.getString(R.string.mini_permission_sms_content);
                        Intrinsics.g(string9, "getString(R.string.mini_permission_sms_content)");
                        return string9;
                    }
                    break;
                case 3649301:
                    if (str.equals("wifi")) {
                        String string10 = StringUtils.getString(R.string.mini_permission_wifi_content);
                        Intrinsics.g(string10, "getString(R.string.mini_permission_wifi_content)");
                        return string10;
                    }
                    break;
                case 706349231:
                    if (str.equals("navigateToOutsideBrowser")) {
                        String string11 = StringUtils.getString(R.string.mini_permission_open_outside_browser_content);
                        Intrinsics.g(string11, "getString(R.string.mini_…_outside_browser_content)");
                        return string11;
                    }
                    break;
                case 1108651556:
                    if (str.equals("downloadFile")) {
                        String string12 = StringUtils.getString(R.string.mini_permission_file_download_content);
                        Intrinsics.g(string12, "getString(R.string.mini_…on_file_download_content)");
                        return string12;
                    }
                    break;
                case 1133114528:
                    if (str.equals("userLocation")) {
                        String string13 = StringUtils.getString(R.string.mini_permission_location_content);
                        Intrinsics.g(string13, "getString(R.string.mini_…mission_location_content)");
                        return string13;
                    }
                    break;
                case 1156181118:
                    if (str.equals("notifyMessage")) {
                        String string14 = StringUtils.getString(R.string.mini_permission_notifications_permission);
                        Intrinsics.g(string14, "getString(R.string.mini_…notifications_permission)");
                        return string14;
                    }
                    break;
                case 1306564012:
                    if (str.equals("openExternalApp")) {
                        String string15 = StringUtils.getString(R.string.mini_permission_open_external_app_content);
                        Intrinsics.g(string15, "getString(R.string.mini_…pen_external_app_content)");
                        return string15;
                    }
                    break;
                case 1511637752:
                    if (str.equals("readPhotosAlbum")) {
                        String string16 = StringUtils.getString(R.string.mini_permission_media_content);
                        Intrinsics.g(string16, "getString(R.string.mini_permission_media_content)");
                        return string16;
                    }
                    break;
                case 1862662092:
                    if (str.equals("navigateTo")) {
                        String string17 = StringUtils.getString(R.string.mini_permission_navigate_content);
                        Intrinsics.g(string17, "getString(R.string.mini_…mission_navigate_content)");
                        return string17;
                    }
                    break;
                case 1968882350:
                    if (str.equals("bluetooth")) {
                        String string18 = StringUtils.getString(R.string.mini_permission_bluetooth_content);
                        Intrinsics.g(string18, "getString(R.string.mini_…ission_bluetooth_content)");
                        return string18;
                    }
                    break;
            }
        }
        return str2 == null ? "" : str2;
    }

    public final ArrayList<ScopesV2Bean> OooO00o(Page page) {
        App app;
        AppModel appModel;
        PermissionModel permissions;
        if (page == null || (app = page.getApp()) == null || (appModel = app.getAppModel()) == null || (permissions = appModel.getPermissions()) == null) {
            return null;
        }
        return permissions.getScopesV2();
    }

    public final Pair<Boolean, Long> OooO00o(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            return new Pair<>(Boolean.valueOf(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, "scope_storageV2", "notifyMessage" + appId, false)), Long.valueOf(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, "scope_storageV2", "notifyMessage" + appId + "_time")));
        } catch (Throwable th2) {
            TmcLogger.e("ScopeUtils", th2);
            return new Pair<>(Boolean.FALSE, 0L);
        }
    }

    public final void OooO00o(Context context, String str, String str2, boolean z10) {
        ArrayList arrayList;
        Object next;
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "scope_storageV2", "key_allow_scope_list_" + str2);
        if (string == null || string.length() == 0) {
            arrayList = new ArrayList();
        } else {
            try {
                Object objFromJson = GsonUtils.fromJson(string, new TypeToken<ArrayList<PermissionInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$updatePermissionMiniappScopeData$authList$1
                }.getType());
                Intrinsics.g(objFromJson, "{\n                GsonUt…          )\n            }");
                arrayList = (ArrayList) objFromJson;
            } catch (Throwable unused) {
                arrayList = new ArrayList();
            }
        }
        ArrayList arrayList2 = arrayList;
        Iterator it = arrayList2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((PermissionInfoModel) next).getScopeName(), str));
        PermissionInfoModel permissionInfoModel = (PermissionInfoModel) next;
        if (permissionInfoModel == null) {
            ConcurrentHashMap<String, ScopeModel> concurrentHashMap = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0Oo;
            ScopeModel scopeModel = concurrentHashMap.get(str);
            if (scopeModel != null && scopeModel.getValidityTime() == 0) {
                return;
            }
            Long lValueOf = Long.valueOf(System.currentTimeMillis());
            Boolean boolValueOf = Boolean.valueOf(z10);
            ScopeModel scopeModel2 = concurrentHashMap.get(str);
            arrayList2.add(new PermissionInfoModel(str, "", lValueOf, boolValueOf, scopeModel2 != null ? Long.valueOf(scopeModel2.getValidityTime()) : null));
        } else {
            ConcurrentHashMap<String, ScopeModel> concurrentHashMap2 = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0Oo;
            ScopeModel scopeModel3 = concurrentHashMap2.get(str);
            if (scopeModel3 == null || scopeModel3.getValidityTime() != 0) {
                permissionInfoModel.setAuthStatus(Boolean.valueOf(z10));
                permissionInfoModel.setAuthTimeStamp(Long.valueOf(System.currentTimeMillis()));
                ScopeModel scopeModel4 = concurrentHashMap2.get(str);
                permissionInfoModel.setValidityTime(scopeModel4 != null ? Long.valueOf(scopeModel4.getValidityTime()) : null);
            } else {
                arrayList2.remove(permissionInfoModel);
            }
        }
        String json = GsonUtils.toJson(arrayList2, new TypeToken<ArrayList<PermissionInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$updatePermissionMiniappScopeData$updateAllowStr$1
        }.getType());
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "scope_storageV2", "key_allow_scope_list_" + str2, json);
    }

    public final void OooO00o(Context context, String str, String str2, boolean z10, String str3, String str4) {
        ArrayList arrayList;
        Object next;
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "scope_storageV2", str + "_key_appId_list");
        if (string == null || string.length() == 0) {
            arrayList = new ArrayList();
        } else {
            try {
                Object objFromJson = GsonUtils.fromJson(string, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$updatePermissionScopeAppIdList$appIdList$1
                }.getType());
                Intrinsics.g(objFromJson, "{\n                GsonUt…          )\n            }");
                arrayList = (ArrayList) objFromJson;
            } catch (Throwable unused) {
                arrayList = new ArrayList();
            }
        }
        ArrayList arrayList2 = arrayList;
        Iterator it = arrayList2.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((PermissionAppInfoModel) next).getAppId(), str2));
        PermissionAppInfoModel permissionAppInfoModel = (PermissionAppInfoModel) next;
        if (!z10) {
            if (permissionAppInfoModel != null) {
                if (Intrinsics.c(str, "notifyMessage")) {
                    permissionAppInfoModel.setAuthStatus(Boolean.FALSE);
                } else {
                    arrayList2.remove(permissionAppInfoModel);
                }
                String json = GsonUtils.toJson(arrayList2, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$updatePermissionScopeAppIdList$updateAllowStr$3
                }.getType());
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "scope_storageV2", str + "_key_appId_list", json);
                return;
            }
            return;
        }
        if (permissionAppInfoModel == null) {
            arrayList2.add(new PermissionAppInfoModel(str2, str, str3, str4, Long.valueOf(System.currentTimeMillis()), Boolean.TRUE));
            String json2 = GsonUtils.toJson(arrayList2, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$updatePermissionScopeAppIdList$updateAllowStr$1
            }.getType());
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "scope_storageV2", str + "_key_appId_list", json2);
            return;
        }
        permissionAppInfoModel.setAuthStatus(Boolean.TRUE);
        String json3 = GsonUtils.toJson(arrayList2, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$updatePermissionScopeAppIdList$updateAllowStr$2
        }.getType());
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "scope_storageV2", str + "_key_appId_list", json3);
    }

    @JvmOverloads
    public final void OooO00o(Context context, String scopeName, String appId, boolean z10, String str, String str2, boolean z11, boolean z12) {
        Intrinsics.h(context, "context");
        Intrinsics.h(scopeName, "scopeName");
        Intrinsics.h(appId, "appId");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, "scope_storageV2", scopeName + "_" + appId, z10);
        if (z10) {
            OooO0oO(context, scopeName, appId);
            OooO0O0(context, scopeName, appId, true);
        } else if (z11) {
            OooO0o(context, scopeName, appId);
        }
        if (Intrinsics.c(scopeName, "notifyMessage")) {
            OooO0o.OooO00o.OooO00o(context, appId, z10 ? "1" : "0");
        } else {
            OooO00o(context, scopeName, appId, z10);
        }
        ScopeModel scopeModel = com.cloud.tmc.miniapp.defaultimpl.OooO0O0.OooO0Oo.get(scopeName);
        if (scopeModel == null || scopeModel.getValidityTime() != 0 || z12) {
            OooO00o(context, scopeName, appId, z10, str, str2);
        }
    }

    public final void OooO00o(Context context, String appId, boolean z10) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putBoolean(context, "scope_storageV2", "notifyMessage" + appId, z10);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, "scope_storageV2", "notifyMessage" + appId + "_time", System.currentTimeMillis());
        } catch (Throwable th2) {
            TmcLogger.e("ScopeUtils", th2);
        }
    }

    public final void OooO00o(ConcurrentHashMap<String, ScopeModel> SHOW_SCOPE_MAP, ConcurrentHashMap<String, String> SHOW_PERMISSION_DIALOG_API_MAP) {
        Intrinsics.h(SHOW_SCOPE_MAP, "SHOW_SCOPE_MAP");
        Intrinsics.h(SHOW_PERMISSION_DIALOG_API_MAP, "SHOW_PERMISSION_DIALOG_API_MAP");
        Object objFromJson = GsonUtils.fromJson(ScopePermissionHelper.INSTANCE.getPresetScopeStr(), new TypeToken<ArrayList<ScopeModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$initScopeData$defaultScopeList$1
        }.getType());
        Intrinsics.g(objFromJson, "fromJson(\n            pr…del>>() {}.type\n        )");
        for (ScopeModel scopeModel : (ArrayList) objFromJson) {
            String scopeName = scopeModel.getScopeName();
            if (scopeName == null) {
                scopeName = "";
            }
            SHOW_SCOPE_MAP.put(scopeName, scopeModel);
            List<String> apis = scopeModel.getApis();
            if (apis != null) {
                for (String str : apis) {
                    try {
                        String scopeName2 = scopeModel.getScopeName();
                        if (scopeName2 == null) {
                            scopeName2 = "";
                        }
                        SHOW_PERMISSION_DIALOG_API_MAP.put(str, scopeName2);
                    } catch (Throwable unused) {
                        TmcLogger.e("ScopeUtils", str + "," + scopeModel.getScopeName());
                    }
                }
            }
        }
    }

    public final boolean OooO00o(Context context, String scopeName, long j11, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(scopeName, "scopeName");
        Intrinsics.h(appId, "appId");
        if (j11 == 0 || !OooO0OO(context, scopeName, appId)) {
            return false;
        }
        if (j11 == -1) {
            return true;
        }
        return System.currentTimeMillis() - OooO0Oo(context, scopeName, appId) <= j11;
    }

    public final boolean OooO00o(Context context, String scopeName, String appId) {
        ArrayList arrayList;
        Object next;
        Intrinsics.h(context, "context");
        Intrinsics.h(scopeName, "scopeName");
        Intrinsics.h(appId, "appId");
        String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "scope_storageV2", scopeName + "_key_appId_list");
        if (string == null || string.length() == 0) {
            arrayList = new ArrayList();
        } else {
            try {
                Object objFromJson = GsonUtils.fromJson(string, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$checkPermissionScopeInAppList$appIdList$1
                }.getType());
                Intrinsics.g(objFromJson, "{\n                GsonUt…          )\n            }");
                arrayList = (ArrayList) objFromJson;
            } catch (Throwable unused) {
                arrayList = new ArrayList();
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((PermissionAppInfoModel) next).getAppId(), appId));
        return ((PermissionAppInfoModel) next) != null;
    }

    public final int OooO0O0(Context context, String str, String str2) {
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getInt(context, "scope_storageV2", str + "_" + str2 + "_timeStamp_failed_count");
    }

    public final String OooO0O0(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "scope_storageV2", "key_allow_scope_list_" + appId);
            return string == null ? "" : string;
        } catch (Throwable th2) {
            TmcLogger.e("ScopeUtils", th2);
            return "";
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final String OooO0O0(String str, String str2) {
        if (str != null) {
            switch (str.hashCode()) {
                case -1600397930:
                    if (str.equals("clipboard")) {
                        String string = StringUtils.getString(R.string.mini_permission_clipboard);
                        Intrinsics.g(string, "getString(R.string.mini_permission_clipboard)");
                        return string;
                    }
                    break;
                case -1407612381:
                    if (str.equals("athena")) {
                        String string2 = StringUtils.getString(R.string.mini_permission_athena);
                        Intrinsics.g(string2, "getString(R.string.mini_permission_athena)");
                        return string2;
                    }
                    break;
                case -1367751899:
                    if (str.equals("camera")) {
                        String string3 = StringUtils.getString(R.string.mini_permission_camera);
                        Intrinsics.g(string3, "getString(R.string.mini_permission_camera)");
                        return string3;
                    }
                    break;
                case -1029520148:
                    if (str.equals("phoneCall")) {
                        String string4 = StringUtils.getString(R.string.mini_permission_phone_desc);
                        Intrinsics.g(string4, "getString(R.string.mini_permission_phone_desc)");
                        return string4;
                    }
                    break;
                case -891002358:
                    if (str.equals(LauncherMiniAppConfigHelper.KEY_SCAN_CODE_CONFIG)) {
                        String string5 = StringUtils.getString(R.string.mini_permission_scanner);
                        Intrinsics.g(string5, "getString(R.string.mini_permission_scanner)");
                        return string5;
                    }
                    break;
                case -799233858:
                    if (str.equals(RecorderConstants.RECORDER_DIR)) {
                        String string6 = StringUtils.getString(R.string.mini_permission_record);
                        Intrinsics.g(string6, "getString(R.string.mini_permission_record)");
                        return string6;
                    }
                    break;
                case -416447130:
                    if (str.equals("screenshot")) {
                        String string7 = StringUtils.getString(R.string.mini_permission_screenshot);
                        Intrinsics.g(string7, "getString(R.string.mini_permission_screenshot)");
                        return string7;
                    }
                    break;
                case -243495139:
                    if (str.equals("uploadFile")) {
                        String string8 = StringUtils.getString(R.string.mini_permission_file_uploads);
                        Intrinsics.g(string8, "getString(R.string.mini_permission_file_uploads)");
                        return string8;
                    }
                    break;
                case 114009:
                    if (str.equals("sms")) {
                        String string9 = StringUtils.getString(R.string.mini_permission_sms_desc);
                        Intrinsics.g(string9, "getString(R.string.mini_permission_sms_desc)");
                        return string9;
                    }
                    break;
                case 3649301:
                    if (str.equals("wifi")) {
                        String string10 = StringUtils.getString(R.string.mini_permission_wifi);
                        Intrinsics.g(string10, "getString(R.string.mini_permission_wifi)");
                        return string10;
                    }
                    break;
                case 706349231:
                    if (str.equals("navigateToOutsideBrowser")) {
                        String string11 = StringUtils.getString(R.string.mini_permission_open_outside_browser);
                        Intrinsics.g(string11, "getString(R.string.mini_…ion_open_outside_browser)");
                        return string11;
                    }
                    break;
                case 1108651556:
                    if (str.equals("downloadFile")) {
                        String string12 = StringUtils.getString(R.string.mini_permission_file_download);
                        Intrinsics.g(string12, "getString(R.string.mini_permission_file_download)");
                        return string12;
                    }
                    break;
                case 1133114528:
                    if (str.equals("userLocation")) {
                        String string13 = StringUtils.getString(R.string.mini_permission_location_desc);
                        Intrinsics.g(string13, "getString(R.string.mini_permission_location_desc)");
                        return string13;
                    }
                    break;
                case 1156181118:
                    if (str.equals("notifyMessage")) {
                        String string14 = StringUtils.getString(R.string.mini_permission_notifications_content);
                        Intrinsics.g(string14, "getString(R.string.mini_…on_notifications_content)");
                        return string14;
                    }
                    break;
                case 1306564012:
                    if (str.equals("openExternalApp")) {
                        String string15 = StringUtils.getString(R.string.mini_permission_open_external_app);
                        Intrinsics.g(string15, "getString(R.string.mini_…ission_open_external_app)");
                        return string15;
                    }
                    break;
                case 1511637752:
                    if (str.equals("readPhotosAlbum")) {
                        String string16 = StringUtils.getString(R.string.mini_permission_media_desc);
                        Intrinsics.g(string16, "getString(R.string.mini_permission_media_desc)");
                        return string16;
                    }
                    break;
                case 1862662092:
                    if (str.equals("navigateTo")) {
                        String string17 = StringUtils.getString(R.string.mini_permission_navigate_content);
                        Intrinsics.g(string17, "getString(R.string.mini_…mission_navigate_content)");
                        return string17;
                    }
                    break;
                case 1968882350:
                    if (str.equals("bluetooth")) {
                        String string18 = StringUtils.getString(R.string.mini_permission_bluetooth);
                        Intrinsics.g(string18, "getString(R.string.mini_permission_bluetooth)");
                        return string18;
                    }
                    break;
            }
        }
        return str2 == null ? "" : str2;
    }

    public final void OooO0O0(Context context, String str, String str2, boolean z10) {
        int iOooO0O0;
        long jOooO0o0 = OooO0o0(context, str, str2);
        if (z10) {
            iOooO0O0 = 0;
        } else {
            long jCurrentTimeMillis = System.currentTimeMillis() - jOooO0o0;
            iOooO0O0 = 1;
            if (jCurrentTimeMillis <= 1800000) {
                iOooO0O0 = 1 + OooO0O0(context, str, str2);
            }
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putInt(context, "scope_storageV2", str + "_" + str2 + "_timeStamp_failed_count", iOooO0O0);
    }

    public final void OooO0OO(Context context, String miniappId) {
        ArrayList<PermissionInfoModel> arrayList;
        ArrayList arrayList2;
        Object next;
        Intrinsics.h(context, "context");
        Intrinsics.h(miniappId, "miniappId");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "miniMsgProvider", "msg_switch_" + miniappId);
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", "notifyMessage_" + miniappId);
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", "notifyMessage_" + miniappId + "_timeStamp_success");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", "notifyMessage_" + miniappId + "_timeStamp_failed");
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", "notifyMessage_" + miniappId + "_timeStamp_failed_count");
        String strOooO0O0 = OooO0O0(context, miniappId);
        if (strOooO0O0.length() == 0) {
            TmcLogger.d("ScopeUtils", "permission Data is null");
            return;
        }
        try {
            Object objFromJson = GsonUtils.fromJson(strOooO0O0, new TypeToken<ArrayList<PermissionInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$removePermissionData$authList$1
            }.getType());
            Intrinsics.g(objFromJson, "{\n            GsonUtils.…e\n            )\n        }");
            arrayList = (ArrayList) objFromJson;
        } catch (Throwable unused) {
            arrayList = new ArrayList();
        }
        for (PermissionInfoModel permissionInfoModel : arrayList) {
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", permissionInfoModel.getScopeName() + "_" + miniappId + "_timeStamp_success");
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", permissionInfoModel.getScopeName() + "_" + miniappId);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", permissionInfoModel.getScopeName() + "_" + miniappId + "_timeStamp_failed");
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", permissionInfoModel.getScopeName() + "_" + miniappId + "_timeStamp_failed_count");
            String scopeName = permissionInfoModel.getScopeName();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("remove scope permission ->");
            sb2.append(scopeName);
            TmcLogger.d("ScopeUtils", sb2.toString());
            String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "scope_storageV2", permissionInfoModel.getScopeName() + "_key_appId_list");
            if (string == null || string.length() == 0) {
                arrayList2 = new ArrayList();
            } else {
                try {
                    Object objFromJson2 = GsonUtils.fromJson(string, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$removePermissionData$1$appIdList$1
                    }.getType());
                    Intrinsics.g(objFromJson2, "{\n                    Gs…      )\n                }");
                    arrayList2 = (ArrayList) objFromJson2;
                } catch (Throwable unused2) {
                    arrayList2 = new ArrayList();
                }
            }
            Iterator it = arrayList2.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((PermissionAppInfoModel) next).getAppId(), miniappId));
            PermissionAppInfoModel permissionAppInfoModel = (PermissionAppInfoModel) next;
            if (permissionAppInfoModel != null) {
                arrayList2.remove(permissionAppInfoModel);
                TmcLogger.d("ScopeUtils", "find and remove scope " + permissionInfoModel.getScopeName());
                String json = GsonUtils.toJson(arrayList2, new TypeToken<ArrayList<PermissionAppInfoModel>>() { // from class: com.cloud.tmc.miniapp.utils.ScopeUtils$removePermissionData$1$updateAllowStr$1
                }.getType());
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(context, "scope_storageV2", permissionInfoModel.getScopeName() + "_key_appId_list", json);
            } else {
                TmcLogger.d("ScopeUtils", miniappId + " is not allow " + permissionInfoModel.getScopeName() + " scope ");
            }
        }
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).remove(context, "scope_storageV2", "key_allow_scope_list_" + miniappId);
    }

    public final boolean OooO0OO(Context context, String str, String str2) {
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getBoolean(context, "scope_storageV2", str + "_" + str2, false);
    }

    public final long OooO0Oo(Context context, String scopeName, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(scopeName, "scopeName");
        Intrinsics.h(appId, "appId");
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, "scope_storageV2", scopeName + "_" + appId + "_timeStamp_success");
    }

    public final void OooO0o(Context context, String str, String str2) {
        OooO0O0(context, str, str2, false);
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, "scope_storageV2", str + "_" + str2 + "_timeStamp_failed", System.currentTimeMillis());
    }

    public final long OooO0o0(Context context, String str, String str2) {
        return ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getLong(context, "scope_storageV2", str + "_" + str2 + "_timeStamp_failed");
    }

    public final void OooO0oO(Context context, String str, String str2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putLong(context, "scope_storageV2", str + "_" + str2 + "_timeStamp_success", jCurrentTimeMillis);
        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
        Bundle bundle = new Bundle();
        bundle.putString("allowScopeName", str);
        bundle.putLong("allowTimeStamp", jCurrentTimeMillis);
        bundle.putString("authAppId", str2);
        Unit unit = Unit.f67061a;
        performanceAnalyseProxy.recordForCommon(str2, TmcConstants.REPORTER_SCOPE_AHTH, bundle);
    }
}
