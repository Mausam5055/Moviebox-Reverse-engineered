package com.cloud.tmc.integration.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.kernel.constants.MiniAppType;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.intf.ISDKConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.utils.AppDynamicBuildConfig;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.miniutils.util.EncodeUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ*\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ*\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bJ\"\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\"\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ0\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\u000bJ\b\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0015\u001a\u00020\bH\u0002J\n\u0010\u0016\u001a\u0004\u0018\u00010\bH\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u000e\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bJ\u0014\u0010\u001c\u001a\u00020\u0004*\u00020\u001d2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u001e"}, d2 = {"Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;", "", "()V", "changeTarUnCompressStatus", "", "context", "Landroid/content/Context;", "appId", "", "uniqueIdentificationUrl", NotificationCompat.CATEGORY_STATUS, "", "changeZipDownloadStatus", "changeZipUnCompressStatus", "checkZipDownloadStatus", "checkZipUnCompressStatus", "getCommonHeader", "", "hashMap", "useCommonHeader", "getMcc", "getMnc", "getSimOperator", "isShellType", "appModel", "Lcom/cloud/tmc/integration/model/AppModel;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "addCommonIntentParameter", "Landroid/content/Intent;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class BaseAppPrepareUtils {
    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    private final String getMcc() {
        String strSubstring;
        String simOperator = getSimOperator();
        if (TextUtils.isEmpty(simOperator)) {
            strSubstring = "";
        } else {
            if ((simOperator != null ? simOperator.length() : 0) < 3) {
                strSubstring = "";
            } else if (simOperator != null) {
                strSubstring = simOperator.substring(0, 3);
                Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            } else {
                strSubstring = null;
            }
        }
        return strSubstring == null ? "" : strSubstring;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0025  */
    private final String getMnc() {
        String strSubstring;
        String simOperator = getSimOperator();
        if (TextUtils.isEmpty(simOperator)) {
            strSubstring = "";
        } else {
            if ((simOperator != null ? simOperator.length() : 0) < 3) {
                strSubstring = "";
            } else if (simOperator != null) {
                strSubstring = simOperator.substring(3);
                Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
            } else {
                strSubstring = null;
            }
        }
        return strSubstring == null ? "" : strSubstring;
    }

    private final String getSimOperator() {
        try {
            Object systemService = Utils.getApp().getSystemService("phone");
            TelephonyManager telephonyManager = systemService instanceof TelephonyManager ? (TelephonyManager) systemService : null;
            return telephonyManager == null ? "" : telephonyManager.getSimOperator();
        } catch (Exception unused) {
            return "";
        }
    }

    public final void addCommonIntentParameter(Intent intent, Context context) {
        Intrinsics.h(intent, "<this>");
        intent.setPackage(context != null ? context.getPackageName() : null);
    }

    public final void changeTarUnCompressStatus(Context context, String appId, String uniqueIdentificationUrl, boolean status) {
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, uniqueIdentificationUrl + "_tar", status);
        }
    }

    public final synchronized void changeZipDownloadStatus(Context context, String appId, String uniqueIdentificationUrl, boolean status) {
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, uniqueIdentificationUrl + "_download", status);
        }
    }

    public final void changeZipUnCompressStatus(Context context, String appId, String uniqueIdentificationUrl, boolean status) {
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId != null) {
            kVStorageProxy.putBoolean(context, appId, uniqueIdentificationUrl + "_zip", status);
        }
    }

    public final synchronized boolean checkZipDownloadStatus(Context context, String appId, String uniqueIdentificationUrl) {
        boolean z10;
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        z10 = false;
        if (appId != null) {
            z10 = kVStorageProxy.getBoolean(context, appId, uniqueIdentificationUrl + "_download", false);
        }
        return z10;
    }

    public final boolean checkZipUnCompressStatus(Context context, String appId, String uniqueIdentificationUrl) {
        Intrinsics.h(context, "context");
        KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
        if (appId == null) {
            return false;
        }
        return kVStorageProxy.getBoolean(context, appId, uniqueIdentificationUrl + "_zip", false);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x013f A[Catch: all -> 0x013b, TryCatch #3 {all -> 0x013b, blocks: (B:4:0x000d, B:8:0x0039, B:11:0x004b, B:14:0x005d, B:22:0x0111, B:26:0x0129, B:28:0x0137, B:21:0x00f9, B:32:0x013f, B:33:0x0147, B:35:0x014d, B:38:0x015c, B:15:0x00dc, B:18:0x00e5), top: B:49:0x000d, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x014d A[Catch: all -> 0x013b, TryCatch #3 {all -> 0x013b, blocks: (B:4:0x000d, B:8:0x0039, B:11:0x004b, B:14:0x005d, B:22:0x0111, B:26:0x0129, B:28:0x0137, B:21:0x00f9, B:32:0x013f, B:33:0x0147, B:35:0x014d, B:38:0x015c, B:15:0x00dc, B:18:0x00e5), top: B:49:0x000d, inners: #2 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x015c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x015b A[SYNTHETIC] */
    public final Map<String, String> getCommonHeader(Map<String, String> hashMap, boolean useCommonHeader) {
        String packageName;
        String str;
        String str2 = "0000-0000-0000-0000";
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (useCommonHeader) {
            try {
                String country = Locale.getDefault().getCountry();
                Intrinsics.g(country, "getDefault().country");
                linkedHashMap.put("m-country-alpha2", country);
                linkedHashMap.put("m-os", "android");
                String appVersion = ((ISDKConfig) TmcProxy.get(ISDKConfig.class)).getAppVersion();
                String sdk_version_num = "";
                if (appVersion == null) {
                    appVersion = "";
                }
                linkedHashMap.put("m-app-ver", appVersion);
                String frameworkVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getFrameworkVersion();
                if (frameworkVersion == null) {
                    frameworkVersion = "";
                }
                linkedHashMap.put("m-fw-ver", frameworkVersion);
                String sDKVersion = ((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getSDKVersion();
                if (sDKVersion == null) {
                    sDKVersion = "";
                }
                linkedHashMap.put("m-mnsdk-ver", sDKVersion);
                linkedHashMap.put("m-mcc", getMcc());
                linkedHashMap.put("m-mnc", getMnc());
                String strTransferNetworkType = NetworkUtil.transferNetworkType(NetworkUtil.getCurrentNetworkType(Utils.getApp(), true));
                Intrinsics.g(strTransferNetworkType, "transferNetworkType(currentNetworkType)");
                linkedHashMap.put("m-nettype", strTransferNetworkType);
                String language = Locale.getDefault().getLanguage();
                Intrinsics.g(language, "getDefault().language");
                linkedHashMap.put("m-language", language);
                String str3 = Build.MANUFACTURER;
                String MODEL = Build.MODEL;
                linkedHashMap.put("m-phone-model", str3 + " " + MODEL);
                Intrinsics.g(MODEL, "MODEL");
                linkedHashMap.put("m-device-model", MODEL);
                String strUrlEncode = EncodeUtils.urlEncode(((IPackageConfig) TmcProxy.get(IPackageConfig.class)).getAppId());
                Intrinsics.g(strUrlEncode, "urlEncode(TmcProxy.get(I…onfig::class.java).appId)");
                linkedHashMap.put("m-app", strUrlEncode);
                try {
                    if (!DeviceUtil.INSTANCE.getIsNewUserStatus()) {
                        String vaid = ((ReportProxy) TmcProxy.get(ReportProxy.class)).getVaid();
                        Intrinsics.g(vaid, "{\n                      …aid\n                    }");
                        str2 = vaid;
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("CommonHeader", "just print get vaid failed. errMsg: " + th2.getMessage());
                }
                linkedHashMap.put("m-vaid", str2);
                linkedHashMap.put("m-mini-sdk-mode", AppDynamicBuildConfig.getSDK_BUILD_VARIANT_TYPE());
                try {
                    packageName = Utils.getApp().getPackageName();
                } catch (Throwable unused) {
                    packageName = "";
                }
                Intrinsics.g(packageName, "try {\n                  …     \"\"\n                }");
                linkedHashMap.put("m-app-pkg", packageName);
                try {
                    sdk_version_num = AppDynamicBuildConfig.getSDK_VERSION_NUM();
                } catch (Throwable unused2) {
                }
                linkedHashMap.put("m-mnsdk-num", sdk_version_num);
                if (hashMap != null) {
                    for (String str4 : hashMap.keySet()) {
                        str = hashMap.get(str4);
                        if (str == null) {
                            linkedHashMap.put(str4, str);
                        }
                    }
                }
            } catch (Throwable th3) {
                TmcLogger.e("CommonHeader", th3);
            }
        } else if (hashMap != null) {
            while (r10.hasNext()) {
                str = hashMap.get(str4);
                if (str == null) {
                    linkedHashMap.put(str4, str);
                }
            }
        }
        return linkedHashMap;
    }

    public final boolean isShellType(int type) {
        return type == MiniAppType.SHELL.getType() || type == MiniAppType.SHELL_GAME.getType();
    }

    public final boolean isShellType(AppModel appModel) {
        if (appModel != null) {
            return appModel.getAppinfoCategoryType() == MiniAppType.SHELL.getType() || appModel.getAppinfoCategoryType() == MiniAppType.SHELL_GAME.getType();
        }
        return false;
    }
}
