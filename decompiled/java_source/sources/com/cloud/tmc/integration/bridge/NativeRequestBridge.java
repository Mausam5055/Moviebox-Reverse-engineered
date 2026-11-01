package com.cloud.tmc.integration.bridge;

import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.proxy.IRequestConfigProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.FilePathUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.ObjectTypeAdapter;
import com.cloud.tmc.kernel.annotation.ActionFilter;
import com.cloud.tmc.kernel.annotation.ThreadType;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingCallback;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingNode;
import com.cloud.tmc.kernel.bridge.extension.annotation.BindingParam;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.executor.ExecutorType;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.network.IAbortCallback;
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.IResponseCallback;
import com.cloud.tmc.kernel.proxy.network.IUploadCallback;
import com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TraceLog;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.Cookie;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class NativeRequestBridge implements BridgeExtension {
    public static final String KEY_CALLBACK_ID = "callbackId";
    public static final String KEY_FILE_PATH = "filePath";
    public static final String KEY_TEMP_FILE_PATH = "tempFilePath";
    public static final String KEY_TIME_OUT = "m-timeout";
    public static final String KEY_X_BYTE_APPID = "x-byte-appid";
    private static final String TAG = "NativeRequestBridge";
    private final String[] requestMethods = {"GET", "POST", "POST_JSON", "POST_MULTIPART", "PUT", "DELETE"};

    /* JADX INFO: renamed from: com.cloud.tmc.integration.bridge.NativeRequestBridge$4, reason: invalid class name */
    class AnonymousClass4 implements PermissionUtils.SimpleCallback {
        final /* synthetic */ App val$app;
        final /* synthetic */ BridgeCallback val$callback;
        final /* synthetic */ String val$callbackId;
        final /* synthetic */ String val$filePath;
        final /* synthetic */ String val$header;
        final /* synthetic */ String val$saveName;
        final /* synthetic */ Long val$timeout;
        final /* synthetic */ String val$url;

        AnonymousClass4(String str, Long l11, App app, String str2, String str3, String str4, BridgeCallback bridgeCallback, String str5) {
            this.val$header = str;
            this.val$timeout = l11;
            this.val$app = app;
            this.val$url = str2;
            this.val$saveName = str3;
            this.val$filePath = str4;
            this.val$callback = bridgeCallback;
            this.val$callbackId = str5;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onGranted$0(String str, Long l11, final App app, String str2, String str3, final String str4, final BridgeCallback bridgeCallback, String str5) {
            String strRenameIfFileExists;
            Map mapMapFromJson;
            try {
                HashMap map = new HashMap();
                if (!TextUtils.isEmpty(str) && (mapMapFromJson = TmcGsonUtils.mapFromJson(str)) != null) {
                    map.putAll(mapMapFromJson);
                }
                if (l11 == null || l11.longValue() == 0) {
                    map.put(NativeRequestBridge.KEY_TIME_OUT, "60000");
                } else {
                    map.put(NativeRequestBridge.KEY_TIME_OUT, l11 + "");
                }
                map.put(NativeRequestBridge.KEY_X_BYTE_APPID, app.getAppId());
                String str6 = "" + System.currentTimeMillis();
                String path = Uri.parse(str2).getPath();
                if (!TextUtils.isEmpty(path)) {
                    String[] strArrSplit = path.split("/");
                    if (strArrSplit.length > 0) {
                        str6 = strArrSplit[strArrSplit.length - 1];
                    }
                }
                final String str7 = !str3.isEmpty() ? str3 : str6;
                final int[] iArr = {10};
                if (TextUtils.isEmpty(str4)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId()));
                    String str8 = File.separator;
                    sb2.append(str8);
                    sb2.append(TmcConstants.TEMP_DATA_PATH);
                    sb2.append(str8);
                    sb2.append(str7);
                    strRenameIfFileExists = sb2.toString();
                } else {
                    strRenameIfFileExists = FileUtil.renameIfFileExists(str4);
                }
                final String str9 = strRenameIfFileExists;
                TmcLogger.d(NativeRequestBridge.TAG, "downloadPath: " + str9);
                if (!FileUtil.isFilePathValid(str9)) {
                    if (bridgeCallback != null) {
                        bridgeCallback.sendFailResponse(NativeRequestBridge.this.createFailResponse("D0010", "Download Fail, file path contains illegal characters:D0010", str5));
                        bridgeCallback.close();
                        return;
                    }
                    return;
                }
                if (FileUtils.createOrExistsDir(str9)) {
                    final int i11 = 10;
                    ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(str5, str2, str9, map, str5, new PackageDownloadCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.4.1
                        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                        public void onCancel(String str10, String str11) {
                            BridgeCallback bridgeCallback2 = bridgeCallback;
                            if (bridgeCallback2 != null) {
                                bridgeCallback2.close();
                            }
                        }

                        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                        public void onFailed(String str10, String str11, String str12, IOException iOException, String str13) {
                            BridgeCallback bridgeCallback2 = bridgeCallback;
                            if (bridgeCallback2 != null) {
                                bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse(str11 + "", str12, str13));
                                bridgeCallback.close();
                                FileUtil.INSTANCE.checkMiniAppFileSizeStatus(app);
                            }
                        }

                        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                        public void onFinish(@Nullable String str10, String str11) {
                            App app2;
                            if (bridgeCallback != null) {
                                String str12 = !TextUtils.isEmpty(str4) ? str9 : "";
                                IFileResourceManager iFileResourceManager = app.getIFileResourceManager();
                                bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty(NativeRequestBridge.KEY_TEMP_FILE_PATH, iFileResourceManager != null ? iFileResourceManager.generateVUrl(str9, app.getAppId(), str7, "", false) : "").addProperty(NativeRequestBridge.KEY_FILE_PATH, str12).addProperty("callbackId", str11).build());
                                bridgeCallback.close();
                                FileUtil.INSTANCE.checkMiniAppFileSizeStatus(app);
                                try {
                                    if (Build.VERSION.SDK_INT < 30 || (app2 = app) == null || app2.getAppContext() == null || app.getAppContext().getContext() == null) {
                                        return;
                                    }
                                    FileUtil.sendMediaScanBroadcast(app.getAppContext().getContext());
                                } catch (Throwable th2) {
                                    TmcLogger.e(NativeRequestBridge.TAG, th2);
                                }
                            }
                        }

                        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                        public void onPrepare(String str10, String str11) {
                        }

                        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                        public void onProgress(String str10, int i12, String str11) {
                        }

                        @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                        public void progressUpdate(String str10, int i12, String str11, long j11, long j12) {
                            int[] iArr2;
                            int i13;
                            if (bridgeCallback == null || i12 < (i13 = (iArr2 = iArr)[0])) {
                                return;
                            }
                            iArr2[0] = i13 + i11;
                            JsonObject jsonObject = new JsonObject();
                            JsonObject jsonObject2 = new JsonObject();
                            jsonObject2.addProperty(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(i12));
                            jsonObject2.addProperty("totalBytesWritten", Long.valueOf(j11));
                            jsonObject2.addProperty("totalBytesExpectedToWrite", Long.valueOf(j12));
                            jsonObject2.addProperty("callbackId", str11);
                            jsonObject.add("onProgress", jsonObject2);
                            bridgeCallback.sendJSONResponse(jsonObject);
                        }
                    });
                } else if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(NativeRequestBridge.this.createFailResponse("D008", "Download Fail,create file:" + str9 + " fail:D008", str5));
                    bridgeCallback.close();
                }
            } catch (Throwable th2) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(NativeRequestBridge.this.createFailResponse("D002", "Download Fail,Exception_" + th2.toString() + ":D002", str5));
                    bridgeCallback.close();
                }
            }
        }

        @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
        public void onDenied() {
            BridgeCallback bridgeCallback = this.val$callback;
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(NativeRequestBridge.this.createFailResponse("D009", "Download Fail, no permission:D009", this.val$callbackId));
                this.val$callback.close();
            }
        }

        @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
        public void onGranted() {
            ExecutorType executorType = ExecutorType.NETWORK;
            final String str = this.val$header;
            final Long l11 = this.val$timeout;
            final App app = this.val$app;
            final String str2 = this.val$url;
            final String str3 = this.val$saveName;
            final String str4 = this.val$filePath;
            final BridgeCallback bridgeCallback = this.val$callback;
            final String str5 = this.val$callbackId;
            ExecutorUtils.execute(executorType, new Runnable() { // from class: com.cloud.tmc.integration.bridge.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f23282a.lambda$onGranted$0(str, l11, app, str2, str3, str4, bridgeCallback, str5);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JsonObject createFailResponse(String str, String str2, String str3) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("callbackId", str3);
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_ERRCODE, str);
        jsonObject.addProperty(NotificationCompat.CATEGORY_MESSAGE, str2);
        return jsonObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JsonObject createSuccessResponse(String str, String str2, Map<String, String> map, List<Cookie> list, String str3) {
        JsonObject jsonObject = new JsonObject();
        try {
            jsonObject.addProperty("statusCode", str);
            jsonObject.addProperty("response", str2);
            jsonObject.addProperty("headers", GsonUtils.toJson(map));
            jsonObject.addProperty("cookies", GsonUtils.toJson(list));
            jsonObject.addProperty("callbackId", str3);
        } catch (Throwable unused) {
        }
        return jsonObject;
    }

    private HashMap<String, String> jsonObjectToHashMap(JSONObject jSONObject) {
        HashMap<String, String> map = new HashMap<>();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            try {
                map.put(next, jSONObject.getString(next));
            } catch (JSONException e11) {
                e11.printStackTrace();
            }
        }
        return map;
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void abortDownloadRequest(@BindingParam(name = {"callbackId"}) final String str, @BindingCallback final BridgeCallback bridgeCallback) {
        try {
            if (!TextUtils.isEmpty(str)) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).cancelDownloadCall(str, new IAbortCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.11
                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void fail(String str2) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse("D011", "Download Abort Fail," + str2 + ":D011", str));
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void success() {
                        if (bridgeCallback != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("callbackId", str);
                            bridgeCallback.sendSuccessResponse(jsonObject);
                        }
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D009", "Download Abort Fail,callbackId is empty:D009", ""));
            }
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D010", "Download Abort Fail,Exception_" + th2.toString() + ":D010", ""));
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void abortHttpRequest(@BindingParam(name = {"callbackId"}) final String str, @BindingCallback final BridgeCallback bridgeCallback) {
        try {
            if (!TextUtils.isEmpty(str)) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).cancelHttpRequest(str, new IAbortCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.3
                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void fail(String str2) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse("R007", "Http Request Abort Fail, " + str2 + ": R007", str));
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void success() {
                        if (bridgeCallback != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("callbackId", str);
                            bridgeCallback.sendSuccessResponse(jsonObject);
                        }
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("R006", "Http Request Abort Fail, callbackId is empty: R006", ""));
            }
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("R008", "Http Request Abort Fail,Exception_" + th2.toString() + ":R008", str));
                bridgeCallback.close();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void abortUploadRequest(@BindingParam(name = {"callbackId"}) final String str, @BindingCallback final BridgeCallback bridgeCallback) {
        try {
            if (!TextUtils.isEmpty(str)) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).cancelUploadCall(str, new IAbortCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.12
                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void fail(String str2) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse("U009", "UploadFile Abort Fail," + str2 + ":U009", str));
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void success() {
                        if (bridgeCallback != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("callbackId", str);
                            bridgeCallback.sendSuccessResponse(jsonObject);
                        }
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("U007", "UploadFile Abort Fail,callbackId is empty:U007", ""));
            }
        } catch (Throwable th2) {
            bridgeCallback.sendFailResponse(createFailResponse("U008", "UploadFile Abort Fail,Exception_" + th2.toString() + ":U008", ""));
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void downloadFile(@BindingParam(name = {"url"}) String str, @BindingParam(name = {"saveName"}) String str2, @BindingParam(name = {"header"}) String str3, @BindingParam(name = {KEY_FILE_PATH}) final String str4, @BindingParam(name = {"timeout"}) Long l11, @BindingParam(name = {"callbackId"}) String str5, @BindingCallback(isSticky = true) final BridgeCallback bridgeCallback, @BindingNode(App.class) final App app) {
        String string;
        Map mapMapFromJson;
        try {
            FileUtil fileUtil = FileUtil.INSTANCE;
            if (fileUtil.getMiniAppFileStatus(app)) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(createFailResponse("S001", "Download Fail,Data storage failed because of insufficient storage space: S001", str5));
                    bridgeCallback.close();
                }
                fileUtil.checkMiniAppFileSizeStatus(app);
                return;
            }
            HashMap map = new HashMap();
            if (!TextUtils.isEmpty(str3) && (mapMapFromJson = TmcGsonUtils.mapFromJson(str3)) != null) {
                map.putAll(mapMapFromJson);
            }
            if (l11 == null || l11.longValue() == 0) {
                map.put(KEY_TIME_OUT, "60000");
            } else {
                map.put(KEY_TIME_OUT, l11 + "");
            }
            map.put(KEY_X_BYTE_APPID, app.getAppId());
            String str6 = "" + System.currentTimeMillis();
            String path = Uri.parse(str).getPath();
            if (!TextUtils.isEmpty(path)) {
                String[] strArrSplit = path.split("/");
                if (strArrSplit.length > 0) {
                    str6 = strArrSplit[strArrSplit.length - 1];
                }
            }
            final String str7 = !str2.isEmpty() ? str2 : str6;
            final int[] iArr = {10};
            if (TextUtils.isEmpty(str4)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId()));
                String str8 = File.separator;
                sb2.append(str8);
                sb2.append(TmcConstants.TEMP_DATA_PATH);
                sb2.append(str8);
                sb2.append(str7);
                string = sb2.toString();
            } else {
                string = str4;
            }
            if (FileUtils.createFileByDeleteOldFile(string)) {
                final int i11 = 10;
                final String str9 = string;
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(str5, str, string, map, str5, new PackageDownloadCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.5
                    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                    public void onCancel(String str10, String str11) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.close();
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                    public void onFailed(String str10, String str11, String str12, IOException iOException, String str13) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse(str11 + "", str12, str13));
                            bridgeCallback.close();
                            FileUtil.INSTANCE.checkMiniAppFileSizeStatus(app);
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                    public void onFinish(@Nullable String str10, String str11) {
                        String str12;
                        if (bridgeCallback != null) {
                            String strGenerateVUrl = "";
                            if (TextUtils.isEmpty(str4)) {
                                strGenerateVUrl = FilePathUtils.INSTANCE.getDowngradeStatus(app.getAppId()) ? app.getImageResourceManagerProxy().generateVUrl(str9, app.getAppId(), str7) : app.getIFileResourceManager().generateVUrl(str9, app.getAppId(), str7, TmcConstants.TEMP_DATA_PATH);
                                str12 = "";
                            } else {
                                str12 = str4;
                            }
                            bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().addProperty(NativeRequestBridge.KEY_TEMP_FILE_PATH, strGenerateVUrl).addProperty(NativeRequestBridge.KEY_FILE_PATH, str12).addProperty("callbackId", str11).build());
                            bridgeCallback.close();
                            FileUtil.INSTANCE.checkMiniAppFileSizeStatus(app);
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                    public void onPrepare(String str10, String str11) {
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                    public void onProgress(String str10, int i12, String str11) {
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                    public void progressUpdate(String str10, int i12, String str11, long j11, long j12) {
                        int[] iArr2;
                        int i13;
                        if (bridgeCallback == null || i12 < (i13 = (iArr2 = iArr)[0])) {
                            return;
                        }
                        iArr2[0] = i13 + i11;
                        JsonObject jsonObject = new JsonObject();
                        JsonObject jsonObject2 = new JsonObject();
                        jsonObject2.addProperty(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(i12));
                        jsonObject2.addProperty("totalBytesWritten", Long.valueOf(j11));
                        jsonObject2.addProperty("totalBytesExpectedToWrite", Long.valueOf(j12));
                        jsonObject2.addProperty("callbackId", str11);
                        jsonObject.add("onProgress", jsonObject2);
                        bridgeCallback.sendJSONResponse(jsonObject);
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D008", "Download Fail,create file:" + string + " fail:D008", str5));
                bridgeCallback.close();
            }
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D002", "Download Fail,Exception_" + th2.toString() + ":D002", str5));
                bridgeCallback.close();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void innerAbortDownloadRequest(@BindingParam(name = {"callbackId"}) final String str, @BindingCallback final BridgeCallback bridgeCallback) {
        try {
            if (!TextUtils.isEmpty(str)) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).cancelDownloadCall(str, new IAbortCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.10
                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void fail(String str2) {
                        BridgeCallback bridgeCallback2 = bridgeCallback;
                        if (bridgeCallback2 != null) {
                            bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse("D011", "Download Abort Fail," + str2 + ":D011", str));
                        }
                    }

                    @Override // com.cloud.tmc.kernel.proxy.network.IAbortCallback
                    public void success() {
                        if (bridgeCallback != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("callbackId", str);
                            bridgeCallback.sendSuccessResponse(jsonObject);
                        }
                    }
                });
            } else if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D009", "Download Abort Fail,callbackId is empty:D009", ""));
            }
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D010", "Download Abort Fail,Exception_" + th2.toString() + ":D010", ""));
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public void innerDownloadFile(@BindingParam(name = {"url"}) String str, @BindingParam(name = {"saveName"}) String str2, @BindingParam(name = {"header"}) String str3, @BindingParam(name = {KEY_FILE_PATH}) String str4, @BindingParam(name = {"timeout"}) Long l11, @BindingParam(name = {"callbackId"}) String str5, @BindingCallback(isSticky = true) BridgeCallback bridgeCallback, @BindingNode(App.class) App app) {
        try {
            PermissionUtils.permissionGroup(PermissionConstants.STORAGE_WRITE).callback(new AnonymousClass4(str3, l11, app, str, str2, str4, bridgeCallback, str5)).request();
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("D002", "Download Fail,Exception_" + th2.toString() + ":D002", str5));
                bridgeCallback.close();
            }
        }
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0101  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void request(@BindingParam(name = {"url"}) String str, @BindingParam(name = {"dataJson"}) String str2, @BindingParam(name = {"header"}) String str3, @BindingParam(name = {"method"}) String str4, @BindingParam(name = {"timeout"}) Long l11, @BindingParam(name = {"callbackId"}) String str5, @BindingCallback final BridgeCallback bridgeCallback, @BindingNode(App.class) App app) {
        byte b11;
        try {
            if (TextUtils.isEmpty(str)) {
                TraceLog.w("Tmcintegration", "Http Request Fail, url is empty:R001");
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(createFailResponse("R001", "Http Request Fail, url is empty:R001", str5));
                    return;
                }
                return;
            }
            String str6 = TextUtils.isEmpty(str4) ? "GET" : str4;
            HashMap map = new HashMap();
            if (str5 != null) {
                map.put("callbackId", str5);
            }
            if (!TextUtils.isEmpty(str3)) {
                Map<String, String> mapJsonToMapValueIsString = ((IRequestConfigProxy) TmcProxy.get(IRequestConfigProxy.class)).repairIntToFloat() ? TmcGsonUtils.JsonToMapValueIsString(str3) : TmcGsonUtils.mapFromJson(str3);
                if (mapJsonToMapValueIsString != null) {
                    map.putAll(mapJsonToMapValueIsString);
                }
            }
            if (l11 == null || l11.longValue() == 0) {
                map.put(KEY_TIME_OUT, "60000");
            } else {
                map.put(KEY_TIME_OUT, l11 + "");
            }
            map.put(KEY_X_BYTE_APPID, app.getAppId());
            HashMap map2 = new HashMap();
            if (!TextUtils.isEmpty(str2)) {
                Map<String, String> mapJsonToMapValueIsString2 = ((IRequestConfigProxy) TmcProxy.get(IRequestConfigProxy.class)).repairIntToFloat() ? TmcGsonUtils.JsonToMapValueIsString(str2) : TmcGsonUtils.mapFromJson(str2);
                if (mapJsonToMapValueIsString2 != null) {
                    map2.putAll(mapJsonToMapValueIsString2);
                }
            }
            IResponseCallback iResponseCallback = new IResponseCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.1
                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onFailure(String str7, @Nullable String str8, @Nullable String str9) {
                    BridgeCallback bridgeCallback2 = bridgeCallback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse(str7, str8, str9));
                    }
                }

                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onSuccess(int i11, @Nullable String str7, Map<String, String> map3, List<Cookie> list, @Nullable String str8) {
                    BridgeCallback bridgeCallback2 = bridgeCallback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendSuccessResponse(NativeRequestBridge.this.createSuccessResponse(i11 + "", str7, map3, list, str8));
                    }
                }
            };
            switch (str6.hashCode()) {
                case -1898559571:
                    if (!str6.equals("POST_MULTIPART")) {
                        b11 = -1;
                    } else {
                        b11 = 2;
                    }
                    break;
                case 70454:
                    if (!str6.equals("GET")) {
                        b11 = -1;
                    } else {
                        b11 = 0;
                    }
                    break;
                case 79599:
                    if (!str6.equals("PUT")) {
                        b11 = -1;
                    } else {
                        b11 = 4;
                    }
                    break;
                case 2461856:
                    if (!str6.equals("POST")) {
                        b11 = -1;
                    } else {
                        b11 = 3;
                    }
                    break;
                case 523858215:
                    if (!str6.equals("POST_JSON")) {
                        b11 = -1;
                    } else {
                        b11 = 1;
                    }
                    break;
                case 2012838315:
                    if (!str6.equals("DELETE")) {
                        b11 = -1;
                    } else {
                        b11 = 5;
                    }
                    break;
                default:
                    b11 = -1;
                    break;
            }
            if (b11 == 0) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(str, map, map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 1) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 2) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postMultipart(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 3) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).post(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 4) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).put(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 5) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).delete(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("R003", "Http Request Fail, request method not in " + Arrays.toString(this.requestMethods) + ":R003", str5));
            }
            TraceLog.w("Tmcintegration", "Http Request Fail,request method not in " + Arrays.toString(this.requestMethods));
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("R002", "Http Request Fail, Exception_" + th2.toString() + ":R002", str5));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:65:0x0101  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public void requestV2(@BindingParam(name = {"url"}) String str, @BindingParam(name = {"dataJson"}) String str2, @BindingParam(name = {"header"}) String str3, @BindingParam(name = {"method"}) String str4, @BindingParam(name = {"timeout"}) Long l11, @BindingParam(name = {"callbackId"}) String str5, @BindingCallback final BridgeCallback bridgeCallback, @BindingNode(App.class) App app) {
        byte b11;
        try {
            if (TextUtils.isEmpty(str)) {
                TraceLog.w("Tmcintegration", "Http Request Fail, url is empty:R001");
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(createFailResponse("R001", "Http Request Fail, url is empty:R001", str5));
                    return;
                }
                return;
            }
            String str6 = TextUtils.isEmpty(str4) ? "GET" : str4;
            HashMap map = new HashMap();
            if (str5 != null) {
                map.put("callbackId", str5);
            }
            if (!TextUtils.isEmpty(str3)) {
                Map<String, String> mapJsonToMapValueIsString = ((IRequestConfigProxy) TmcProxy.get(IRequestConfigProxy.class)).repairIntToFloat() ? TmcGsonUtils.JsonToMapValueIsString(str3) : TmcGsonUtils.mapFromJson(str3);
                if (mapJsonToMapValueIsString != null) {
                    map.putAll(mapJsonToMapValueIsString);
                }
            }
            if (l11 == null || l11.longValue() == 0) {
                map.put(KEY_TIME_OUT, "60000");
            } else {
                map.put(KEY_TIME_OUT, l11 + "");
            }
            map.put(KEY_X_BYTE_APPID, app.getAppId());
            HashMap map2 = new HashMap();
            if (!TextUtils.isEmpty(str2)) {
                Map<String, String> mapJsonToMapValueIsString2 = ((IRequestConfigProxy) TmcProxy.get(IRequestConfigProxy.class)).repairIntToFloat() ? TmcGsonUtils.JsonToMapValueIsString(str2) : TmcGsonUtils.mapFromJson(str2);
                if (mapJsonToMapValueIsString2 != null) {
                    map2.putAll(mapJsonToMapValueIsString2);
                }
            }
            IResponseCallback iResponseCallback = new IResponseCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.2
                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onFailure(String str7, @Nullable String str8, @Nullable String str9) {
                    BridgeCallback bridgeCallback2 = bridgeCallback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse(str7, str8, str9));
                    }
                }

                @Override // com.cloud.tmc.kernel.proxy.network.IResponseCallback
                public void onSuccess(int i11, @Nullable String str7, Map<String, String> map3, List<Cookie> list, @Nullable String str8) {
                    BridgeCallback bridgeCallback2 = bridgeCallback;
                    if (bridgeCallback2 != null) {
                        bridgeCallback2.sendSuccessResponse(NativeRequestBridge.this.createSuccessResponse(i11 + "", str7, map3, list, str8));
                    }
                }
            };
            switch (str6.hashCode()) {
                case -1898559571:
                    if (!str6.equals("POST_MULTIPART")) {
                        b11 = -1;
                    } else {
                        b11 = 2;
                    }
                    break;
                case 70454:
                    if (!str6.equals("GET")) {
                        b11 = -1;
                    } else {
                        b11 = 0;
                    }
                    break;
                case 79599:
                    if (!str6.equals("PUT")) {
                        b11 = -1;
                    } else {
                        b11 = 4;
                    }
                    break;
                case 2461856:
                    if (!str6.equals("POST")) {
                        b11 = -1;
                    } else {
                        b11 = 3;
                    }
                    break;
                case 523858215:
                    if (!str6.equals("POST_JSON")) {
                        b11 = -1;
                    } else {
                        b11 = 1;
                    }
                    break;
                case 2012838315:
                    if (!str6.equals("DELETE")) {
                        b11 = -1;
                    } else {
                        b11 = 5;
                    }
                    break;
                default:
                    b11 = -1;
                    break;
            }
            if (b11 == 0) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).get(str, map, map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 1) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postJson(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 2) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postMultipart(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 3) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).postV2(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 4) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).put(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (b11 == 5) {
                ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).delete(str, map, new HashMap(), map2, Boolean.TRUE, iResponseCallback);
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("R003", "Http Request Fail, request method not in " + Arrays.toString(this.requestMethods) + ":R003", str5));
            }
            TraceLog.w("Tmcintegration", "Http Request Fail,request method not in " + Arrays.toString(this.requestMethods));
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("R002", "Http Request Fail, Exception_" + th2.toString() + ":R002", str5));
            }
        }
    }

    @ActionFilter("")
    @ThreadType(ExecutorType.IO)
    public void uploadFile(@BindingParam(name = {"url"}) String str, @BindingParam(name = {KEY_FILE_PATH}) String str2, @BindingParam(name = {"name"}) String str3, @BindingParam(name = {"header"}) String str4, @BindingParam(name = {"formData"}) String str5, @BindingParam(name = {"timeout"}) Long l11, @BindingParam(name = {"callbackId"}) String str6, @BindingCallback(isSticky = true) final BridgeCallback bridgeCallback, @BindingNode(App.class) App app) {
        String filePath;
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("http")) {
                IImageResourceManager imageResourceManagerProxy = app.getImageResourceManagerProxy();
                String str7 = (TextUtils.isEmpty(str2) || !new File(str2).exists()) ? "" : str2;
                String imagePath = imageResourceManagerProxy.getImagePath(str2);
                if (TextUtils.isEmpty(imagePath) || !new File(imagePath).exists()) {
                    filePath = app.getIFileResourceManager().getFilePath(app.getAppId(), str2);
                    if (TextUtils.isEmpty(filePath) || !new File(filePath).exists()) {
                        filePath = str7;
                    }
                } else {
                    filePath = imagePath;
                }
                if (!TextUtils.isEmpty(filePath) && new File(filePath).exists()) {
                    Map<String, String> map = new HashMap<>();
                    HashMap map2 = new HashMap();
                    Gson gsonCreate = new GsonBuilder().registerTypeAdapter(new TypeToken<Map<String, String>>() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.6
                    }.getType(), new ObjectTypeAdapter()).serializeNulls().create();
                    try {
                        if (!TextUtils.isEmpty(str4)) {
                            map = (Map) gsonCreate.fromJson(str4, new TypeToken<Map<String, String>>() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.7
                            }.getType());
                        }
                        Map<String, String> map3 = map;
                        Map<String, String> map4 = !TextUtils.isEmpty(str5) ? (Map) gsonCreate.fromJson(str5, new TypeToken<Map<String, String>>() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.8
                        }.getType()) : map2;
                        if (l11 == null || l11.longValue() == 0) {
                            map3.put(KEY_TIME_OUT, "60000");
                        } else {
                            map3.put(KEY_TIME_OUT, l11 + "");
                        }
                        map3.put(KEY_X_BYTE_APPID, app.getAppId());
                        final int i11 = 10;
                        final int[] iArr = {10};
                        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).uploadFile(str, filePath, str6, map3, new HashMap(), map4, Boolean.TRUE, new IUploadCallback() { // from class: com.cloud.tmc.integration.bridge.NativeRequestBridge.9
                            @Override // com.cloud.tmc.kernel.proxy.network.IUploadCallback
                            public void onFailed(String str8, String str9, String str10, String str11) {
                                BridgeCallback bridgeCallback2 = bridgeCallback;
                                if (bridgeCallback2 != null) {
                                    bridgeCallback2.sendFailResponse(NativeRequestBridge.this.createFailResponse(str9 + "", str10, str11));
                                    bridgeCallback.close();
                                }
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.IUploadCallback
                            public void onFinish(@Nullable String str8, String str9, String str10) {
                                if (bridgeCallback != null) {
                                    JsonObject jsonObject = new JsonObject();
                                    jsonObject.addProperty("response", str9);
                                    jsonObject.addProperty("callbackId", str10);
                                    bridgeCallback.sendSuccessResponse(jsonObject);
                                    bridgeCallback.close();
                                }
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.IUploadCallback
                            public void progressUpdate(String str8, int i12, String str9, long j11, long j12) {
                                int[] iArr2;
                                int i13;
                                if (bridgeCallback == null || i12 < (i13 = (iArr2 = iArr)[0])) {
                                    return;
                                }
                                iArr2[0] = i13 + i11;
                                JsonObject jsonObject = new JsonObject();
                                JsonObject jsonObject2 = new JsonObject();
                                jsonObject2.addProperty(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(i12));
                                jsonObject2.addProperty("totalBytesWritten", Long.valueOf(j11));
                                jsonObject2.addProperty("totalBytesExpectedToWrite", Long.valueOf(j12));
                                jsonObject.add("onProgress", jsonObject2);
                                bridgeCallback.sendJSONResponse(jsonObject);
                            }
                        });
                        return;
                    } catch (Throwable unused) {
                        if (bridgeCallback != null) {
                            bridgeCallback.sendFailResponse(createFailResponse("U004", "UploadFile fail,parse: header/formData error:U004", str6));
                            bridgeCallback.close();
                            return;
                        }
                        return;
                    }
                }
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse(createFailResponse("U003", "UploadFile fail,file:" + filePath + " is not exist:U003", str6));
                    bridgeCallback.close();
                    return;
                }
                return;
            }
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("U001", "UploadFile fail,url is not startsWith http:U001", str6));
                bridgeCallback.close();
            }
        } catch (Throwable th2) {
            if (bridgeCallback != null) {
                bridgeCallback.sendFailResponse(createFailResponse("U002", "UploadFile fail,Exception_" + th2.toString() + ":U002", str6));
                bridgeCallback.close();
            }
            TmcLogger.e("uploadFile", th2);
        }
    }
}
