package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.system.StructStat;
import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.model.FileCache;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.utils.ArrayUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.compress.CompressUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
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
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.HexUtil;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.worker.utils.FileIOUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005¢\u0006\u0002\u0010\u0002J,\u0010\u0007\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010\u000f\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J4\u0010\u0011\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0001\u0010\u0012\u001a\u00020\f2\b\b\u0001\u0010\u0013\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010\u0014\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J,\u0010\u0019\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J6\u0010\u001b\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010\u001d\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\b\u0010\u001e\u001a\u00020\bH\u0016J\b\u0010\u001f\u001a\u00020\bH\u0016J6\u0010 \u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010!\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\n\u0010\"\u001a\u0004\u0018\u00010#H\u0016J@\u0010$\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010%\u001a\u00020&2\b\b\u0001\u0010'\u001a\u00020(2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010)\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007JJ\u0010*\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010+\u001a\u00020\f2\b\b\u0001\u0010'\u001a\u00020&2\b\b\u0001\u0010%\u001a\u00020&2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010,\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010-\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010.\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010/\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J \u00100\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001a\u00101\u001a\u00020\b2\u0006\u00102\u001a\u0002032\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J6\u00104\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010\u001d\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u00105\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u00106\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J&\u00107\u001a\u00020\b2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u00108\u001a\u0004\u0018\u00010\f2\b\b\u0002\u00109\u001a\u00020\u0004H\u0002J6\u0010:\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010\u001d\u001a\u00020\u00042\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J,\u0010;\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J8\u0010<\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010=\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010>\u001a\u0004\u0018\u00010\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007JJ\u0010?\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010@\u001a\u00020\f2\b\b\u0001\u0010+\u001a\u00020\f2\b\b\u0001\u0010'\u001a\u00020&2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J@\u0010A\u001a\u00020\b2\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0001\u0010\u001a\u001a\u0004\u0018\u00010\f2\b\b\u0001\u0010@\u001a\u00020\f2\b\b\u0001\u0010+\u001a\u00020\f2\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006C"}, d2 = {"Lcom/cloud/tmc/integration/bridge/FileBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "sdCardEnableByEnvironment", "", "getSdCardEnableByEnvironment", "()Z", "access", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "path", "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "close", "fd", "copyFile", "srcPath", "destPath", "fstat", "generateFileStat", "Lcom/google/gson/JsonObject;", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "Ljava/io/File;", "getFileInfo", NativeRequestBridge.KEY_FILE_PATH, "mkdir", "dirPath", "recursive", "onFinalized", "onInitialized", MRAIDPresenter.OPEN, "flag", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "read", "length", "", RequestParameters.POSITION, "", "readDir", "readFile", "encoding", "readSDDir", "rename", "oldPath", "newPath", "requestSDPermission", "requestStoragePermission", "context", "Landroid/content/Context;", "rmdir", "saveFile", NativeRequestBridge.KEY_TEMP_FILE_PATH, "sendErrorMsg", "errorMsg", "isSticky", "stat", "unlink", "unzip", "zipFilePath", "targetPath", "write", "data", "writeFile", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FileBridge implements BridgeExtension {
    private static final String ERROR_MSG = "errMsg";
    private static final String ERROR_MSG_F10001 = "parameter error: F10001";
    private static final String ERROR_MSG_F10002 = "fail sdcard not mounted: F10002";
    private static final String ERROR_MSG_F10003 = "bad file descriptor: F10003";
    private static final String ERROR_MSG_F10004 = "fail the maximum size of the file storage limit exceeded: F10004";
    private static final String ERROR_MSG_F10005 = "fail permission denied: F10005";
    private static final String ERROR_MSG_F10006 = "fail file does not exist: F10006";
    private static final String ERROR_MSG_F10007 = "fail no such file or directory: F10007";
    private static final String ERROR_MSG_F10008 = "native buffer exceeds size limit: F10008";
    private static final String ERROR_MSG_F10009 = "deletion of public space files is not allowed: F10009";
    private static final int MAX_FILE_SIZE = 104857600;
    private static final String TAG = "FileBridge";

    private final JsonObject generateFileStat(File file) {
        StructStat stat = FileUtil.getStat(file);
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("mode", Integer.valueOf(stat != null ? stat.st_mode : 0)).addProperty("size", Long.valueOf(file.length())).addProperty("lastAccessedTime", Long.valueOf(stat != null ? stat.st_atime : 0L)).addProperty("lastModifiedTime", Long.valueOf(stat != null ? stat.st_mtime : file.lastModified() / ((long) 1000))).build();
        Intrinsics.g(jsonObjectBuild, "create()\n            .ad…00))\n            .build()");
        return jsonObjectBuild;
    }

    private final boolean getSdCardEnableByEnvironment() {
        return FileUtil.isSDCardEnableByEnvironment();
    }

    private final void requestStoragePermission(Context context, final BridgeCallback callback) {
        try {
            PermissionUtils.permissionGroup(PermissionConstants.STORAGE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.FileBridge.requestStoragePermission.1
                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onDenied() {
                    FileBridge.sendErrorMsg$default(this, callback, FileBridge.ERROR_MSG_F10005, false, 4, null);
                }

                @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                public void onGranted() {
                    BridgeCallback bridgeCallback = callback;
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse();
                    }
                }
            }).request();
        } catch (Throwable th2) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10005, false, 4, null);
            TmcLogger.e(TAG, th2);
        }
    }

    private final void sendErrorMsg(BridgeCallback callback, String errorMsg, boolean isSticky) {
        if (callback != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", errorMsg);
            callback.sendFailResponse(jsonObject);
        }
        if (!isSticky || callback == null) {
            return;
        }
        callback.close();
    }

    static /* synthetic */ void sendErrorMsg$default(FileBridge fileBridge, BridgeCallback bridgeCallback, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        fileBridge.sendErrorMsg(bridgeCallback, str, z10);
    }

    @ActionFilter("fileAccess")
    @ThreadType(ExecutorType.NORMAL)
    public final void access(@BindingNode(App.class) App app, @BindingParam(name = {"path"}) String path, @BindingCallback BridgeCallback callback) {
        if (app == null || path == null || path.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        if (FileUtil.accessDir(app, path)) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else if (FileUtil.access(app, path)) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + path, false, 4, null);
        }
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter("fileClose")
    @ThreadType(ExecutorType.IO)
    public final void close(@BindingNode(App.class) App app, @BindingParam(name = {"fd"}) String fd2, @BindingCallback BridgeCallback callback) {
        if (app == null || fd2 == null || fd2.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
        } else if (!FileUtil.close(app, fd2)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10003, false, 4, null);
        } else if (callback != null) {
            callback.sendSuccessResponse();
        }
    }

    @ActionFilter("fileCopyFile")
    @ThreadType(ExecutorType.IO)
    public final void copyFile(@BindingNode(App.class) final App app, @BindingParam(name = {"srcPath"}) String srcPath, @BindingParam(name = {"destPath"}) String destPath, @BindingCallback BridgeCallback callback) {
        boolean zCopyFile;
        Intrinsics.h(srcPath, "srcPath");
        Intrinsics.h(destPath, "destPath");
        if (app == null || srcPath.length() == 0 || destPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        if (!FileUtil.access(app, srcPath)) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("fail no such file or directory: F10007, copyFile %s -> %s", Arrays.copyOf(new Object[]{FileUtil.generateFile(app, srcPath).getAbsolutePath(), FileUtil.generateFile(app, destPath).getAbsolutePath()}, 2));
            Intrinsics.g(str, "format(format, *args)");
            sendErrorMsg$default(this, callback, str, false, 4, null);
            return;
        }
        File parentFile = FileUtil.generateFile(app, destPath).getParentFile();
        if (parentFile == null || !parentFile.exists()) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format("fail no such file or directory: F10007, copyFile %s -> %s", Arrays.copyOf(new Object[]{FileUtil.generateFile(app, srcPath).getAbsolutePath(), FileUtil.generateFile(app, destPath).getAbsolutePath()}, 2));
            Intrinsics.g(str2, "format(format, *args)");
            sendErrorMsg$default(this, callback, str2, false, 4, null);
            return;
        }
        if (StringsKt.c0(destPath, TmcConstants.LOCAL_DATA_PATH, false, 2, null) ? FileUtil.checkLocalDataFileDir$default(app, null, 2, null) : FileUtil.checkTempFileDirRunTime$default(app, null, 2, null)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10004, false, 4, null);
            return;
        }
        try {
            zCopyFile = FileUtil.copyFile(app, srcPath, destPath, true, true, new Function3<Boolean, File, File, Unit>() { // from class: com.cloud.tmc.integration.bridge.FileBridge$copyFile$copySuccess$1
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke(((Boolean) obj).booleanValue(), (File) obj2, (File) obj3);
                    return Unit.f67061a;
                }

                public final void invoke(boolean z10, File file, File destFile) {
                    Intrinsics.h(destFile, "destFile");
                    if (z10) {
                        String appId = app.getAppId();
                        Intrinsics.g(appId, "app.appId");
                        FileUtil.notifyNewFileGenerateVUrl$default(appId, null, destFile, null, 8, null);
                    }
                }
            });
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            zCopyFile = false;
        }
        if (zCopyFile) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
            String str3 = String.format("fail permission denied: F10005, copyFile %s -> %s", Arrays.copyOf(new Object[]{FileUtil.generateFile(app, srcPath).getAbsolutePath(), FileUtil.generateFile(app, destPath).getAbsolutePath()}, 2));
            Intrinsics.g(str3, "format(format, *args)");
            sendErrorMsg$default(this, callback, str3, false, 4, null);
        }
    }

    @ActionFilter("fileFstat")
    @ThreadType(ExecutorType.IO)
    public final void fstat(@BindingNode(App.class) App app, @BindingParam(name = {"fd"}) String fd2, @BindingCallback BridgeCallback callback) {
        if (app == null || fd2 == null || fd2.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        Object data = app.getData(FileCache.class, true);
        Intrinsics.g(data, "app.getData(FileCache::class.java, true)");
        WeakReference<File> weakReference = ((FileCache) data).getFileCache().get(fd2);
        File file = weakReference != null ? weakReference.get() : null;
        if (file == null || !FileUtil.access(file)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10003, false, 4, null);
            return;
        }
        if (callback != null) {
            try {
                callback.sendSuccessResponse(JsonObjectUtils.create().add("stats", generateFileStat(file)).build());
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2.getMessage(), th2);
                sendErrorMsg$default(this, callback, ERROR_MSG_F10005, false, 4, null);
            }
        }
    }

    @ActionFilter("fileGetFileInfo")
    @ThreadType(ExecutorType.NORMAL)
    public final void getFileInfo(@BindingNode(App.class) App app, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String filePath, @BindingCallback BridgeCallback callback) {
        if (app == null || filePath == null || filePath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        File file = FileUtil.getFile(app, filePath);
        if (FileUtil.access(file)) {
            Long lValueOf = file != null ? Long.valueOf(FileExtKt.getTotalSize(file)) : null;
            if (callback != null) {
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("size", lValueOf).build());
                return;
            }
            return;
        }
        if (!FileUtil.accessDir(app, filePath)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10006, false, 4, null);
            return;
        }
        long totalSize = FileExtKt.getTotalSize(FileUtil.generateFile(app, filePath));
        if (callback != null) {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("size", Long.valueOf(totalSize)).build());
        }
    }

    @ActionFilter("fileMkdir")
    @ThreadType(ExecutorType.IO)
    public final void mkdir(@BindingNode(App.class) App app, @BindingParam(name = {"dirPath"}) String dirPath, @BindingParam(name = {"recursive"}) boolean recursive, @BindingCallback BridgeCallback callback) {
        boolean zMkdirs;
        if (app == null || dirPath == null || dirPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File fileGenerateFile = FileUtil.generateFile(app, dirPath);
        if (fileGenerateFile.exists() && !recursive) {
            sendErrorMsg$default(this, callback, "fail file already exists " + fileGenerateFile.getAbsolutePath(), false, 4, null);
            return;
        }
        if (!FileUtil.accessDir(fileGenerateFile.getParentFile()) && !recursive) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + fileGenerateFile.getAbsolutePath(), false, 4, null);
            return;
        }
        try {
            if (fileGenerateFile.exists()) {
                zMkdirs = fileGenerateFile.isDirectory();
            } else {
                zMkdirs = recursive ? fileGenerateFile.mkdirs() : fileGenerateFile.mkdir();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            zMkdirs = false;
        }
        if (zMkdirs) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else {
            sendErrorMsg$default(this, callback, "fail permission denied: F10005, open " + fileGenerateFile.getAbsolutePath(), false, 4, null);
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

    @ActionFilter("fileOpen")
    @ThreadType(ExecutorType.IO)
    public final void open(@BindingNode(App.class) App app, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String filePath, @BindingParam(name = {"flag"}, stringDefault = CampaignEx.JSON_KEY_AD_R) String flag, @BindingCallback BridgeCallback callback) {
        String strOpen;
        Intrinsics.h(flag, "flag");
        if (app == null || filePath == null || filePath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File file = FileUtil.getFile(app, filePath);
        if (file == null) {
            file = FileUtil.generateFile(app, filePath);
        }
        if (!FileUtil.accessDir(file.getParentFile())) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + file.getAbsolutePath(), false, 4, null);
            return;
        }
        try {
            strOpen = FileUtil.open(app, file, flag);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            strOpen = null;
        }
        if (strOpen != null) {
            if (callback != null) {
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("fd", strOpen).build());
            }
        } else if (callback != null) {
            callback.sendFailResponse();
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:67:0x0125 A[Catch: all -> 0x0140, TryCatch #0 {all -> 0x0140, blocks: (B:61:0x00e1, B:65:0x00fd, B:67:0x0125, B:70:0x0143), top: B:86:0x00e1, outer: #2 }] */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00d5, code lost:
    
        if (r6.equals(com.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_AD_R) != false) goto L60;
     */
    @ActionFilter("fileRead")
    @ThreadType(ExecutorType.IO)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void read(@BindingNode(App.class) App app, @BindingParam(name = {"fd"}) String fd2, @BindingParam(name = {"length"}) int length, @BindingParam(name = {RequestParameters.POSITION}) long position, @BindingCallback BridgeCallback callback) {
        BufferedInputStream bufferedInputStream;
        int iAvailable;
        byte[] bArr;
        int i11;
        if (app == null || fd2 == null || fd2.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        Object data = app.getData(FileCache.class, true);
        Intrinsics.g(data, "app.getData(FileCache::class.java, true)");
        FileCache fileCache = (FileCache) data;
        String str = fileCache.getFlags().get(fd2);
        if (str == null) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        WeakReference<File> weakReference = fileCache.getFileCache().get(fd2);
        File file = weakReference != null ? weakReference.get() : null;
        if (file == null || !FileUtil.access(file)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10003, false, 4, null);
            return;
        }
        if (FileExtKt.getTotalSize(file) > 104857600) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10008, false, 4, null);
            return;
        }
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != 114) {
                if (iHashCode == 3050) {
                    if (str.equals("a+")) {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        iAvailable = bufferedInputStream.available();
                        TmcLogger.d(TAG, "total size: " + iAvailable);
                        if (length == 0) {
                            iAvailable = length;
                        }
                        bArr = new byte[iAvailable];
                        TmcLogger.d(TAG, "position: " + position + " , skip: " + bufferedInputStream.skip(position));
                        i11 = bufferedInputStream.read(bArr);
                        if (callback != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("bytesRead", Integer.valueOf(i11));
                            jsonObject.addProperty("arrayBuffer", HexUtil.formatHexString(bArr));
                            callback.sendSuccessResponse(jsonObject);
                        }
                        TmcLogger.d(TAG, "read File finish");
                        CloseableKt.a(bufferedInputStream, null);
                        return;
                    }
                    throw new Exception("Permission not supported for reading to file");
                }
                if (iHashCode == 3577) {
                    if (str.equals("r+")) {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        iAvailable = bufferedInputStream.available();
                        TmcLogger.d(TAG, "total size: " + iAvailable);
                        if (length == 0) {
                            iAvailable = length;
                        }
                        bArr = new byte[iAvailable];
                        TmcLogger.d(TAG, "position: " + position + " , skip: " + bufferedInputStream.skip(position));
                        i11 = bufferedInputStream.read(bArr);
                        if (callback != null) {
                            JsonObject jsonObject2 = new JsonObject();
                            jsonObject2.addProperty("bytesRead", Integer.valueOf(i11));
                            jsonObject2.addProperty("arrayBuffer", HexUtil.formatHexString(bArr));
                            callback.sendSuccessResponse(jsonObject2);
                        }
                        TmcLogger.d(TAG, "read File finish");
                        CloseableKt.a(bufferedInputStream, null);
                        return;
                    }
                    throw new Exception("Permission not supported for reading to file");
                }
                if (iHashCode == 3732) {
                    if (str.equals("w+")) {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        iAvailable = bufferedInputStream.available();
                        TmcLogger.d(TAG, "total size: " + iAvailable);
                        if (length == 0) {
                            iAvailable = length;
                        }
                        bArr = new byte[iAvailable];
                        TmcLogger.d(TAG, "position: " + position + " , skip: " + bufferedInputStream.skip(position));
                        i11 = bufferedInputStream.read(bArr);
                        if (callback != null) {
                            JsonObject jsonObject3 = new JsonObject();
                            jsonObject3.addProperty("bytesRead", Integer.valueOf(i11));
                            jsonObject3.addProperty("arrayBuffer", HexUtil.formatHexString(bArr));
                            callback.sendSuccessResponse(jsonObject3);
                        }
                        TmcLogger.d(TAG, "read File finish");
                        CloseableKt.a(bufferedInputStream, null);
                        return;
                    }
                    throw new Exception("Permission not supported for reading to file");
                }
                if (iHashCode == 96825) {
                    if (str.equals("as+")) {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        iAvailable = bufferedInputStream.available();
                        TmcLogger.d(TAG, "total size: " + iAvailable);
                        if (length == 0) {
                            iAvailable = length;
                        }
                        bArr = new byte[iAvailable];
                        TmcLogger.d(TAG, "position: " + position + " , skip: " + bufferedInputStream.skip(position));
                        i11 = bufferedInputStream.read(bArr);
                        if (callback != null) {
                            JsonObject jsonObject4 = new JsonObject();
                            jsonObject4.addProperty("bytesRead", Integer.valueOf(i11));
                            jsonObject4.addProperty("arrayBuffer", HexUtil.formatHexString(bArr));
                            callback.sendSuccessResponse(jsonObject4);
                        }
                        TmcLogger.d(TAG, "read File finish");
                        CloseableKt.a(bufferedInputStream, null);
                        return;
                    }
                    throw new Exception("Permission not supported for reading to file");
                }
                if (iHashCode == 96980) {
                    if (str.equals("ax+")) {
                        bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                        iAvailable = bufferedInputStream.available();
                        TmcLogger.d(TAG, "total size: " + iAvailable);
                        if (length == 0) {
                            iAvailable = length;
                        }
                        bArr = new byte[iAvailable];
                        TmcLogger.d(TAG, "position: " + position + " , skip: " + bufferedInputStream.skip(position));
                        i11 = bufferedInputStream.read(bArr);
                        if (callback != null) {
                            JsonObject jsonObject5 = new JsonObject();
                            jsonObject5.addProperty("bytesRead", Integer.valueOf(i11));
                            jsonObject5.addProperty("arrayBuffer", HexUtil.formatHexString(bArr));
                            callback.sendSuccessResponse(jsonObject5);
                        }
                        TmcLogger.d(TAG, "read File finish");
                        CloseableKt.a(bufferedInputStream, null);
                        return;
                    }
                    throw new Exception("Permission not supported for reading to file");
                }
                if (iHashCode == 118122 && str.equals("wx+")) {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                    try {
                        iAvailable = bufferedInputStream.available();
                        TmcLogger.d(TAG, "total size: " + iAvailable);
                        if (length == 0) {
                            iAvailable = length;
                        }
                        bArr = new byte[iAvailable];
                        TmcLogger.d(TAG, "position: " + position + " , skip: " + bufferedInputStream.skip(position));
                        i11 = bufferedInputStream.read(bArr);
                        if (callback != null) {
                            JsonObject jsonObject6 = new JsonObject();
                            jsonObject6.addProperty("bytesRead", Integer.valueOf(i11));
                            jsonObject6.addProperty("arrayBuffer", HexUtil.formatHexString(bArr));
                            callback.sendSuccessResponse(jsonObject6);
                        }
                        TmcLogger.d(TAG, "read File finish");
                        CloseableKt.a(bufferedInputStream, null);
                        return;
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            CloseableKt.a(bufferedInputStream, th2);
                            throw th3;
                        }
                    }
                }
                throw new Exception("Permission not supported for reading to file");
            }
        } catch (Throwable th4) {
            TmcLogger.e(TAG, th4.getMessage(), th4);
            sendErrorMsg$default(this, callback, ERROR_MSG_F10005, false, 4, null);
        }
    }

    @ActionFilter("fileReadDir")
    @ThreadType(ExecutorType.IO)
    public final void readDir(@BindingNode(App.class) App app, @BindingParam(name = {"dirPath"}) String dirPath, @BindingCallback BridgeCallback callback) {
        if (app == null || dirPath == null || dirPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File fileGenerateFile = FileUtil.generateFile(app, dirPath);
        if (!FileUtil.accessDir(fileGenerateFile)) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + dirPath, false, 4, null);
            return;
        }
        try {
            File[] fileArrListFiles = FileExtKt.listFiles(fileGenerateFile, false, new Function1<File, Boolean>() { // from class: com.cloud.tmc.integration.bridge.FileBridge$readDir$files$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(File f11) {
                    Intrinsics.h(f11, "f");
                    return Boolean.valueOf(f11.isFile());
                }
            });
            JsonArray jsonArray = new JsonArray(fileArrListFiles.length);
            for (File file : fileArrListFiles) {
                jsonArray.add(file.getName());
            }
            if (callback != null) {
                callback.sendSuccessResponse(JsonObjectUtils.create().add("files", jsonArray).build());
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            sendErrorMsg$default(this, callback, "fail permission denied: F10005 , open " + fileGenerateFile.getAbsolutePath(), false, 4, null);
        }
    }

    @ActionFilter("fileReadFile")
    @ThreadType(ExecutorType.IO)
    public final void readFile(@BindingNode(App.class) App app, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String filePath, @BindingParam(name = {"encoding"}) String encoding, @BindingParam(name = {RequestParameters.POSITION}) int position, @BindingParam(name = {"length"}) int length, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(encoding, "encoding");
        if (app == null || filePath == null || filePath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File file = FileUtil.getFile(app, filePath);
        if (file == null) {
            file = FileUtil.generateFile(app, filePath);
        }
        if (!FileUtil.access(file)) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + file.getAbsolutePath(), false, 4, null);
            return;
        }
        if (FileExtKt.getTotalSize(file) > 104857600) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10008, false, 4, null);
            return;
        }
        byte[] file2BytesByStream = FileIOUtils.readFile2BytesByStream(file);
        Intrinsics.g(file2BytesByStream, "readFile2BytesByStream(file)");
        byte[] bArrSubArray = ArrayUtils.subArray(file2BytesByStream, position, length != 0 ? position + length : file2BytesByStream.length);
        if (encoding.length() == 0) {
            if (callback != null) {
                JsonObject jsonObject = new JsonObject();
                if (bArrSubArray == null) {
                    bArrSubArray = ArrayUtils.newByteArray(new byte[0]);
                    Intrinsics.g(bArrSubArray, "newByteArray()");
                }
                jsonObject.addProperty("data", HexUtil.formatHexString(bArrSubArray));
                callback.sendSuccessResponse(jsonObject);
                return;
            }
            return;
        }
        try {
            FileUtil.checkEncoding(encoding);
            String byteArrayByDecode = bArrSubArray == null ? "" : FileUtil.getByteArrayByDecode(bArrSubArray, encoding);
            if (callback != null) {
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("data", byteArrayByDecode);
                callback.sendSuccessResponse(jsonObject2);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            sendErrorMsg$default(this, callback, "the named is " + encoding + " charset is not supported!", false, 4, null);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void readSDDir(@BindingNode(App.class) App app, @BindingParam(name = {"dirPath"}) final String dirPath, @BindingCallback final BridgeCallback callback) {
        AppContext appContext;
        final Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        if (context == null || dirPath == null || dirPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        final Function1<File, Unit> function1 = new Function1<File, Unit>() { // from class: com.cloud.tmc.integration.bridge.FileBridge$readSDDir$block$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((File) obj);
                return Unit.f67061a;
            }

            public final void invoke(File file) {
                Intrinsics.h(file, "file");
                try {
                    if (!file.isDirectory()) {
                        FileBridge.sendErrorMsg$default(this.this$0, callback, "parameter error: F10001 " + dirPath, false, 4, null);
                        return;
                    }
                    if (!FileUtil.accessDir(file)) {
                        FileBridge.sendErrorMsg$default(this.this$0, callback, "fail no such file or directory: F10007 " + dirPath, false, 4, null);
                        return;
                    }
                    JsonArray jsonArray = new JsonArray();
                    if (Build.VERSION.SDK_INT >= 30) {
                        jsonArray = FileUtil.readSDDownloadDir(context, StringsKt.n1(dirPath).toString());
                    } else {
                        for (File file2 : FileExtKt.listFiles$default(file, false, null, 2, null)) {
                            JsonObject jsonObject = new JsonObject();
                            StructStat stat = FileUtil.getStat(file);
                            jsonObject.addProperty("fileName", file2.getName());
                            jsonObject.addProperty(NativeRequestBridge.KEY_FILE_PATH, file2.getAbsolutePath());
                            jsonObject.addProperty("lastModifiedTime", Long.valueOf(stat != null ? stat.st_atime : 0L));
                            jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, FileUtil.getType(file2));
                            jsonArray.add(jsonObject);
                        }
                    }
                    BridgeCallback bridgeCallback = callback;
                    if (bridgeCallback != null) {
                        bridgeCallback.sendSuccessResponse(JsonObjectUtils.create().add("files", jsonArray).build());
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("FileBridge", th2.getMessage(), th2);
                    FileBridge.sendErrorMsg$default(this.this$0, callback, "fail permission denied: F10005 , open " + file.getAbsolutePath(), false, 4, null);
                }
            }
        };
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            String absolutePath = externalStorageDirectory != null ? externalStorageDirectory.getAbsolutePath() : null;
            if (absolutePath == null) {
                sendErrorMsg$default(this, callback, ERROR_MSG_F10006, false, 4, null);
                return;
            }
            if (new Regex(absolutePath).containsMatchIn(dirPath)) {
                PermissionUtils.permissionGroup(PermissionConstants.STORAGE).callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.integration.bridge.FileBridge.readSDDir.1
                    @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                    public void onDenied() {
                        FileBridge.sendErrorMsg$default(this, callback, FileBridge.ERROR_MSG_F10005, false, 4, null);
                    }

                    @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                    public void onGranted() {
                        function1.invoke(new File(dirPath));
                    }
                }).request();
                return;
            }
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + dirPath, false, 4, null);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            sendErrorMsg$default(this, callback, "fail permission denied: F10005 , open " + dirPath, false, 4, null);
        }
    }

    @ActionFilter("fileRename")
    @ThreadType(ExecutorType.IO)
    public final void rename(@BindingNode(App.class) App app, @BindingParam(name = {"oldPath"}) String oldPath, @BindingParam(name = {"newPath"}) String newPath, @BindingCallback BridgeCallback callback) {
        boolean zRename;
        if (app == null || oldPath == null || oldPath.length() == 0 || newPath == null || newPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (TextUtils.equals(oldPath, newPath)) {
            if (callback != null) {
                callback.sendSuccessResponse();
                return;
            }
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File file = FileUtil.getFile(app, oldPath);
        boolean zAccess = FileUtil.access(file);
        if (file == null || !zAccess) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("fail no such file or directory: F10007, rename %s -> %s", Arrays.copyOf(new Object[]{FileUtil.generateFile(app, oldPath).getAbsolutePath(), FileUtil.generateFile(app, newPath).getAbsolutePath()}, 2));
            Intrinsics.g(str, "format(format, *args)");
            sendErrorMsg$default(this, callback, str, false, 4, null);
            return;
        }
        File fileGenerateFile = FileUtil.generateFile(app, newPath);
        if (!FileUtil.accessDir(fileGenerateFile.getParentFile())) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format("fail no such file or directory: F10007, rename %s -> %s", Arrays.copyOf(new Object[]{file.getAbsolutePath(), fileGenerateFile.getAbsolutePath()}, 2));
            Intrinsics.g(str2, "format(format, *args)");
            sendErrorMsg$default(this, callback, str2, false, 4, null);
            return;
        }
        try {
            zRename = FileExtKt.rename(file, fileGenerateFile);
            if (zRename) {
                String appId = app.getAppId();
                Intrinsics.g(appId, "app.appId");
                FileUtil.notifyNewFileGenerateVUrl$default(appId, file, fileGenerateFile, null, 8, null);
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            zRename = false;
        }
        if (zRename) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
            String str3 = String.format("fail permission denied: F10005, rename %s -> %s", Arrays.copyOf(new Object[]{file.getAbsolutePath(), fileGenerateFile.getAbsolutePath()}, 2));
            Intrinsics.g(str3, "format(format, *args)");
            sendErrorMsg$default(this, callback, str3, false, 4, null);
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void requestSDPermission(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        AppContext appContext;
        Context context = (app == null || (appContext = app.getAppContext()) == null) ? null : appContext.getContext();
        if (context == null) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        try {
            requestStoragePermission(context, callback);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            sendErrorMsg$default(this, callback, ERROR_MSG_F10005, false, 4, null);
        }
    }

    @ActionFilter("fileRmdir")
    @ThreadType(ExecutorType.IO)
    public final void rmdir(@BindingNode(App.class) App app, @BindingParam(name = {"dirPath"}) String dirPath, @BindingParam(name = {"recursive"}) boolean recursive, @BindingCallback BridgeCallback callback) {
        boolean zDeleteDir;
        if (app == null || dirPath == null || dirPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File fileGenerateFile = FileUtil.generateFile(app, dirPath);
        if (!FileUtil.accessDir(fileGenerateFile)) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + fileGenerateFile.getAbsolutePath(), false, 4, null);
            return;
        }
        try {
            zDeleteDir = FileExtKt.deleteDir(fileGenerateFile, recursive);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            zDeleteDir = false;
        }
        if (zDeleteDir) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else {
            sendErrorMsg$default(this, callback, "fail permission denied: F10005, open " + fileGenerateFile.getAbsolutePath() + "}", false, 4, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ActionFilter("fileSaveFile")
    @ThreadType(ExecutorType.IO)
    public final void saveFile(@BindingNode(App.class) final App app, @BindingParam(name = {NativeRequestBridge.KEY_TEMP_FILE_PATH}) String tempFilePath, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String filePath, @BindingCallback BridgeCallback callback) {
        if (app == null || tempFilePath == null || tempFilePath.length() == 0 || filePath == null || filePath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        if (FileUtil.access(app, tempFilePath)) {
            boolean zCopyFile = false;
            if (!StringsKt.W(tempFilePath, TmcConstants.LOCAL_DATA_PATH, false, 2, null)) {
                File fileGenerateFile = FileUtil.generateFile(app, filePath);
                if (!FileUtil.accessDir(fileGenerateFile.getParentFile()) || !StringsKt.W(filePath, TmcConstants.LOCAL_DATA_PATH, false, 2, null)) {
                    sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + fileGenerateFile.getAbsolutePath(), false, 4, null);
                    return;
                }
                if (StringsKt.c0(filePath, TmcConstants.LOCAL_DATA_PATH, false, 2, null) ? FileUtil.checkLocalDataFileDir$default(app, null, 2, null) : FileUtil.checkTempFileDirRunTime$default(app, null, 2, null)) {
                    sendErrorMsg$default(this, callback, ERROR_MSG_F10004, false, 4, null);
                    return;
                }
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                try {
                    zCopyFile = FileUtil.copyFile(app, tempFilePath, filePath, true, false, new Function3<Boolean, File, File, Unit>() { // from class: com.cloud.tmc.integration.bridge.FileBridge$saveFile$copySuccess$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                            invoke(((Boolean) obj).booleanValue(), (File) obj2, (File) obj3);
                            return Unit.f67061a;
                        }

                        /* JADX WARN: Type inference failed for: r9v1, types: [T, java.lang.String] */
                        public final void invoke(boolean z10, File file, File file2) {
                            if (z10) {
                                Ref.ObjectRef<String> objectRef2 = objectRef;
                                String appId = app.getAppId();
                                Intrinsics.g(appId, "app.appId");
                                Intrinsics.e(file2);
                                objectRef2.element = FileUtil.notifyNewFileGenerateVUrl$default(appId, file, file2, null, 8, null);
                            }
                        }
                    });
                } catch (Exception e11) {
                    TmcLogger.e(TAG, e11.getMessage(), e11);
                }
                if (!zCopyFile) {
                    sendErrorMsg$default(this, callback, "fail permission denied: F10005, open " + fileGenerateFile.getAbsolutePath(), false, 4, null);
                    return;
                }
                if (callback != null) {
                    JsonObject jsonObject = new JsonObject();
                    String str = (String) objectRef.element;
                    if (str == null) {
                        str = "";
                    }
                    jsonObject.addProperty("savedFilePath", str);
                    callback.sendSuccessResponse(jsonObject);
                    return;
                }
                return;
            }
        }
        sendErrorMsg$default(this, callback, "fail tempFilePath file not exist", false, 4, null);
    }

    @ActionFilter("fileStat")
    @ThreadType(ExecutorType.IO)
    public final void stat(@BindingNode(App.class) App app, @BindingParam(name = {"path"}) String path, @BindingParam(name = {"recursive"}) boolean recursive, @BindingCallback BridgeCallback callback) {
        if (app == null || path == null || path.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File fileGenerateFile = FileUtil.generateFile(app, path);
        try {
            File file = FileUtil.getFile(app, path);
            if (file != null && FileUtil.access(file)) {
                if (callback != null) {
                    callback.sendSuccessResponse(JsonObjectUtils.create().add("stats", generateFileStat(file)).build());
                    return;
                }
                return;
            }
            if (!FileUtil.accessDir(app, path)) {
                sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + fileGenerateFile.getAbsolutePath(), false, 4, null);
                return;
            }
            File[] fileArrListFiles = FileExtKt.listFiles(fileGenerateFile, recursive, new Function1<File, Boolean>() { // from class: com.cloud.tmc.integration.bridge.FileBridge$stat$files$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(File f11) {
                    Intrinsics.h(f11, "f");
                    return Boolean.valueOf(f11.isFile());
                }
            });
            JsonArray jsonArray = new JsonArray(fileArrListFiles.length);
            jsonArray.add(JsonObjectUtils.create().addProperty("path", File.separator).add("stats", generateFileStat(fileGenerateFile)).build());
            for (File file2 : fileArrListFiles) {
                JsonObjectUtils.Builder builderCreate = JsonObjectUtils.create();
                String absolutePath = file2.getAbsolutePath();
                Intrinsics.g(absolutePath, "childFile.absolutePath");
                jsonArray.add(builderCreate.addProperty("path", StringsKt.Q(absolutePath, fileGenerateFile.getAbsolutePath() + File.separator, "", false, 4, null)).add("stats", generateFileStat(file2)).build());
            }
            if (callback != null) {
                callback.sendSuccessResponse(JsonObjectUtils.create().add("stats", jsonArray).build());
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            sendErrorMsg$default(this, callback, "fail permission denied: F10005, open " + fileGenerateFile.getAbsolutePath(), false, 4, null);
        }
    }

    @ActionFilter("fileUnlink")
    @ThreadType(ExecutorType.IO)
    public final void unlink(@BindingNode(App.class) App app, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String filePath, @BindingCallback BridgeCallback callback) {
        boolean z10 = false;
        if (app == null || filePath == null || filePath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File file = FileUtil.getFile(app, filePath);
        if (file == null) {
            file = FileUtil.generateFile(app, filePath);
        }
        if (FileUtil.accessDir(file)) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format("fail operation not permitted, unlink %s", Arrays.copyOf(new Object[]{file.getAbsolutePath()}, 1));
            Intrinsics.g(str, "format(format, *args)");
            sendErrorMsg$default(this, callback, str, false, 4, null);
            return;
        }
        if (!FileUtil.access(app, filePath)) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007 " + file.getAbsolutePath(), false, 4, null);
            return;
        }
        if (!FileUtil.isFileInAppPrivateDirectory(file)) {
            sendErrorMsg$default(this, callback, "deletion of public space files is not allowed: F10009 " + file.getAbsolutePath(), false, 4, null);
            return;
        }
        try {
            boolean delete = FileExtKt.getDelete(file);
            if (delete) {
                FileUtil.notifyOldFileRemoveVUrl(file);
            }
            z10 = delete;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
        if (z10) {
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } else {
            sendErrorMsg$default(this, callback, "fail permission denied: F10005 " + file.getAbsolutePath(), false, 4, null);
        }
    }

    @ActionFilter("fileUnzip")
    @ThreadType(ExecutorType.IO)
    public final void unzip(@BindingNode(App.class) App app, @BindingParam(name = {"zipFilePath"}) String zipFilePath, @BindingParam(name = {"targetPath"}) String targetPath, @BindingCallback BridgeCallback callback) {
        if (app == null || zipFilePath == null || zipFilePath.length() == 0 || targetPath == null || targetPath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!getSdCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File fileGenerateFile = FileUtil.generateFile(app, zipFilePath);
        File fileGenerateFile2 = FileUtil.generateFile(app, targetPath);
        if (!FileUtil.access(app, zipFilePath) || !FileUtil.accessDir(fileGenerateFile2)) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007, unzip " + fileGenerateFile.getAbsolutePath() + " -> " + fileGenerateFile2.getAbsolutePath(), false, 4, null);
            return;
        }
        try {
            CompressUtils.unzip(fileGenerateFile.getAbsoluteFile(), fileGenerateFile2.getAbsolutePath());
            if (callback != null) {
                callback.sendSuccessResponse();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "unzip: " + th2.getMessage(), th2);
            sendErrorMsg$default(this, callback, "fail permission denied: F10005, unzip " + fileGenerateFile.getAbsolutePath() + " -> " + fileGenerateFile2.getAbsolutePath(), false, 4, null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0103, code lost:
    
        if (r4.equals("w") != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0111, code lost:
    
        if (r4.equals("a") != false) goto L72;
     */
    @ActionFilter("fileWrite")
    @ThreadType(ExecutorType.IO)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void write(@BindingNode(App.class) App app, @BindingParam(name = {"fd"}) String fd2, @BindingParam(name = {"data"}) String data, @BindingParam(name = {"encoding"}, stringDefault = "utf8") String encoding, @BindingParam(name = {RequestParameters.POSITION}) int position, @BindingCallback BridgeCallback callback) {
        FileOutputStream fileOutputStream;
        Intrinsics.h(data, "data");
        Intrinsics.h(encoding, "encoding");
        if (app == null || fd2 == null || fd2.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        Object data2 = app.getData(FileCache.class, true);
        Intrinsics.g(data2, "app.getData(FileCache::class.java, true)");
        FileCache fileCache = (FileCache) data2;
        String str = fileCache.getFlags().get(fd2);
        if (str == null) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        WeakReference<File> weakReference = fileCache.getFileCache().get(fd2);
        File file = weakReference != null ? weakReference.get() : null;
        if (!FileUtil.access(file)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10003, false, 4, null);
            return;
        }
        try {
            FileUtil.checkEncoding(encoding);
            byte[] byteArrayByEncode = FileUtil.getByteArrayByEncode(data, encoding);
            int defaultBufferSize = FileUtil.getDefaultBufferSize();
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayByEncode);
            try {
                int iHashCode = str.hashCode();
                if (iHashCode != 97) {
                    if (iHashCode != 119) {
                        if (iHashCode == 3050) {
                            if (str.equals("a+")) {
                                fileOutputStream = new FileOutputStream(file, true);
                            }
                            throw new Exception("Permission not supported for writing to file");
                        }
                        if (iHashCode == 3122) {
                            if (str.equals("as")) {
                                fileOutputStream = new FileOutputStream(file, true);
                            }
                            throw new Exception("Permission not supported for writing to file");
                        }
                        if (iHashCode == 3127) {
                            if (str.equals("ax")) {
                                fileOutputStream = new FileOutputStream(file, true);
                            }
                            throw new Exception("Permission not supported for writing to file");
                        }
                        if (iHashCode == 3732) {
                            if (str.equals("w+")) {
                                fileOutputStream = new FileOutputStream(file, false);
                            }
                            throw new Exception("Permission not supported for writing to file");
                        }
                        if (iHashCode == 3809) {
                            if (str.equals("wx")) {
                                fileOutputStream = new FileOutputStream(file, false);
                            }
                            throw new Exception("Permission not supported for writing to file");
                        }
                        if (iHashCode == 96825) {
                            if (str.equals("as+")) {
                                fileOutputStream = new FileOutputStream(file, true);
                            }
                            throw new Exception("Permission not supported for writing to file");
                        }
                        if (iHashCode != 96980) {
                            if (iHashCode == 118122 && str.equals("wx+")) {
                                fileOutputStream = new FileOutputStream(file, false);
                            }
                        } else if (str.equals("ax+")) {
                            fileOutputStream = new FileOutputStream(file, true);
                        }
                        throw new Exception("Permission not supported for writing to file");
                    }
                }
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream, defaultBufferSize);
                try {
                    byte[] bArr = new byte[defaultBufferSize];
                    Ref.IntRef intRef = new Ref.IntRef();
                    int i11 = 0;
                    while (true) {
                        int i12 = byteArrayInputStream.read(bArr);
                        intRef.element = i12;
                        if (i12 == -1) {
                            bufferedOutputStream.flush();
                            if (callback != null) {
                                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("bytesWritten", Integer.valueOf(i11)).build());
                            }
                            TmcLogger.d(TAG, "write File finish");
                            CloseableKt.a(bufferedOutputStream, null);
                            CloseableKt.a(byteArrayInputStream, null);
                            return;
                        }
                        int i13 = i11 == 0 ? position : 0;
                        if (i11 == 0) {
                            i12 -= position;
                        }
                        if (i12 < 0) {
                            sendErrorMsg$default(this, callback, "Invalid position: " + position + ", The offset is more than the length of the written data!", false, 4, null);
                            CloseableKt.a(bufferedOutputStream, null);
                            CloseableKt.a(byteArrayInputStream, null);
                            return;
                        }
                        bufferedOutputStream.write(bArr, i13, i12);
                        i11 += i12;
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.a(bufferedOutputStream, th2);
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                try {
                    throw th4;
                } catch (Throwable th5) {
                    CloseableKt.a(byteArrayInputStream, th4);
                    throw th5;
                }
            }
        } catch (UnsupportedEncodingException e11) {
            TmcLogger.e(TAG, e11.getMessage(), e11);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str2 = String.format("the named is %s charset is not supported!", Arrays.copyOf(new Object[]{encoding}, 1));
            Intrinsics.g(str2, "format(format, *args)");
            sendErrorMsg$default(this, callback, str2, false, 4, null);
        } catch (Throwable th6) {
            TmcLogger.e(TAG, th6.getMessage(), th6);
            sendErrorMsg$default(this, callback, ERROR_MSG_F10005, false, 4, null);
        }
    }

    @ActionFilter("fileWriteFile")
    @ThreadType(ExecutorType.IO)
    public final void writeFile(@BindingNode(App.class) App app, @BindingParam(name = {NativeRequestBridge.KEY_FILE_PATH}) String filePath, @BindingParam(name = {"data"}) String data, @BindingParam(name = {"encoding"}, stringDefault = "utf8") String encoding, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(data, "data");
        Intrinsics.h(encoding, "encoding");
        if (app == null || filePath == null || filePath.length() == 0) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10001, false, 4, null);
            return;
        }
        if (!FileUtil.isSDCardEnableByEnvironment()) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10002, false, 4, null);
            return;
        }
        File file = FileUtil.getFile(app, filePath);
        if (file == null) {
            file = FileUtil.generateFile(app, filePath);
        }
        if (!FileUtil.accessDir(file.getParentFile())) {
            sendErrorMsg$default(this, callback, "fail no such file or directory: F10007, open " + file.getAbsolutePath(), false, 4, null);
            return;
        }
        if (StringsKt.c0(filePath, TmcConstants.LOCAL_DATA_PATH, false, 2, null) ? FileUtil.checkLocalDataFileDir$default(app, null, 2, null) : FileUtil.checkTempFileDirRunTime$default(app, null, 2, null)) {
            sendErrorMsg$default(this, callback, ERROR_MSG_F10004, false, 4, null);
            return;
        }
        if (!FileUtil.createFile(app, filePath)) {
            sendErrorMsg$default(this, callback, "fail permission denied: F10005, open " + file.getAbsolutePath(), false, 4, null);
            return;
        }
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        FileUtil.notifyNewFileGenerateVUrl$default(appId, null, file, null, 8, null);
        try {
            FileUtil.checkEncoding(encoding);
            byte[] byteArrayByEncode = FileUtil.getByteArrayByEncode(data, encoding);
            int defaultBufferSize = FileUtil.getDefaultBufferSize();
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(byteArrayByEncode);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), defaultBufferSize);
                try {
                    byte[] bArr = new byte[defaultBufferSize];
                    int i11 = 0;
                    while (true) {
                        int i12 = byteArrayInputStream.read(bArr);
                        if (i12 == -1) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, i12);
                        i11 += i12;
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.a(byteArrayInputStream, th);
                            throw th2;
                        }
                    }
                    bufferedOutputStream.flush();
                    if (callback != null) {
                        callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("bytesWritten", Integer.valueOf(i11)).build());
                    }
                    TmcLogger.d(TAG, "writeFile File finish");
                    Unit unit = Unit.f67061a;
                    CloseableKt.a(bufferedOutputStream, null);
                    CloseableKt.a(byteArrayInputStream, null);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.a(bufferedOutputStream, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                throw th5;
            }
        } catch (UnsupportedEncodingException e11) {
            TmcLogger.e(TAG, e11.getMessage(), e11);
            sendErrorMsg$default(this, callback, "the named is " + encoding + " charset is not supported!", false, 4, null);
        } catch (Throwable th6) {
            TmcLogger.e(TAG, th6.getMessage(), th6);
            sendErrorMsg$default(this, callback, "fail permission denied: F10005, open " + file.getAbsolutePath(), false, 4, null);
        }
    }
}
