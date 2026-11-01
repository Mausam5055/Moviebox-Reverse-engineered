package com.cloud.tmc.integration.utils;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.support.v4.media.session.PlaybackStateCompat;
import android.system.ErrnoException;
import android.system.Os;
import android.system.StructStat;
import android.util.Base64;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.model.AppStoreInfo;
import com.cloud.tmc.integration.model.FileCache;
import com.cloud.tmc.integration.proxy.AuthorityProxy;
import com.cloud.tmc.integration.proxy.OfflineAppProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppManager;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.EncodeUtils;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.HexUtil;
import com.cloud.tmc.miniutils.util.PathUtils;
import com.cloud.tmc.miniutils.util.SDCardUtils;
import com.cloud.tmc.miniutils.util.Utils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0012\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0012\u0010\f\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0018\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0012\u0010\u0013\u001a\u00020\r2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0007J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0007J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J\u0012\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0007J(\u0010\u001e\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0016\b\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001b\u0018\u00010 H\u0007J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u000e\u0010\"\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010#\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0010\u0010$\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010%\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020'H\u0002J\u0010\u0010(\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J(\u0010)\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0016\b\u0002\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u001b\u0018\u00010 H\u0007J\u000e\u0010*\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020,J\u001d\u0010.\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,2\b\u0010/\u001a\u0004\u0018\u00010'¢\u0006\u0002\u00100J\u001a\u00101\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u00102\u001a\u0004\u0018\u00010\u0004H\u0007JV\u00103\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00104\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020\r2\u0006\u00107\u001a\u00020\r2$\b\u0002\u0010\u001f\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u001b\u0018\u000108H\u0007J\u0018\u00109\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0010\u0010:\u001a\u00020'2\u0006\u0010;\u001a\u00020\u0004H\u0002J\u0010\u0010<\u001a\u00020'2\b\u0010=\u001a\u0004\u0018\u00010\u0004J\u0018\u0010>\u001a\u00020'2\u0006\u0010+\u001a\u00020,2\b\u0010=\u001a\u0004\u0018\u00010\u0004J\u0012\u0010?\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0012\u0010?\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u0010\u0010@\u001a\u00020\u001b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0018\u0010A\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\u001a\u0010A\u001a\u00020\u00122\b\u0010=\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007J\b\u0010B\u001a\u00020\u0004H\u0007J\u0010\u0010C\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u0006H\u0007J\u0010\u0010E\u001a\u00020'2\u0006\u0010+\u001a\u00020,H\u0007J\u0010\u0010F\u001a\u00020'2\u0006\u0010+\u001a\u00020,H\u0007J\u0010\u0010G\u001a\u00020\u00042\u0006\u0010+\u001a\u00020,H\u0007J\u001a\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020J2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0007J\u001a\u0010K\u001a\u00020J2\u0006\u0010I\u001a\u00020\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010L\u001a\u0004\u0018\u00010\u00042\b\u0010M\u001a\u0004\u0018\u00010\u0004H\u0007J\u001c\u0010N\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010O\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010P\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020\u0004H\u0003J\u001c\u0010R\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010O\u001a\u0004\u0018\u00010\u0004H\u0007J \u0010S\u001a\b\u0012\u0004\u0012\u00020U0T2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010O\u001a\u0004\u0018\u00010\u0004H\u0007J\u0014\u0010V\u001a\u0004\u0018\u00010\u00042\b\u0010M\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010W\u001a\u00020'2\u0006\u0010+\u001a\u00020,2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u0018\u0010X\u001a\u00020'2\u0006\u0010+\u001a\u00020,2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u000e\u0010Y\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\b\u0010Z\u001a\u00020'H\u0002J\b\u0010[\u001a\u00020'H\u0002J\u0010\u0010\\\u001a\u00020'2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u0010\u0010]\u001a\u00020'2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u0010\u0010^\u001a\u00020'2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010_\u001a\u00020'H\u0002J\u0010\u0010`\u001a\u00020'2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u001c\u0010a\u001a\u00020\u00042\b\u0010b\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010c\u001a\u00020\u0004H\u0007J\u0012\u0010d\u001a\u0004\u0018\u00010e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J$\u0010f\u001a\u00020\u00042\u0006\u0010g\u001a\u00020\u00062\b\b\u0002\u0010h\u001a\u00020\u00062\b\b\u0002\u0010i\u001a\u00020\u0006H\u0003J\u0010\u0010j\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010k\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u0004H\u0007J\u0010\u0010l\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010m\u001a\u00020\r2\u0006\u0010O\u001a\u00020\u0004H\u0007J\b\u0010n\u001a\u00020\rH\u0007J,\u0010o\u001a\u00020\u00042\u0006\u0010=\u001a\u00020\u00042\b\u0010p\u001a\u0004\u0018\u00010\u00122\u0006\u0010q\u001a\u00020\u00122\b\b\u0002\u0010\u0010\u001a\u00020\u0004H\u0007J\u0010\u0010r\u001a\u00020\u001b2\u0006\u0010p\u001a\u00020\u0012H\u0007J \u0010s\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010t\u001a\u00020\u0004H\u0007J\u0018\u0010u\u001a\u00020v2\u0006\u0010+\u001a\u00020,2\u0006\u0010w\u001a\u00020\u0004H\u0007J\u0018\u0010x\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020,2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u0018\u0010y\u001a\u00020\u001b2\u0006\u0010+\u001a\u00020,2\u0006\u0010=\u001a\u00020\u0004H\u0007J\u0010\u0010z\u001a\u00020\u00042\u0006\u0010O\u001a\u00020\u0004H\u0007J\u0018\u0010{\u001a\u00020\u001b2\u0006\u0010|\u001a\u00020'2\u0006\u0010}\u001a\u00020'H\u0002J\u0012\u0010~\u001a\u00020\u001b2\b\u0010+\u001a\u0004\u0018\u00010,H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0007\u0010\u0002\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u007f"}, d2 = {"Lcom/cloud/tmc/integration/utils/FileUtil;", "", "()V", "TAG", "", "defaultBufferSize", "", "getDefaultBufferSize$annotations", "getDefaultBufferSize", "()I", "setDefaultBufferSize", "(I)V", "access", "", "app", "Lcom/cloud/tmc/integration/structure/App;", "path", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE, "Ljava/io/File;", "accessDir", "addExtension", "name", "extension", "base64ToBitmap", "Landroid/graphics/Bitmap;", "base64", "checkAllMiniAppFileSize", "", "checkEncoding", "encoding", "checkLocalDataFileDir", "block", "Lkotlin/Function1;", "checkLocalDataVUrl", "checkMiniAppFileSizeStatus", "checkMiniappFileSize", "checkMiniappInWhiteList", "checkMiniappInWhiteListAndFilesize", "totalSize", "", "checkTempDataVUrl", "checkTempFileDirRunTime", "clearAllMiniAppCacheData", "context", "Landroid/content/Context;", "clearAllMiniAppData", "clearMiniAppDataUntilSize", "needRemoveSize", "(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;", "close", "fd", "copyFile", "srcPath", "destPath", "overwrite", "reserve", "Lkotlin/Function3;", "createFile", "delectFileAndReturnTotal", "filesPath", "delectMiniapp", "appId", "delectMiniappUserData", "encodeBase64File", "fileTrashClear", "generateFile", "generateNameMills", "generateRandomSuffix", "length", "getAllMiniAppCacheSize", "getAllMiniAppFileSize", "getAllMiniAppFileSizeJson", "getByteArrayByDecode", "data", "", "getByteArrayByEncode", "getExtension", "urlString", "getFile", NativeRequestBridge.KEY_FILE_PATH, "getFileExtension", "pathOrUrl", "getFileFromAllProcessors", "getFileList", "", "Lcom/google/gson/JsonObject;", "getFileName", "getMiniAppCacheSize", "getMiniAppFileSize", "getMiniAppFileStatus", "getMiniappAllDataMaxSize", "getMiniappDefaultDataMaxSize", "getMiniappDownloadZipFileSize", "getMiniappStorageFileSize", "getMiniappUserFileSize", "getMiniappWhiteListDataMaxSize", "getMiniappZipFileSize", "getSafeCharset", "charsetName", "default", "getStat", "Landroid/system/StructStat;", "getSubHashCode", "hashCode", "startIndex", "endIndex", "getType", "getVhost", "isFileInAppPrivateDirectory", "isFilePathValid", "isSDCardEnableByEnvironment", "notifyNewFileGenerateVUrl", "oldFile", "newFile", "notifyOldFileRemoveVUrl", MRAIDPresenter.OPEN, "flag", "readSDDownloadDir", "Lcom/google/gson/JsonArray;", "dirPath", "removeMiniAppFile", "removeMiniAppFileCache", "renameIfFileExists", "reportStorageTrack", "totleSize", "afterClearSize", "sendMediaScanBroadcast", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class FileUtil {
    private static final String TAG = "FileUtil";
    public static final FileUtil INSTANCE = new FileUtil();
    private static int defaultBufferSize = 524288;

    private FileUtil() {
    }

    @JvmStatic
    public static final boolean access(App app, String path) {
        Intrinsics.h(app, "app");
        Intrinsics.h(path, "path");
        return access(getFile(app, path));
    }

    @JvmStatic
    public static final boolean access(File file) {
        return FileUtils.isFileExists(file);
    }

    @JvmStatic
    public static final boolean accessDir(App app, String path) {
        Intrinsics.h(app, "app");
        Intrinsics.h(path, "path");
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        if (StringsKt.c0(path, getVhost(appId), false, 2, null)) {
            return false;
        }
        return accessDir(generateFile(app, checkTempDataVUrl(checkLocalDataVUrl(path))));
    }

    @JvmStatic
    public static final boolean accessDir(File file) {
        return file != null && file.exists() && file.isDirectory();
    }

    @JvmStatic
    public static final String addExtension(String name, String extension) {
        Intrinsics.h(name, "name");
        Intrinsics.h(extension, "extension");
        return name + "." + extension;
    }

    @JvmStatic
    public static final Bitmap base64ToBitmap(String base64) {
        Intrinsics.h(base64, "base64");
        try {
            byte[] bArrDecode = Base64.decode(base64, 2);
            return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @JvmStatic
    public static final void checkAllMiniAppFileSize(App app) {
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @JvmStatic
    public static final void checkEncoding(String encoding) throws UnsupportedEncodingException {
        String lowerCase;
        if (encoding != null) {
            Locale ROOT = Locale.ROOT;
            Intrinsics.g(ROOT, "ROOT");
            lowerCase = encoding.toLowerCase(ROOT);
            Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            switch (lowerCase.hashCode()) {
                case -1396204209:
                    if (lowerCase.equals("base64")) {
                        return;
                    }
                    break;
                case -1388966911:
                    if (lowerCase.equals("binary")) {
                        return;
                    }
                    break;
                case -1109877331:
                    if (lowerCase.equals("latin1")) {
                        return;
                    }
                    break;
                case -119555963:
                    if (lowerCase.equals("utf16le")) {
                        return;
                    }
                    break;
                case 103195:
                    if (lowerCase.equals("hex")) {
                        return;
                    }
                    break;
                case 3584301:
                    if (lowerCase.equals("ucs2")) {
                        return;
                    }
                    break;
                case 3600241:
                    if (lowerCase.equals("utf8")) {
                        return;
                    }
                    break;
                case 93106001:
                    if (lowerCase.equals("ascii")) {
                        return;
                    }
                    break;
                case 111113226:
                    if (lowerCase.equals("ucs-2")) {
                        return;
                    }
                    break;
                case 111607186:
                    if (lowerCase.equals("utf-8")) {
                        return;
                    }
                    break;
                case 584837828:
                    if (lowerCase.equals("utf-16le")) {
                        return;
                    }
                    break;
            }
        }
        throw new UnsupportedEncodingException("the named is " + encoding + " charset is not supported");
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean checkLocalDataFileDir(App app) {
        Intrinsics.h(app, "app");
        return checkLocalDataFileDir$default(app, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean checkLocalDataFileDir(App app, Function1<? super Boolean, Unit> block) {
        Intrinsics.h(app, "app");
        return false;
    }

    public static /* synthetic */ boolean checkLocalDataFileDir$default(App app, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        return checkLocalDataFileDir(app, function1);
    }

    @JvmStatic
    public static final String checkLocalDataVUrl(String path) {
        Intrinsics.h(path, "path");
        if (!StringsKt.c0(path, TmcConstants.LOCAL_DATA_PATH, false, 2, null) || !StringsKt.W(path, "/", false, 2, null)) {
            return path;
        }
        String strSubstring = path.substring(1, path.length());
        Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    @JvmStatic
    public static final boolean checkMiniappFileSize(App app) {
        Intrinsics.h(app, "app");
        String appId = app.getAppId();
        Intrinsics.g(appId, "app.appId");
        long miniappZipFileSize = getMiniappZipFileSize(appId);
        String appId2 = app.getAppId();
        Intrinsics.g(appId2, "app.appId");
        long miniappDownloadZipFileSize = getMiniappDownloadZipFileSize(appId2);
        String appId3 = app.getAppId();
        Intrinsics.g(appId3, "app.appId");
        long miniappStorageFileSize = miniappZipFileSize + miniappDownloadZipFileSize + getMiniappStorageFileSize(appId3);
        TmcLogger.d("[FileUtil]: checkMiniappFileSize all data directory size: " + miniappStorageFileSize);
        FileUtil fileUtil = INSTANCE;
        return miniappStorageFileSize >= fileUtil.getMiniappDefaultDataMaxSize() && !fileUtil.checkMiniappInWhiteListAndFilesize(app, miniappStorageFileSize);
    }

    private final boolean checkMiniappInWhiteList(App app) {
        Object objFromJson = GsonUtils.fromJson(MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINIAPP_DATA_WHITE_LIST, MiniAppConfigHelper.DETAULT_MINIAPP_DATA_WHITE_LIST), (Class<Object>) List.class);
        List arrayList = objFromJson instanceof List ? (List) objFromJson : null;
        if (arrayList == null) {
            arrayList = new ArrayList();
        }
        return arrayList.contains(app.getAppId());
    }

    private final boolean checkMiniappInWhiteListAndFilesize(App app, long totalSize) {
        return checkMiniappInWhiteList(app) && totalSize < getMiniappWhiteListDataMaxSize();
    }

    @JvmStatic
    public static final String checkTempDataVUrl(String path) {
        Intrinsics.h(path, "path");
        if (StringsKt.c0(path, TmcConstants.TEMP_DATA_PATH, false, 2, null) || StringsKt.c0(path, TmcConstants.LOCAL_DATA_PATH, false, 2, null)) {
            return path;
        }
        if (StringsKt.W(path, "/", false, 2, null)) {
            return TmcConstants.TEMP_DATA_PATH + path;
        }
        if (StringsKt.W(path, "http", false, 2, null)) {
            return path;
        }
        return "temp_data/" + path;
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean checkTempFileDirRunTime(App app) {
        Intrinsics.h(app, "app");
        return checkTempFileDirRunTime$default(app, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean checkTempFileDirRunTime(App app, Function1<? super Boolean, Unit> block) {
        Intrinsics.h(app, "app");
        return false;
    }

    public static /* synthetic */ boolean checkTempFileDirRunTime$default(App app, Function1 function1, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function1 = null;
        }
        return checkTempFileDirRunTime(app, function1);
    }

    @JvmStatic
    public static final boolean close(App app, String fd2) {
        Intrinsics.h(app, "app");
        FileCache fileCache = (FileCache) app.getData(FileCache.class, true);
        return (fileCache.getFileCache().remove(fd2) == null || fileCache.getFlags().remove(fd2) == null) ? false : true;
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean copyFile(App app, String srcPath, String destPath, boolean z10, boolean z11) {
        Intrinsics.h(app, "app");
        Intrinsics.h(srcPath, "srcPath");
        Intrinsics.h(destPath, "destPath");
        return copyFile$default(app, srcPath, destPath, z10, z11, null, 32, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final boolean copyFile(App app, String srcPath, String destPath, boolean overwrite, boolean reserve, Function3<? super Boolean, ? super File, ? super File, Unit> block) {
        Intrinsics.h(app, "app");
        Intrinsics.h(srcPath, "srcPath");
        Intrinsics.h(destPath, "destPath");
        boolean zMoveTo = false;
        if (access(app, srcPath)) {
            File file = getFile(app, srcPath);
            File fileGenerateFile = generateFile(app, destPath);
            zMoveTo = file != null ? FileExtKt.moveTo(file, fileGenerateFile, overwrite, reserve) : false;
            if (block != null) {
                block.invoke(Boolean.valueOf(zMoveTo), file, fileGenerateFile);
            }
        }
        return zMoveTo;
    }

    public static /* synthetic */ boolean copyFile$default(App app, String str, String str2, boolean z10, boolean z11, Function3 function3, int i11, Object obj) {
        if ((i11 & 32) != 0) {
            function3 = null;
        }
        return copyFile(app, str, str2, z10, z11, function3);
    }

    @JvmStatic
    public static final boolean createFile(App app, String path) {
        Intrinsics.h(app, "app");
        Intrinsics.h(path, "path");
        return FileUtils.createOrExistsFile(generateFile(app, path));
    }

    private final long delectFileAndReturnTotal(String filesPath) {
        File file = new File(filesPath);
        long totalSize = FileExtKt.getTotalSize(file);
        FileUtils.delete(file);
        return totalSize;
    }

    @JvmStatic
    public static final String encodeBase64File(File file) {
        Intrinsics.h(file, "file");
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[(int) file.length()];
                fileInputStream.read(bArr);
                String strEncodeToString = Base64.encodeToString(bArr, 2);
                CloseableKt.a(fileInputStream, null);
                return strEncodeToString;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(fileInputStream, th2);
                    throw th3;
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    @JvmStatic
    public static final String encodeBase64File(String path) {
        Intrinsics.h(path, "path");
        return encodeBase64File(new File(path));
    }

    @JvmStatic
    public static final void fileTrashClear(App app) {
        Intrinsics.h(app, "app");
    }

    @JvmStatic
    public static final File generateFile(App app, String path) {
        Intrinsics.h(app, "app");
        Intrinsics.h(path, "path");
        return generateFile(app.getAppId(), path);
    }

    @JvmStatic
    public static final File generateFile(String appId, String path) {
        Intrinsics.h(path, "path");
        return new File(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(appId), checkTempDataVUrl(checkLocalDataVUrl(path)));
    }

    @JvmStatic
    public static final String generateNameMills() {
        return String.valueOf(System.currentTimeMillis());
    }

    @JvmStatic
    public static final String generateRandomSuffix(int length) {
        List listA0 = CollectionsKt.A0(new CharRange('a', 'z'), new CharRange('0', '9'));
        IntRange intRange = new IntRange(1, length);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(intRange, 10));
        Iterator<Integer> it = intRange.iterator();
        while (it.hasNext()) {
            ((IntIterator) it).a();
            arrayList.add(Integer.valueOf(RangesKt.q(new IntRange(0, listA0.size()), Random.INSTANCE)));
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            Character ch2 = (Character) listA0.get(((Number) it2.next()).intValue());
            ch2.charValue();
            arrayList2.add(ch2);
        }
        return CollectionsKt.s0(arrayList2, "", null, null, 0, null, null, 62, null);
    }

    @JvmStatic
    public static final long getAllMiniAppCacheSize(Context context) {
        Intrinsics.h(context, "context");
        List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
        Intrinsics.g(latestUseApps, "getLatestUseApps()");
        Iterator<T> it = latestUseApps.iterator();
        long miniAppCacheSize = 0;
        while (it.hasNext()) {
            String appId = ((AppStoreInfo) it.next()).getAppId();
            if (appId == null) {
                appId = "";
            }
            miniAppCacheSize += getMiniAppCacheSize(context, appId);
        }
        TmcLogger.d(TAG, "getAllMiniAppFileSize all data directory size: " + miniAppCacheSize);
        return miniAppCacheSize;
    }

    @JvmStatic
    public static final long getAllMiniAppFileSize(Context context) {
        Intrinsics.h(context, "context");
        long miniAppFileSize = 0;
        try {
            List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
            if (latestUseApps != null) {
                Iterator<T> it = latestUseApps.iterator();
                while (it.hasNext()) {
                    String appId = ((AppStoreInfo) it.next()).getAppId();
                    if (appId == null) {
                        appId = "";
                    }
                    miniAppFileSize += getMiniAppFileSize(context, appId);
                }
            }
        } catch (Throwable unused) {
        }
        TmcLogger.d(TAG, "getAllMiniAppFileSize all data directory size: " + miniAppFileSize);
        return miniAppFileSize;
    }

    @JvmStatic
    public static final String getAllMiniAppFileSizeJson(Context context) {
        Intrinsics.h(context, "context");
        JsonArray jsonArray = new JsonArray();
        List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
        long j11 = 0;
        if (latestUseApps != null) {
            for (AppStoreInfo appStoreInfo : latestUseApps) {
                String appId = appStoreInfo.getAppId();
                if (appId == null) {
                    appId = "";
                }
                long miniAppFileSize = getMiniAppFileSize(context, appId);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("appId", appStoreInfo.getAppId());
                jsonObject.addProperty("size", Long.valueOf(miniAppFileSize));
                jsonArray.add(jsonObject);
                j11 += miniAppFileSize;
            }
        }
        JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("totalSize", Long.valueOf(j11)).add("list", jsonArray).build();
        Intrinsics.g(jsonObjectBuild, "create()\n            .ad…ist)\n            .build()");
        TmcLogger.d(TAG, "getAllMiniAppFileSize all data directory size: " + j11);
        return TmcGsonUtilsKt.toJson(jsonObjectBuild);
    }

    @JvmStatic
    public static final String getByteArrayByDecode(byte[] data, String encoding) {
        String lowerCase;
        Intrinsics.h(data, "data");
        if (encoding != null) {
            Locale ROOT = Locale.ROOT;
            Intrinsics.g(ROOT, "ROOT");
            lowerCase = encoding.toLowerCase(ROOT);
            Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -1396204209) {
                if (iHashCode != -1388966911) {
                    if (iHashCode == 103195 && lowerCase.equals("hex")) {
                        Charset charsetForName = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
                        Intrinsics.g(charsetForName, "forName(charsetName)");
                        byte[] bArrHexStringToBytes = HexUtil.hexStringToBytes(new String(data, charsetForName));
                        Intrinsics.g(bArrHexStringToBytes, "hexStringToBytes(\n      …      )\n                )");
                        Charset charsetForName2 = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
                        Intrinsics.g(charsetForName2, "forName(charsetName)");
                        return new String(bArrHexStringToBytes, charsetForName2);
                    }
                } else if (lowerCase.equals("binary")) {
                    Charset charsetForName3 = Charset.forName(getSafeCharset(encoding, "ASCII"));
                    Intrinsics.g(charsetForName3, "forName(charsetName)");
                    String strBinaryDecode = EncodeUtils.binaryDecode(new String(data, charsetForName3));
                    Intrinsics.g(strBinaryDecode, "binaryDecode(\n          …          )\n            )");
                    return strBinaryDecode;
                }
            } else if (lowerCase.equals("base64")) {
                byte[] bArrBase64Decode = EncodeUtils.base64Decode(data);
                Intrinsics.g(bArrBase64Decode, "base64Decode(data)");
                Charset charsetForName4 = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
                Intrinsics.g(charsetForName4, "forName(charsetName)");
                return new String(bArrBase64Decode, charsetForName4);
            }
        }
        Charset charsetForName5 = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
        Intrinsics.g(charsetForName5, "forName(charsetName)");
        return new String(data, charsetForName5);
    }

    @JvmStatic
    public static final byte[] getByteArrayByEncode(String data, String encoding) {
        String lowerCase;
        Intrinsics.h(data, "data");
        if (encoding != null) {
            Locale ROOT = Locale.ROOT;
            Intrinsics.g(ROOT, "ROOT");
            lowerCase = encoding.toLowerCase(ROOT);
            Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        } else {
            lowerCase = null;
        }
        if (lowerCase != null) {
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -1396204209) {
                if (iHashCode != -1388966911) {
                    if (iHashCode == 103195 && lowerCase.equals("hex")) {
                        Charset charsetForName = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
                        Intrinsics.g(charsetForName, "forName(charsetName)");
                        byte[] bytes = data.getBytes(charsetForName);
                        Intrinsics.g(bytes, "this as java.lang.String).getBytes(charset)");
                        String hexString = HexUtil.formatHexString(bytes);
                        Intrinsics.g(hexString, "formatHexString(data.toB…tSafeCharset(encoding))))");
                        Charset charsetForName2 = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
                        Intrinsics.g(charsetForName2, "forName(charsetName)");
                        byte[] bytes2 = hexString.getBytes(charsetForName2);
                        Intrinsics.g(bytes2, "this as java.lang.String).getBytes(charset)");
                        return bytes2;
                    }
                } else if (lowerCase.equals("binary")) {
                    String strBinaryEncode = EncodeUtils.binaryEncode(data);
                    Intrinsics.g(strBinaryEncode, "binaryEncode(data)");
                    Charset charsetForName3 = Charset.forName(getSafeCharset(encoding, "ASCII"));
                    Intrinsics.g(charsetForName3, "forName(charsetName)");
                    byte[] bytes3 = strBinaryEncode.getBytes(charsetForName3);
                    Intrinsics.g(bytes3, "this as java.lang.String).getBytes(charset)");
                    return bytes3;
                }
            } else if (lowerCase.equals("base64")) {
                Charset charsetForName4 = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
                Intrinsics.g(charsetForName4, "forName(charsetName)");
                byte[] bytes4 = data.getBytes(charsetForName4);
                Intrinsics.g(bytes4, "this as java.lang.String).getBytes(charset)");
                byte[] bArrBase64Encode = EncodeUtils.base64Encode(bytes4);
                Intrinsics.g(bArrBase64Encode, "base64Encode(data.toByte…tSafeCharset(encoding))))");
                return bArrBase64Encode;
            }
        }
        Charset charsetForName5 = Charset.forName(getSafeCharset$default(encoding, null, 2, null));
        Intrinsics.g(charsetForName5, "forName(charsetName)");
        byte[] bytes5 = data.getBytes(charsetForName5);
        Intrinsics.g(bytes5, "this as java.lang.String).getBytes(charset)");
        return bytes5;
    }

    public static final int getDefaultBufferSize() {
        return defaultBufferSize;
    }

    @JvmStatic
    public static /* synthetic */ void getDefaultBufferSize$annotations() {
    }

    @JvmStatic
    public static final String getExtension(String urlString) {
        List listS0;
        try {
            String path = Uri.parse(urlString).getPath();
            String str = (path == null || (listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) == null) ? null : (String) CollectionsKt.u0(listS0);
            String strD1 = str != null ? StringsKt.d1(str, ".", "") : null;
            if (strD1 == null || strD1.length() == 0) {
                return null;
            }
            return strD1;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return null;
        }
    }

    @JvmStatic
    public static final File getFile(App app, String filePath) {
        Intrinsics.h(app, "app");
        return getFileFromAllProcessors(app, filePath);
    }

    @JvmStatic
    private static final String getFileExtension(String pathOrUrl) {
        int iU0 = StringsKt.u0(pathOrUrl, '.', 0, false, 6, null);
        if (iU0 < 0) {
            return "ext";
        }
        String strSubstring = pathOrUrl.substring(iU0 + 1);
        Intrinsics.g(strSubstring, "this as java.lang.String).substring(startIndex)");
        return strSubstring;
    }

    @JvmStatic
    public static final File getFileFromAllProcessors(App app, String filePath) {
        Intrinsics.h(app, "app");
        try {
            IResourceProcessor iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
            if (iResourceProcessor != null) {
                return iResourceProcessor.get(filePath, app.getAppId());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @JvmStatic
    public static final List<JsonObject> getFileList(App app, String filePath) {
        Intrinsics.h(app, "app");
        ArrayList arrayList = new ArrayList();
        IResourceProcessor iResourceProcessor = (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
        List<String> fuzzySearch = iResourceProcessor.fuzzySearch(app.getAppId(), filePath);
        Intrinsics.g(fuzzySearch, "fuzzySearch");
        for (String fileVUrl : fuzzySearch) {
            File file = iResourceProcessor.get(fileVUrl, app.getAppId());
            String appId = app.getAppId();
            Intrinsics.g(appId, "app.appId");
            String vhost = getVhost(appId);
            Intrinsics.g(fileVUrl, "fileVUrl");
            JsonObjectUtils.Builder builderAddProperty = JsonObjectUtils.create().addProperty(NativeRequestBridge.KEY_FILE_PATH, StringsKt.Q(fileVUrl, vhost + "/", "", false, 4, null));
            Intrinsics.g(file, "file");
            JsonObject jsonObjectBuild = builderAddProperty.addProperty("size", Long.valueOf(FileExtKt.getTotalSize(file))).addProperty("createTime", Long.valueOf(file.lastModified())).build();
            Intrinsics.g(jsonObjectBuild, "create()\n               …                 .build()");
            arrayList.add(jsonObjectBuild);
        }
        return arrayList;
    }

    @JvmStatic
    public static final String getFileName(String urlString) {
        List listS0;
        try {
            String path = Uri.parse(urlString).getPath();
            String str = (path == null || (listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) == null) ? null : (String) CollectionsKt.u0(listS0);
            String strJ1 = str != null ? StringsKt.j1(str, ".", "") : null;
            if (strJ1 == null || strJ1.length() == 0) {
                return null;
            }
            return strJ1;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return null;
        }
    }

    @JvmStatic
    public static final long getMiniAppCacheSize(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            long totalSize = FileExtKt.getTotalSize(new File(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(appId))) + ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(context, appId + "_web");
            if (totalSize < 0) {
                totalSize = 0;
            }
            TmcLogger.d(TAG, "getMiniAppCacheSize -> " + appId + ", all cache directory size: " + totalSize);
            return totalSize;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return 0L;
        }
    }

    @JvmStatic
    public static final long getMiniAppFileSize(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
            long totalSize = FileExtKt.getTotalSize(new File(pathProxy.getBaseMiniAppPath(appId)));
            long totalSize2 = FileExtKt.getTotalSize(new File(pathProxy.getAppBaseFilePath(appId)));
            long totalSize3 = FileExtKt.getTotalSize(new File(pathProxy.getAppBaseDownloadPath(appId)));
            long kVSize = totalSize2 + totalSize + totalSize3 + ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(context, appId) + ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(context, appId + "_web");
            if (kVSize < 0) {
                kVSize = 0;
            }
            TmcLogger.d(TAG, "getMiniAppFileSize -> " + appId + ", all data directory size: " + kVSize);
            return kVSize;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            return 0L;
        }
    }

    private final long getMiniappAllDataMaxSize() {
        return ((long) MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINIAPP_ALL_DATA_MAX_SIZE, MiniAppConfigHelper.DEFAULT_MINIAPP_ALL_DATA_MAX_SIZE)) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    private final long getMiniappDefaultDataMaxSize() {
        return ((long) MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINIAPP_DATA_MAX_SIZE, 20)) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    @JvmStatic
    public static final long getMiniappDownloadZipFileSize(String appId) {
        Intrinsics.h(appId, "appId");
        File file = new File(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseDownloadPath(appId));
        TmcLogger.d("[FileUtil]: miniapp downlaod zip directory size: " + FileExtKt.getTotalSize(file));
        return FileExtKt.getTotalSize(file);
    }

    @JvmStatic
    public static final long getMiniappStorageFileSize(String appId) {
        Intrinsics.h(appId, "appId");
        Context applicationContext = ((IApplicationContextGetter) TmcProxy.get(IApplicationContextGetter.class)).getApplicationContext();
        Intrinsics.g(applicationContext, "get(IApplicationContextG….java).applicationContext");
        long kVSize = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(applicationContext, appId) + ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(applicationContext, appId + "_web");
        TmcLogger.d("[FileUtil]: miniapp storage size: " + kVSize);
        return kVSize;
    }

    @JvmStatic
    public static final long getMiniappUserFileSize(App app) {
        Intrinsics.h(app, "app");
        File file = new File(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(app.getAppId()));
        TmcLogger.d("[FileUtil]: userdata directory size: " + FileExtKt.getTotalSize(file));
        return FileExtKt.getTotalSize(file);
    }

    private final long getMiniappWhiteListDataMaxSize() {
        return ((long) MiniAppConfigHelper.INSTANCE.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINIAPP_WHITE_LIST_DATA_MAX_SIZE, 100)) * PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    @JvmStatic
    public static final long getMiniappZipFileSize(String appId) {
        Intrinsics.h(appId, "appId");
        File file = new File(((PathProxy) TmcProxy.get(PathProxy.class)).getBaseMiniAppPath(appId));
        TmcLogger.d("[FileUtil]: miniapp zip directory size: " + FileExtKt.getTotalSize(file));
        return FileExtKt.getTotalSize(file);
    }

    @JvmStatic
    @JvmOverloads
    public static final String getSafeCharset(String str) {
        return getSafeCharset$default(str, null, 2, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final String getSafeCharset(String charsetName, String str) {
        Intrinsics.h(str, "default");
        return (charsetName == null || charsetName.length() == 0 || !Charset.isSupported(charsetName)) ? str : charsetName;
    }

    public static /* synthetic */ String getSafeCharset$default(String str, String str2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str2 = "UTF-8";
        }
        return getSafeCharset(str, str2);
    }

    @JvmStatic
    @SuppressLint({"ObsoleteSdkInt"})
    public static final StructStat getStat(File file) {
        Intrinsics.h(file, "file");
        try {
            return Os.stat(file.getAbsolutePath());
        } catch (ErrnoException e11) {
            e11.printStackTrace();
            TmcLogger.e("[FileUtil]: " + e11.getMessage(), e11);
            return null;
        }
    }

    @JvmStatic
    private static final String getSubHashCode(int hashCode, int startIndex, int endIndex) throws IllegalStateException {
        if (startIndex >= endIndex) {
            throw new IllegalArgumentException("are you ok?");
        }
        String strQ = StringsKt.Q(String.valueOf(hashCode), "-", "", false, 4, null);
        if (strQ.length() < endIndex) {
            String strSubstring = strQ.substring(startIndex, strQ.length());
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return strSubstring;
        }
        String strSubstring2 = strQ.substring(startIndex, endIndex);
        Intrinsics.g(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring2;
    }

    static /* synthetic */ String getSubHashCode$default(int i11, int i12, int i13, int i14, Object obj) throws IllegalStateException {
        if ((i14 & 2) != 0) {
            i12 = 0;
        }
        if ((i14 & 4) != 0) {
            i13 = 6;
        }
        return getSubHashCode(i11, i12, i13);
    }

    @JvmStatic
    public static final String getType(File file) {
        Intrinsics.h(file, "file");
        if (file.isDirectory()) {
            return "folder";
        }
        String name = file.getName();
        Intrinsics.g(name, "file.name");
        return getFileExtension(name);
    }

    @JvmStatic
    public static final String getVhost(String appId) {
        Intrinsics.h(appId, "appId");
        String str = "https://" + appId + ".miniapp.transsion.com";
        Intrinsics.g(str, "builder.toString()");
        return str;
    }

    @JvmStatic
    public static final boolean isFileInAppPrivateDirectory(File file) {
        Intrinsics.h(file, "file");
        try {
            String filePath = file.getAbsolutePath();
            String externalAppDataPath = PathUtils.getExternalAppDataPath();
            Intrinsics.g(filePath, "filePath");
            Intrinsics.g(externalAppDataPath, "externalAppDataPath");
            return StringsKt.W(filePath, externalAppDataPath, false, 2, null);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            return false;
        }
    }

    @JvmStatic
    public static final boolean isFilePathValid(String filePath) {
        Intrinsics.h(filePath, "filePath");
        try {
            String configTargetStr = MiniAppConfigHelper.INSTANCE.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINIAPP_FILE_PATH_VALID, MiniAppConfigHelper.DEFAULT_MINIAPP_FILE_PATH_VALID);
            if (configTargetStr.length() == 0) {
                return true;
            }
            return !new Regex(configTargetStr).containsMatchIn(filePath);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
            return true;
        }
    }

    @JvmStatic
    public static final boolean isSDCardEnableByEnvironment() {
        return SDCardUtils.isSDCardEnableByEnvironment();
    }

    @JvmStatic
    @JvmOverloads
    public static final String notifyNewFileGenerateVUrl(String appId, File file, File newFile) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(newFile, "newFile");
        return notifyNewFileGenerateVUrl$default(appId, file, newFile, null, 8, null);
    }

    @JvmStatic
    @JvmOverloads
    public static final String notifyNewFileGenerateVUrl(String appId, File oldFile, File newFile, String path) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(newFile, "newFile");
        Intrinsics.h(path, "path");
        if (oldFile != null) {
            notifyOldFileRemoveVUrl(oldFile);
        }
        IFileResourceManager iFileResourceManager = (IFileResourceManager) TmcProxy.get(IFileResourceManager.class);
        String absolutePath = newFile.getAbsolutePath();
        Intrinsics.g(absolutePath, "newFile.absolutePath");
        String str = TmcConstants.LOCAL_DATA_PATH;
        if (!StringsKt.c0(absolutePath, TmcConstants.LOCAL_DATA_PATH, false, 2, null)) {
            str = TmcConstants.TEMP_DATA_PATH;
        }
        String strQ = str;
        if (path.length() == 0) {
            File fileGenerateFile = generateFile(appId, strQ);
            File parentFile = newFile.getParentFile();
            String absolutePath2 = parentFile != null ? parentFile.getAbsolutePath() : null;
            if (absolutePath2 != null) {
                String absolutePath3 = fileGenerateFile.getAbsolutePath();
                Intrinsics.g(absolutePath3, "rootDir.absolutePath");
                if (StringsKt.c0(absolutePath2, absolutePath3, false, 2, null)) {
                    String absolutePath4 = fileGenerateFile.getAbsolutePath();
                    Intrinsics.g(absolutePath4, "rootDir.absolutePath");
                    strQ = StringsKt.Q(absolutePath2, absolutePath4, strQ, false, 4, null);
                }
            }
        } else {
            strQ = strQ + "/" + path;
        }
        String vUrl = iFileResourceManager.generateVUrl(absolutePath, appId, newFile.getName(), strQ);
        TmcLogger.d("[FileUtil]: notifyNewFileGenerateVUrl: fileName: " + newFile.getName() + ", vUrl: " + vUrl);
        Intrinsics.g(vUrl, "vUrl");
        return vUrl;
    }

    public static /* synthetic */ String notifyNewFileGenerateVUrl$default(String str, File file, File file2, String str2, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            str2 = "";
        }
        return notifyNewFileGenerateVUrl(str, file, file2, str2);
    }

    @JvmStatic
    public static final void notifyOldFileRemoveVUrl(File oldFile) {
        Intrinsics.h(oldFile, "oldFile");
        ((IFileResourceManager) TmcProxy.get(IFileResourceManager.class)).removeByFilePath(oldFile.getAbsolutePath());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
    
        if (r12.equals("as+") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        if (r12.equals("wx") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
    
        if (r12.equals("w+") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005a, code lost:
    
        if (r12.equals("r+") != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0064, code lost:
    
        if (r12.equals("ax") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
    
        if (com.cloud.tmc.miniutils.util.FileUtils.isFileExists(r11) != false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0070, code lost:
    
        if (com.cloud.tmc.miniutils.util.FileUtils.createOrExistsFile(r11) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0072, code lost:
    
        r4 = r10.getAppId();
        kotlin.jvm.internal.Intrinsics.g(r4, "app.appId");
        notifyNewFileGenerateVUrl$default(r4, null, r11, null, 8, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0098, code lost:
    
        throw new java.lang.IllegalStateException("File not created: " + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00af, code lost:
    
        throw new java.lang.IllegalStateException("File already exists: " + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b6, code lost:
    
        if (r12.equals("as") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bf, code lost:
    
        if (r12.equals("a+") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c8, code lost:
    
        if (r12.equals("w") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d1, code lost:
    
        if (r12.equals(com.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_AD_R) != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d7, code lost:
    
        if (com.cloud.tmc.miniutils.util.FileUtils.isFileExists(r11) == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00f0, code lost:
    
        throw new java.lang.IllegalStateException("File does not exist: " + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00f7, code lost:
    
        if (r12.equals("a") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00fd, code lost:
    
        if (com.cloud.tmc.miniutils.util.FileUtils.createOrExistsFile(r11) == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ff, code lost:
    
        r4 = r10.getAppId();
        kotlin.jvm.internal.Intrinsics.g(r4, "app.appId");
        notifyNewFileGenerateVUrl$default(r4, null, r11, null, 8, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010f, code lost:
    
        r10 = getSubHashCode$default(r11.hashCode(), 0, 0, 6, null);
        r0.getFileCache().put(r10, new java.lang.ref.WeakReference<>(r11));
        r0.getFlags().put(r10, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012d, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0142, code lost:
    
        throw new java.lang.IllegalStateException("File not created: " + r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002b, code lost:
    
        if (r12.equals("wx+") != false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
    
        if (r12.equals("ax+") != false) goto L25;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final String open(App app, File file, String flag) throws IllegalStateException {
        Intrinsics.h(app, "app");
        Intrinsics.h(file, "file");
        Intrinsics.h(flag, "flag");
        FileCache fileCache = (FileCache) app.getData(FileCache.class, true);
        switch (flag.hashCode()) {
            case 97:
                break;
            case ASSET_WRITE_ERROR_VALUE:
                break;
            case JSON_ENCODE_ERROR_VALUE:
                break;
            case 3050:
                break;
            case 3122:
                break;
            case 3127:
                break;
            case 3577:
                break;
            case 3732:
                break;
            case 3809:
                break;
            case 96825:
                break;
            case 96980:
                break;
            case 118122:
                break;
            default:
                throw new IllegalStateException("Invalid flag: " + flag);
        }
    }

    @JvmStatic
    public static final JsonArray readSDDownloadDir(Context context, String dirPath) {
        Cursor cursorQuery;
        Intrinsics.h(context, "context");
        Intrinsics.h(dirPath, "dirPath");
        JsonArray jsonArray = new JsonArray();
        try {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr = {"_id", "_display_name", "_data", "_size", "date_modified"};
            Uri uri = Build.VERSION.SDK_INT >= 29 ? MediaStore.Downloads.EXTERNAL_CONTENT_URI : null;
            if (uri != null && (cursorQuery = contentResolver.query(uri, strArr, null, null, null)) != null) {
                while (cursorQuery.moveToNext()) {
                    JsonObject jsonObject = new JsonObject();
                    String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_display_name"));
                    String data = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                    long j11 = cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("date_modified"));
                    Intrinsics.g(data, "data");
                    if (new Regex(dirPath).containsMatchIn(data)) {
                        jsonObject.addProperty("fileName", string);
                        jsonObject.addProperty(NativeRequestBridge.KEY_FILE_PATH, data);
                        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, getExtension(string));
                        jsonObject.addProperty("lastModifiedTime", Long.valueOf(j11));
                        jsonArray.add(jsonObject);
                    }
                }
                cursorQuery.close();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return jsonArray;
    }

    @JvmStatic
    public static final void removeMiniAppFile(Context context, final String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
            FileUtils.delete(pathProxy.getAppBaseFilePath(appId));
            FileUtils.delete(pathProxy.getAppBaseDownloadPath(appId));
            FileUtils.delete(pathProxy.getBaseMiniAppPath(appId));
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(context, appId);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(context, appId + "_web");
            LatestUseUtils.deleteAppUse(appId);
            ((AuthorityProxy) TmcProxy.get(AuthorityProxy.class)).clearPermissionData(context, appId);
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.utils.k
                @Override // java.lang.Runnable
                public final void run() {
                    FileUtil.removeMiniAppFile$lambda$22(appId);
                }
            });
            ((OfflineAppProxy) TmcProxy.get(OfflineAppProxy.class)).scanForUsedAppDelete();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void removeMiniAppFile$lambda$22(String appId) {
        Intrinsics.h(appId, "$appId");
        try {
            App appFindApp = ((AppManager) TmcProxy.get(AppManager.class)).findApp(appId);
            if (appFindApp != null) {
                appFindApp.exit();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @JvmStatic
    public static final void removeMiniAppFileCache(Context context, String appId) {
        Intrinsics.h(context, "context");
        Intrinsics.h(appId, "appId");
        try {
            FileUtils.delete(((PathProxy) TmcProxy.get(PathProxy.class)).getAppBaseFilePath(appId));
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(context, appId + "_web");
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @JvmStatic
    public static final String renameIfFileExists(String filePath) {
        Intrinsics.h(filePath, "filePath");
        try {
            File file = new File(filePath);
            String parent = file.getParent();
            String name = file.getName();
            if (!FileUtils.isDir(new File(parent, name))) {
                int i11 = 1;
                String str = name;
                while (new File(parent, str).exists()) {
                    String extension = getExtension(name);
                    String fileName = getFileName(name);
                    if (fileName == null) {
                        fileName = name;
                    }
                    if (extension == null || extension.length() == 0) {
                        str = fileName + "(" + i11 + ")";
                    } else {
                        str = fileName + "(" + i11 + ")." + extension;
                    }
                    i11++;
                }
                return parent + "/" + str;
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2.getMessage(), th2);
        }
        return filePath;
    }

    private final void reportStorageTrack(long totleSize, long afterClearSize) {
        try {
            Bundle bundle = new Bundle();
            long j11 = 1024;
            long j12 = totleSize / j11;
            long j13 = afterClearSize / j11;
            bundle.putLong("total_size", j12);
            bundle.putLong("after_clearn_size", j13);
            ((PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class)).recordForCommon(null, "miniapp_storage_size", bundle);
            TmcLogger.d(TAG, "reportStorageTrack->miniapp_storage_size:total_size->" + j12 + ",afterSize->" + j13);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    @JvmStatic
    public static final void sendMediaScanBroadcast(Context context) {
        if (context == null) {
            return;
        }
        try {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(externalStoragePublicDirectory));
            context.sendBroadcast(intent);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
    }

    public static final void setDefaultBufferSize(int i11) {
        defaultBufferSize = i11;
    }

    public final void checkMiniAppFileSizeStatus(App app) {
        Intrinsics.h(app, "app");
    }

    public final void clearAllMiniAppCacheData(Context context) {
        Intrinsics.h(context, "context");
        List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
        if (latestUseApps != null) {
            Iterator<T> it = latestUseApps.iterator();
            while (it.hasNext()) {
                String appId = ((AppStoreInfo) it.next()).getAppId();
                if (appId == null) {
                    appId = "";
                }
                removeMiniAppFileCache(context, appId);
            }
        }
    }

    public final void clearAllMiniAppData(Context context) {
        Intrinsics.h(context, "context");
        List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
        Intrinsics.g(latestUseApps, "getLatestUseApps()");
        Iterator<T> it = latestUseApps.iterator();
        while (it.hasNext()) {
            String appId = ((AppStoreInfo) it.next()).getAppId();
            if (appId == null) {
                appId = "";
            }
            removeMiniAppFile(context, appId);
        }
    }

    public final String clearMiniAppDataUntilSize(Context context, Long needRemoveSize) {
        ArrayList arrayList;
        long j11;
        List<AppStoreInfo> listD0;
        Intrinsics.h(context, "context");
        JsonArray jsonArray = new JsonArray();
        long allMiniAppFileSize = getAllMiniAppFileSize(context);
        MiniAppConfigHelper miniAppConfigHelper = MiniAppConfigHelper.INSTANCE;
        int configTargetInt = miniAppConfigHelper.getConfigTargetInt(LauncherMiniAppConfigHelper.KEY_MINI_APP_STORAGE_MIN, 1) * 1048576;
        try {
            String configTargetStr = miniAppConfigHelper.getConfigTargetStr(LauncherMiniAppConfigHelper.KEY_MINI_APP_STORAGE_WHITE_LIST, "[]");
            Type type = new TypeToken<ArrayList<String>>() { // from class: com.cloud.tmc.integration.utils.FileUtil$clearMiniAppDataUntilSize$whiteList$1
            }.getType();
            Intrinsics.g(type, "object :\n               …ayList<String>>() {}.type");
            arrayList = (ArrayList) TmcGsonUtils.fromJson(configTargetStr, type);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "clearMiniAppDataUntilSize", th2);
            arrayList = new ArrayList();
        }
        if (allMiniAppFileSize > configTargetInt) {
            List<AppStoreInfo> latestUseApps = LatestUseUtils.getLatestUseApps();
            if (latestUseApps != null && (listD0 = CollectionsKt.D0(latestUseApps)) != null) {
                long j12 = 0;
                for (AppStoreInfo appStoreInfo : listD0) {
                    if (j12 >= (needRemoveSize != null ? needRemoveSize.longValue() : 0L)) {
                        TmcLogger.d(TAG, "removeDataSize:" + j12 + ",>= needRemoveSize:" + needRemoveSize);
                    } else if (CollectionsKt.b0(arrayList, appStoreInfo.getAppId())) {
                        TmcLogger.d(TAG, appStoreInfo.getAppId() + " in whitelist,not need remove data");
                    } else {
                        String appId = appStoreInfo.getAppId();
                        if (appId == null) {
                            appId = "";
                        }
                        long miniAppFileSize = getMiniAppFileSize(context, appId);
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("appId", appStoreInfo.getAppId());
                        jsonObject.addProperty("removeSize", Long.valueOf(miniAppFileSize));
                        String appId2 = appStoreInfo.getAppId();
                        removeMiniAppFile(context, appId2 != null ? appId2 : "");
                        jsonArray.add(jsonObject);
                        j12 += miniAppFileSize;
                    }
                }
                j11 = j12;
            }
            JsonObject jsonObjectBuild = JsonObjectUtils.create().addProperty("totalRemoveSize", Long.valueOf(j11)).add("list", jsonArray).build();
            Intrinsics.g(jsonObjectBuild, "create()\n            .ad…ist)\n            .build()");
            return TmcGsonUtilsKt.toJson(jsonObjectBuild);
        }
        TmcLogger.d(TAG, "allMiniAppFileSize:" + allMiniAppFileSize + ",<20M,not need remove data");
        j11 = 0;
        JsonObject jsonObjectBuild2 = JsonObjectUtils.create().addProperty("totalRemoveSize", Long.valueOf(j11)).add("list", jsonArray).build();
        Intrinsics.g(jsonObjectBuild2, "create()\n            .ad…ist)\n            .build()");
        return TmcGsonUtilsKt.toJson(jsonObjectBuild2);
    }

    public final long delectMiniapp(String appId) {
        Long lValueOf;
        TmcLogger.d(TAG, "delect miniapp all files : " + appId);
        PathProxy pathProxy = (PathProxy) TmcProxy.get(PathProxy.class);
        String filesDir = pathProxy.getAppBaseFilePath(appId);
        Intrinsics.g(filesDir, "filesDir");
        long jDelectFileAndReturnTotal = delectFileAndReturnTotal(filesDir);
        TmcLogger.d(TAG, "delect miniapp userfiles : " + jDelectFileAndReturnTotal);
        TmcLogger.d(TAG, "current miniapp tempDataSize : " + jDelectFileAndReturnTotal);
        String appBaseDownloadPath = pathProxy.getAppBaseDownloadPath(appId);
        Intrinsics.g(appBaseDownloadPath, "appBaseDownloadPath");
        long jDelectFileAndReturnTotal2 = delectFileAndReturnTotal(appBaseDownloadPath);
        long j11 = jDelectFileAndReturnTotal + jDelectFileAndReturnTotal2;
        TmcLogger.d(TAG, "delect miniapp appDownloadFile : " + jDelectFileAndReturnTotal2);
        TmcLogger.d(TAG, "current miniapp tempDataSize : " + j11);
        String miniFilePath = pathProxy.getBaseMiniAppPath(appId);
        Intrinsics.g(miniFilePath, "miniFilePath");
        long jDelectFileAndReturnTotal3 = delectFileAndReturnTotal(miniFilePath);
        long j12 = j11 + jDelectFileAndReturnTotal3;
        TmcLogger.d(TAG, "delect miniapp miniFile : " + jDelectFileAndReturnTotal3);
        TmcLogger.d(TAG, "current miniapp tempDataSize : " + j12);
        if (appId != null) {
            long kVSize = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(Utils.getApp(), appId);
            long kVSize2 = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getKVSize(Utils.getApp(), appId + "_web");
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(Utils.getApp(), appId);
            ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).clear(Utils.getApp(), appId + "_web");
            lValueOf = Long.valueOf(kVSize + kVSize2);
        } else {
            lValueOf = null;
        }
        TmcLogger.d(TAG, "delectMiniapp storage: " + lValueOf);
        long jLongValue = j12 + (lValueOf != null ? lValueOf.longValue() : 0L);
        LatestUseUtils.deleteAppUse(appId);
        ((OfflineAppProxy) TmcProxy.get(OfflineAppProxy.class)).scanForUsedAppDelete();
        return jLongValue;
    }

    public final long delectMiniappUserData(Context context, String appId) {
        long kVSize;
        Intrinsics.h(context, "context");
        TmcLogger.d(TAG, "delect miniapp userdata files : " + appId);
        if (appId != null) {
            KVStorageProxy kVStorageProxy = (KVStorageProxy) TmcProxy.get(KVStorageProxy.class);
            kVSize = kVStorageProxy.getKVSize(context, appId + "_web");
            kVStorageProxy.clear(context, appId + "_web");
        } else {
            kVSize = 0;
        }
        TmcLogger.d(TAG, "delectMiniapp storage: " + kVSize);
        return kVSize;
    }

    public final boolean getMiniAppFileStatus(App app) {
        Intrinsics.h(app, "app");
        return false;
    }
}
