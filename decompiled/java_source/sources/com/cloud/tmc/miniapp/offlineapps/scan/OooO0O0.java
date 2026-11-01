package com.cloud.tmc.miniapp.offlineapps.scan;

import android.app.Application;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.AppInfoModel;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.AppStoreInfo;
import com.cloud.tmc.integration.model.ClassificationInfo;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.utils.LatestUseUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniapp.offlineapps.OfflineAppBean;
import com.cloud.tmc.miniapp.offlineapps.OfflineAppType;
import com.cloud.tmc.miniapp.offlineapps.OfflineDownloadAppBean;
import com.cloud.tmc.miniapp.offlineapps.ScanScene;
import com.cloud.tmc.miniapp.offlineapps.ScanType;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.offline.download.OfflineManager;
import com.cloud.tmc.offline.download.model.OffPkgConfig;
import com.cloud.tmc.offline.download.model.OfflinePkgCachePath;
import com.cloud.tmc.offline.download.model.ZipFileInfo;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class OooO0O0 {
    public static Application OooO0O0;
    public static int OooO0oo;
    public static final OooO0O0 OooO00o = new OooO0O0();
    public static final Map<String, com.cloud.tmc.miniapp.offlineapps.scan.OooO00o> OooO0OO = new LinkedHashMap();
    public static final Map<String, OfflineAppBean> OooO0Oo = new LinkedHashMap();
    public static String OooO0o0 = "";
    public static String OooO0o = "";
    public static String OooO0oO = "";
    public static final ThreadPoolExecutor OooO = new ThreadPoolExecutor(1, 1, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(1), new OooO0o(), new OooO0OO());

    public static final class OooO00o implements com.cloud.tmc.miniapp.offlineapps.download.OooO00o {
        @Override // com.cloud.tmc.miniapp.offlineapps.download.OooO00o
        public void OooO00o(String appId, String logoUrl, String path) {
            Intrinsics.h(appId, "appId");
            Intrinsics.h(logoUrl, "logoUrl");
            Intrinsics.h(path, "path");
            try {
                Map<String, OfflineAppBean> map = OooO0O0.OooO0Oo;
                OfflineAppBean offlineAppBean = (OfflineAppBean) ((LinkedHashMap) map).get(appId);
                if (Intrinsics.c(offlineAppBean != null ? offlineAppBean.getLogoUrl() : null, logoUrl)) {
                    OfflineAppBean offlineAppBean2 = (OfflineAppBean) ((LinkedHashMap) map).get(appId);
                    if (Intrinsics.c(offlineAppBean2 != null ? offlineAppBean2.getLogoPath() : null, path)) {
                        return;
                    }
                    OfflineAppBean offlineAppBean3 = (OfflineAppBean) ((LinkedHashMap) map).get(appId);
                    if (offlineAppBean3 != null) {
                        offlineAppBean3.setLogoPath(path);
                    }
                    OooO0O0.OooO00o.OooO0OO();
                }
            } catch (Throwable th2) {
                OooO0O0 oooO0O0 = OooO0O0.OooO00o;
                TmcLogger.e("OooO0O0", "[IconDownloadManager] download icon fail", th2);
            }
        }
    }

    public static final void OooO00o() {
        Map<? extends String, ? extends OfflineAppBean> linkedHashMap;
        Map<String, OfflineAppBean> map = OooO0Oo;
        ((LinkedHashMap) map).clear();
        try {
            Application application = OooO0O0;
            if (application != null) {
                linkedHashMap = (Map) GsonUtils.fromJson(((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(application, "offlineScan", "offlineScanApps"), new TypeToken<Map<String, OfflineAppBean>>() { // from class: com.cloud.tmc.miniapp.offlineapps.scan.ScanManager$getOfflineAppsFromMMKV$1$1
                }.getType());
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap<>();
                }
            } else {
                linkedHashMap = new LinkedHashMap<>();
            }
        } catch (Throwable th2) {
            TmcLogger.e("OooO0O0", "[getOfflineAppsFromMMKV] error", th2);
        }
        map.putAll(linkedHashMap);
    }

    public static final void OooO0Oo() {
        try {
            OooO0O0 oooO0O0 = OooO00o;
            oooO0O0.OooO0O0();
            oooO0O0.OooO0o0();
        } catch (Throwable th2) {
            TmcLogger.e("OooO0O0", "[scan] fail", th2);
        }
    }

    public final OfflineAppBean OooO00o(OfflineDownloadAppBean offlineDownloadAppBean) {
        List<ZipFileInfo> zipFileInfo;
        ZipFileInfo zipFileInfo2;
        String version;
        String logo;
        AppInfoModel appInfo;
        AppInfoModel appInfo2;
        AppInfoModel appInfo3;
        AppInfoModel appInfo4;
        AppInfoModel appInfo5;
        AppInfoModel appInfo6;
        AppInfoModel appInfo7;
        OfflinePkgCachePath offlinePkgFwCachePath = OfflineManager.getOfflinePkgFwCachePath(offlineDownloadAppBean.getAppId());
        List<ClassificationInfo> classification = null;
        if (offlinePkgFwCachePath == null || (zipFileInfo = offlinePkgFwCachePath.getZipFileInfo()) == null || (zipFileInfo2 = (ZipFileInfo) CollectionsKt.i0(zipFileInfo)) == null) {
            return null;
        }
        String str = zipFileInfo2.getZipUnCompressPath() + "/" + offlineDownloadAppBean.getAppId() + ".zip";
        OffPkgConfig manifest = zipFileInfo2.getManifest();
        if (manifest == null || (version = manifest.getVersion()) == null) {
            return null;
        }
        boolean zC = Intrinsics.c(str, offlineDownloadAppBean.getZipPath());
        TmcLogger.d("OooO0O0", "[checkOfflineDownloadAppIsValid]->validOfflineDownloadZipPath:" + str + ", offlineDownloadAppBean.zipPath:" + offlineDownloadAppBean.getZipPath() + ", appId:" + offlineDownloadAppBean.getAppId() + ", valid:" + zC);
        if (!zC) {
            return null;
        }
        String appId = offlineDownloadAppBean.getAppId();
        OffPkgConfig manifest2 = zipFileInfo2.getManifest();
        String name = (manifest2 == null || (appInfo7 = manifest2.getAppInfo()) == null) ? null : appInfo7.getName();
        OfflineAppType offlineAppType = OfflineAppType.OFFLINE_DOWNLOAD;
        OffPkgConfig manifest3 = zipFileInfo2.getManifest();
        String logo2 = (manifest3 == null || (appInfo6 = manifest3.getAppInfo()) == null) ? null : appInfo6.getLogo();
        OffPkgConfig manifest4 = zipFileInfo2.getManifest();
        Integer numValueOf = (manifest4 == null || (appInfo5 = manifest4.getAppInfo()) == null) ? null : Integer.valueOf(appInfo5.getAppinfoCategoryType());
        OffPkgConfig manifest5 = zipFileInfo2.getManifest();
        String desc = (manifest5 == null || (appInfo4 = manifest5.getAppInfo()) == null) ? null : appInfo4.getDesc();
        com.cloud.tmc.miniapp.offlineapps.download.OooO0O0 oooO0O0 = com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO00o;
        String appId2 = offlineDownloadAppBean.getAppId();
        OffPkgConfig manifest6 = zipFileInfo2.getManifest();
        if (manifest6 == null || (appInfo3 = manifest6.getAppInfo()) == null || (logo = appInfo3.getLogo()) == null) {
            logo = "";
        }
        String strOooO0OO = oooO0O0.OooO0OO(appId2, logo);
        OffPkgConfig manifest7 = zipFileInfo2.getManifest();
        List<String> classificationNames = (manifest7 == null || (appInfo2 = manifest7.getAppInfo()) == null) ? null : appInfo2.getClassificationNames();
        OffPkgConfig manifest8 = zipFileInfo2.getManifest();
        if (manifest8 != null && (appInfo = manifest8.getAppInfo()) != null) {
            classification = appInfo.getClassification();
        }
        return new OfflineAppBean(appId, version, name, offlineAppType, logo2, strOooO0OO, numValueOf, desc, 0L, classificationNames, classification, 256, null);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x008a  */
    /* JADX WARN: Code duplicated, block: B:33:? A[RETURN, SYNTHETIC] */
    public final OfflineDownloadAppBean OooO00o(String str) {
        File[] fileArrListFiles;
        String strQ;
        String absolutePath;
        String name;
        TmcLogger.d("OooO0O0", "[getOfflineDownloadAppPath]->scanPath:" + str);
        File file = new File(str);
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return null;
        }
        boolean z10 = false;
        for (File file2 : fileArrListFiles) {
            if (file2 != null && (name = file2.getName()) != null && StringsKt.G(name, ".zip", false, 2, null)) {
                String name2 = file2.getName();
                Intrinsics.g(name2, "i.name");
                if (!Intrinsics.c("100000", StringsKt.Q(name2, ".zip", "", false, 4, null))) {
                    String name3 = file2.getName();
                    Intrinsics.g(name3, "i.name");
                    strQ = StringsKt.Q(name3, ".zip", "", false, 4, null);
                    absolutePath = file2.getAbsolutePath();
                    Intrinsics.g(absolutePath, "i.absolutePath");
                    z10 = true;
                    if (z10) {
                        return new OfflineDownloadAppBean(strQ, absolutePath);
                    }
                    return null;
                }
            }
        }
        strQ = "";
        absolutePath = "";
        if (z10) {
            return new OfflineDownloadAppBean(strQ, absolutePath);
        }
        return null;
    }

    public final void OooO00o(Application application) {
        Intrinsics.h(application, "application");
        TmcLogger.d("OooO0O0", "[ScanManager] init");
        OooO0O0 = application;
        OooO0oo = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigInt(LauncherMiniAppConfigHelper.KEY_OFFLINE_APPS_SCAN_LEVEL, 0);
        OooO.submit(new Runnable() { // from class: com.cloud.tmc.miniapp.offlineapps.scan.a
            @Override // java.lang.Runnable
            public final void run() {
                OooO0O0.OooO00o();
            }
        });
        String rootFilePath = ((PathProxy) TmcProxy.get(PathProxy.class)).getRootFilePath();
        Intrinsics.g(rootFilePath, "get(PathProxy::class.java).rootFilePath");
        OooO0o0 = rootFilePath;
        String rootDownloadPath = ((PathProxy) TmcProxy.get(PathProxy.class)).getRootDownloadPath();
        Intrinsics.g(rootDownloadPath, "get(PathProxy::class.java).rootDownloadPath");
        OooO0o = rootDownloadPath;
        String rootMiniAppPath = ((PathProxy) TmcProxy.get(PathProxy.class)).getRootMiniAppPath();
        Intrinsics.g(rootMiniAppPath, "get(PathProxy::class.java).rootMiniAppPath");
        OooO0oO = rootMiniAppPath;
        com.cloud.tmc.miniapp.offlineapps.download.OooO0O0 oooO0O0 = com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO00o;
        OooO00o listener = new OooO00o();
        Intrinsics.h(listener, "listener");
        com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO0OO = listener;
    }

    public final void OooO00o(OfflineAppBean offlineAppBean) {
        TmcLogger.d("OooO0O0", "[checkLogoPath] appId:" + offlineAppBean.getAppId() + ", logoUrl:" + offlineAppBean.getLogoUrl() + ", logoPath:" + offlineAppBean.getLogoPath());
        String logoPath = offlineAppBean.getLogoPath();
        if (logoPath == null || logoPath.length() == 0) {
            com.cloud.tmc.miniapp.offlineapps.download.OooO0O0 oooO0O0 = com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO00o;
            String appId = offlineAppBean.getAppId();
            String logoUrl = offlineAppBean.getLogoUrl();
            if (logoUrl == null) {
                logoUrl = "";
            }
            oooO0O0.OooO00o(appId, logoUrl);
        }
    }

    public final void OooO00o(Map<String, OfflineAppBean> map, Map<String, OfflineAppBean> map2) {
        String version;
        for (Map.Entry<String, OfflineAppBean> entry : map2.entrySet()) {
            if (map.containsKey(entry.getKey())) {
                String version2 = entry.getValue().getVersion();
                String str = "";
                if (version2 == null) {
                    version2 = "";
                }
                OfflineAppBean offlineAppBean = map.get(entry.getKey());
                if (offlineAppBean != null && (version = offlineAppBean.getVersion()) != null) {
                    str = version;
                }
                if (MiniAppLaunch.INSTANCE.compareVersion(version2, str)) {
                    map.put(entry.getKey(), entry.getValue());
                }
            } else {
                map.put(entry.getKey(), entry.getValue());
            }
        }
    }

    public final void OooO00o(boolean z10, ScanScene scanScene, com.cloud.tmc.miniapp.offlineapps.scan.OooO00o oooO00o) {
        com.cloud.tmc.miniapp.offlineapps.scan.OooO00o oooO00o2;
        Intrinsics.h(scanScene, "scanScene");
        boolean z11 = true;
        if (!((ConfigService) TmcProxy.get(ConfigService.class)).getConfigBoolean(LauncherMiniAppConfigHelper.KEY_OFFLINE_APPS_ABILITY_SWITCH, true)) {
            TmcLogger.d("OooO0O0", "[scan] offlineAppsAbilitySwitch is close");
            if (oooO00o != null) {
                oooO00o.result(CollectionsKt.l());
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (z10) {
            arrayList.addAll(((LinkedHashMap) OooO0Oo).values());
            TmcLogger.d("OooO0O0", "[sendResult] fromCache scene:" + scanScene + " result:" + GsonUtils.toJson(arrayList));
            if (oooO00o != null) {
                oooO00o.result(arrayList);
            }
            oooO00o2 = null;
        } else {
            oooO00o2 = oooO00o;
        }
        OooO0OO.put(scanScene + "_" + (oooO00o != null ? oooO00o.hashCode() : 0), oooO00o2);
        int i11 = OooO0oo;
        boolean z12 = i11 == ScanType.LEVEL_0.getType() || i11 != ScanType.LEVEL_1.getType() || scanScene.getType() >= ScanScene.SCAN_PINFORLATER.getType();
        if (z10 && !z12) {
            z11 = false;
        }
        TmcLogger.d("OooO0O0", "[scan] needScan:" + z11 + ", isCache:" + z10 + ", scanScene:" + scanScene);
        if (z11) {
            OooO.submit(new Runnable() { // from class: com.cloud.tmc.miniapp.offlineapps.scan.b
                @Override // java.lang.Runnable
                public final void run() {
                    OooO0O0.OooO0Oo();
                }
            });
        }
    }

    public final Map<String, OfflineAppBean> OooO0O0(String str) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        File file;
        File[] fileArrListFiles3;
        OfflineAppBean offlineAppBeanOooO00o;
        TmcLogger.d("OooO0O0", "[scanOfflineDownloadAppsModeDownload]->scanPath:" + str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        File file2 = new File(str);
        if (!file2.exists() || !file2.isDirectory() || (fileArrListFiles = file2.listFiles()) == null) {
            return linkedHashMap;
        }
        for (File file3 : fileArrListFiles) {
            if (file3 != null && file3.isDirectory() && (fileArrListFiles2 = file3.listFiles()) != null && fileArrListFiles2.length != 0 && (file = (File) ArraysKt.V(fileArrListFiles2)) != null && file.exists() && file.isDirectory() && (fileArrListFiles3 = file.listFiles()) != null) {
                for (File file4 : fileArrListFiles3) {
                    String absolutePath = file4.getAbsolutePath();
                    Intrinsics.g(absolutePath, "j.absolutePath");
                    OfflineDownloadAppBean offlineDownloadAppBeanOooO00o = OooO00o(absolutePath);
                    if (offlineDownloadAppBeanOooO00o != null && (offlineAppBeanOooO00o = OooO00o(offlineDownloadAppBeanOooO00o)) != null) {
                        linkedHashMap.put(offlineAppBeanOooO00o.getAppId(), offlineAppBeanOooO00o);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public final void OooO0O0() {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (OooO0o0.length() != 0) {
                OooO00o(linkedHashMap, OooO0OO(OooO0o0));
            }
            if (OooO0o.length() != 0) {
                OooO00o(linkedHashMap, OooO0O0(OooO0o));
            }
            if (OooO0oO.length() != 0) {
                OooO00o(linkedHashMap, OooO0Oo(OooO0oO));
            }
            TmcLogger.d("OooO0O0", "[realScan] result:" + GsonUtils.toJson(linkedHashMap));
            Map<String, OfflineAppBean> map = OooO0Oo;
            ((LinkedHashMap) map).clear();
            map.putAll(linkedHashMap);
        } catch (Throwable th2) {
            TmcLogger.e("OooO0O0", "[realScan] fail", th2);
        }
    }

    public final Map<String, OfflineAppBean> OooO0OO(String str) {
        File[] fileArrListFiles;
        File[] fileArrListFiles2;
        File file;
        File[] fileArrListFiles3;
        OfflineAppBean offlineAppBeanOooO00o;
        TmcLogger.d("OooO0O0", "[scanOfflineDownloadAppsModeFiles]->scanPath:" + str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        File file2 = new File(str);
        if (!file2.exists() || !file2.isDirectory() || (fileArrListFiles = file2.listFiles()) == null) {
            return linkedHashMap;
        }
        for (File file3 : fileArrListFiles) {
            if (file3 != null && file3.isDirectory()) {
                File file4 = new File(file3.getAbsolutePath() + "/temp_data");
                if (file4.exists() && file4.isDirectory() && (fileArrListFiles2 = file4.listFiles()) != null && fileArrListFiles2.length != 0 && (file = (File) ArraysKt.V(fileArrListFiles2)) != null && file.exists() && file.isDirectory() && (fileArrListFiles3 = file.listFiles()) != null) {
                    for (File file5 : fileArrListFiles3) {
                        String absolutePath = file5.getAbsolutePath();
                        Intrinsics.g(absolutePath, "j.absolutePath");
                        OfflineDownloadAppBean offlineDownloadAppBeanOooO00o = OooO00o(absolutePath);
                        if (offlineDownloadAppBeanOooO00o != null && (offlineAppBeanOooO00o = OooO00o(offlineDownloadAppBeanOooO00o)) != null) {
                            linkedHashMap.put(offlineAppBeanOooO00o.getAppId(), offlineAppBeanOooO00o);
                        }
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public final void OooO0OO() {
        try {
            Application application = OooO0O0;
            if (application != null) {
                ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).putString(application, "offlineScan", "offlineScanApps", GsonUtils.toJson(OooO0Oo));
            }
        } catch (Throwable th2) {
            TmcLogger.e("OooO0O0", "[saveOfflineAppsToMMKV] error", th2);
        }
    }

    public final Map<String, OfflineAppBean> OooO0Oo(String str) {
        File[] fileArrListFiles;
        AppModel appModelFromUsed;
        File[] fileArrListFiles2;
        File[] fileArrListFiles3;
        TmcLogger.d("OooO0O0", "[scanUsedApps]->scanPath:" + str);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        File file = new File(str);
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return linkedHashMap;
        }
        for (File file2 : fileArrListFiles) {
            if (file2 != null && file2.isDirectory() && !Intrinsics.c("100000", file2.getName())) {
                String appId = file2.getName();
                Application application = OooO0O0;
                if (application != null && (appModelFromUsed = ((TmcAppInfoManager) TmcProxy.get(TmcAppInfoManager.class)).getAppModelFromUsed(application, appId)) != null && (fileArrListFiles2 = file2.listFiles()) != null) {
                    for (File file3 : fileArrListFiles2) {
                        if (file3 != null && file3.isDirectory() && (fileArrListFiles3 = file3.listFiles()) != null && fileArrListFiles3.length != 0) {
                            String name = file3.getName();
                            boolean zC = Intrinsics.c(appModelFromUsed.getPackageUrl_MD5(), name);
                            TmcLogger.d("OooO0O0", "[scanUsedApps]->versionFilePath:" + name + ", packageUrl_MD5:" + appModelFromUsed.getPackageUrl_MD5() + ", appId:" + appId + ", valid:" + zC);
                            if (zC) {
                                Intrinsics.g(appId, "appId");
                                String deployVersion = appModelFromUsed.getDeployVersion();
                                String name2 = appModelFromUsed.getName();
                                OfflineAppType offlineAppType = OfflineAppType.USED;
                                String logo = appModelFromUsed.getLogo();
                                int appinfoCategoryType = appModelFromUsed.getAppinfoCategoryType();
                                String desc = appModelFromUsed.getDesc();
                                com.cloud.tmc.miniapp.offlineapps.download.OooO0O0 oooO0O0 = com.cloud.tmc.miniapp.offlineapps.download.OooO0O0.OooO00o;
                                String logo2 = appModelFromUsed.getLogo();
                                if (logo2 == null) {
                                    logo2 = "";
                                }
                                linkedHashMap.put(appId, new OfflineAppBean(appId, deployVersion, name2, offlineAppType, logo, oooO0O0.OooO0OO(appId, logo2), Integer.valueOf(appinfoCategoryType), desc, 0L, appModelFromUsed.getClassificationNames(), appModelFromUsed.getClassification(), 256, null));
                                break;
                            }
                        }
                    }
                }
            }
        }
        return linkedHashMap;
    }

    public final void OooO0o0() {
        OfflineAppBean offlineAppBean;
        try {
            if (OooO.getQueue().isEmpty()) {
                OooO0OO();
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.putAll(OooO0Oo);
                LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                Map<String, com.cloud.tmc.miniapp.offlineapps.scan.OooO00o> map = OooO0OO;
                linkedHashMap2.putAll(map);
                ((LinkedHashMap) map).clear();
                ArrayList arrayList = new ArrayList();
                List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
                if (latestUseApps == null) {
                    latestUseApps = CollectionsKt.l();
                }
                for (AppStoreInfo appStoreInfo : latestUseApps) {
                    String appId = appStoreInfo.getAppId();
                    if (appId != null && (offlineAppBean = (OfflineAppBean) linkedHashMap.get(appId)) != null) {
                        offlineAppBean.setOpenTimestamp(appStoreInfo.getSaveTime());
                        arrayList.add(offlineAppBean);
                        linkedHashMap.remove(appId);
                        OooO00o(offlineAppBean);
                    }
                }
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    OooO00o.OooO00o((OfflineAppBean) ((Map.Entry) it.next()).getValue());
                }
                arrayList.addAll(linkedHashMap.values());
                ArrayList arrayList2 = new ArrayList();
                Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_OFFLINE_APPS_LIST, LauncherMiniAppConfigHelper.DEFAULT_OFFLINE_APPS_LIST), (Class<Object>) List.class);
                List arrayList3 = objFromJson instanceof List ? (List) objFromJson : null;
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                }
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (arrayList3.contains(((OfflineAppBean) arrayList.get(i11)).getAppId())) {
                        arrayList2.add(arrayList.get(i11));
                    }
                }
                for (Map.Entry entry : linkedHashMap2.entrySet()) {
                    String str = (String) entry.getKey();
                    com.cloud.tmc.miniapp.offlineapps.scan.OooO00o oooO00o = (com.cloud.tmc.miniapp.offlineapps.scan.OooO00o) entry.getValue();
                    TmcLogger.d("OooO0O0", "[sendResult] fromSync scene:" + str + " needScanResult:" + (oooO00o != null));
                    if (oooO00o != null) {
                        oooO00o.result(arrayList2);
                    }
                }
            }
        } catch (Throwable th2) {
            TmcLogger.e("OooO0O0", "[sendResult] fail", th2);
        }
    }
}
