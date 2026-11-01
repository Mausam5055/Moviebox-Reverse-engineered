package com.cloud.tmc.integration.bridge;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.MiniAppConfigModel;
import com.cloud.tmc.integration.params.TmcParams;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.processor.BackExitIntercept;
import com.cloud.tmc.integration.processor.BackToAddHomeIntercept;
import com.cloud.tmc.integration.processor.IBackPressedProcessor;
import com.cloud.tmc.integration.processor.InnerBackIntercept;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.resource.FileResourceManager;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.structure.AppContext;
import com.cloud.tmc.integration.structure.Page;
import com.cloud.tmc.integration.structure.node.AppNode;
import com.cloud.tmc.integration.utils.AddHomeToScreenUtils;
import com.cloud.tmc.integration.utils.AppUtils;
import com.cloud.tmc.integration.utils.CreateShortCutUtils;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.integration.utils.GenerateIdUtils;
import com.cloud.tmc.integration.utils.JsonObjectUtils;
import com.cloud.tmc.integration.utils.ScreenUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.integration.utils.ext.StringExtKt;
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
import com.cloud.tmc.kernel.proxy.network.INetWorkProxy;
import com.cloud.tmc.kernel.proxy.network.OnFileDownloadCallback;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.security.Permission;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.TmcGsonUtilsKt;
import com.cloud.tmc.miniutils.util.FileUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.NetworkUtils;
import com.cloud.tmc.miniutils.util.SDCardUtils;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 B2\u00020\u0001:\u0001BB\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007Jd\u0010\u000b\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\f\u001a\u00020\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0001\u0010\u000e\u001a\u00020\b2\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u00102\b\b\u0001\u0010\u0012\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J<\u0010\u0013\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u000f\u001a\u00020\u00102\b\b\u0001\u0010\u0011\u001a\u00020\u00102\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010\u0014\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010\u0015\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J*\u0010\u0016\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007JX\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\b\u0010\u0019\u001a\u0004\u0018\u00010\b2\b\u0010\u001a\u001a\u0004\u0018\u00010\b2\u0006\u0010\u001b\u001a\u00020\b2\u0010\b\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001d2\u0010\b\u0002\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001dH\u0002J\u001e\u0010\u001f\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010 \u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010!\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010\"\u001a\u00020\u00042\n\b\u0001\u0010#\u001a\u0004\u0018\u00010$2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010%\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010&\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010'\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\b\u0010(\u001a\u00020\u0004H\u0016J\b\u0010)\u001a\u00020\u0004H\u0016J\u001e\u0010*\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010+\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J(\u0010,\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010-\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J*\u0010.\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\u0017\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\n\u0010/\u001a\u0004\u0018\u000100H\u0016J*\u00101\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u00102\u001a\u0004\u0018\u0001032\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J(\u00104\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010-\u001a\u0002052\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J*\u00106\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u00102\u001a\u0004\u0018\u0001032\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J(\u00107\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010-\u001a\u0002052\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u00108\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u00109\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J2\u0010:\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010;\u001a\u0002032\b\b\u0001\u0010<\u001a\u00020=2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J\u001e\u0010>\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J(\u0010?\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010@\u001a\u00020\u00102\b\b\u0001\u0010\t\u001a\u00020\nH\u0007J>\u0010A\u001a\u00020\u00042\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\b2\b\b\u0001\u0010\r\u001a\u00020\b2\b\b\u0001\u0010\u000e\u001a\u00020\b2\b\b\u0001\u0010\t\u001a\u00020\nH\u0007¨\u0006C"}, d2 = {"Lcom/cloud/tmc/integration/bridge/SystemAbilityBridge;", "Lcom/cloud/tmc/kernel/extension/BridgeExtension;", "()V", "addToHomeScreen", "", "app", "Lcom/cloud/tmc/integration/structure/App;", RequestParameters.SUBRESOURCE_LOCATION, "", "callback", "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;", "addToHomeScreenByLogoLink", "appId", MiniAppIpcConfig.IPC_ADDHOME_APP_NAME, "appLogoLink", "showConfirmDialog", "", "showSuccessToast", TmcConstants.EXTRA_DATA, "addToHomeScreenInternal", "backExitInterceptor", "cancelBackExitInterceptor", "darkThemeIsEnabled", EventConstants.KEY_ACTION, "downloadFile", "type", "downloadUrl", NativeRequestBridge.KEY_FILE_PATH, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "Lkotlin/Function0;", "error", "enableExitShortcutInterceptor", "getExternalDeviceSize", "getInternalDeviceSize", "getMenuButtonBoundingClientRect", "page", "Lcom/cloud/tmc/integration/structure/Page;", "getMovieboxInfo", "innerBackInterceptor", "innerCancelBackInterceptor", "onFinalized", "onInitialized", "openAppAuthorizeSetting", "openSystemBluetoothSetting", "openSystemSetting", "delayTimeMillis", "openSystemSettingWithAction", "permit", "Lcom/cloud/tmc/kernel/security/Permission;", "preloadAssets", "data", "Lcom/google/gson/JsonArray;", "preloadH5Webview", "", "preloadResources", "preloadWebview", "queryMiniappCustomConfig", "queryShortcutExists", "queryShortcutListExists", "appIdList", "maxLength", "", "removeExitShortcutInterceptor", "setKeepScreenOn", "keepScreenOn", "updateAddHomeLogoAndName", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SystemAbilityBridge implements BridgeExtension {
    private static final String ASSET_APPID = "appId";
    private static final String ASSET_PATH = "assets";
    private static final String ASSET_SAVE_FILE_PATH = "saveFilePath";
    private static final String ASSET_SRC = "src";
    private static final String ASSET_TYPE = "type";
    private static final String ASSET_TYPE_FONT = "font";
    private static final String ASSET_TYPE_IMAGE = "image";
    private static final String TAG = "SystemAbilityBridge";

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadFile(App app, final String appId, final String type, final String downloadUrl, final String filePath, final Function0<Unit> success, final Function0<Unit> error) {
        if (downloadUrl != null) {
            try {
                if (downloadUrl.length() != 0) {
                    if (NetworkUtils.isConnected()) {
                        FileUtils.createFileByDeleteOldFile(filePath);
                        String strGenerateRandomId = GenerateIdUtils.INSTANCE.generateRandomId();
                        ((INetWorkProxy) TmcProxy.get(INetWorkProxy.class)).downloadPackage(strGenerateRandomId, downloadUrl, filePath, MapsKt.j(TuplesKt.a(NativeRequestBridge.KEY_X_BYTE_APPID, app.getAppId())), strGenerateRandomId, new OnFileDownloadCallback() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge.downloadFile.1
                            private MediaType currentMediaType;

                            @Override // com.cloud.tmc.kernel.proxy.network.OnFileDownloadCallback
                            public boolean contentType(MediaType contextType) {
                                TmcLogger.d(SystemAbilityBridge.TAG, "contentType: " + contextType);
                                if (contextType == null) {
                                    return true;
                                }
                                this.currentMediaType = contextType;
                                String strType = contextType.type();
                                String str = type;
                                if (str == null) {
                                    return true;
                                }
                                return Intrinsics.c(str, strType);
                            }

                            public final MediaType getCurrentMediaType() {
                                return this.currentMediaType;
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                            public void onCancel(String url, String callbackId) {
                                Function0<Unit> function0 = error;
                                if (function0 != null) {
                                    function0.invoke();
                                }
                                TmcLogger.d(SystemAbilityBridge.TAG, "onCancel url: " + url + " callbackId: " + callbackId);
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                            public void onFailed(String url, String errorCode, String errorMsg, IOException e11, String callbackId) {
                                FileUtils.delete(filePath);
                                Function0<Unit> function0 = error;
                                if (function0 != null) {
                                    function0.invoke();
                                }
                                TmcLogger.e(SystemAbilityBridge.TAG, "onFailed url: " + url + " errorCode: " + errorCode + " errorMsg: " + errorMsg + " callbackId: " + callbackId);
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                            public void onFinish(String url, String callbackId) {
                                String str;
                                String extension;
                                File file = new File(filePath);
                                String strSpecifyVUrl = null;
                                try {
                                    MediaType mediaType = this.currentMediaType;
                                    String strSubtype = mediaType != null ? mediaType.subtype() : null;
                                    if (strSubtype != null && strSubtype.length() != 0 && (extension = FileUtil.getExtension(file.getAbsolutePath())) != null && extension.length() != 0 && !Intrinsics.c(strSubtype, extension)) {
                                        String absolutePath = file.getAbsolutePath();
                                        Intrinsics.g(absolutePath, "downloadFile.absolutePath");
                                        int iV0 = StringsKt.v0(absolutePath, String.valueOf(extension), 0, false, 6, null);
                                        if (iV0 != -1) {
                                            String absolutePath2 = file.getAbsolutePath();
                                            Intrinsics.g(absolutePath2, "downloadFile.absolutePath");
                                            String strSubstring = absolutePath2.substring(0, iV0);
                                            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                                            String str2 = strSubstring + strSubtype;
                                            FileExtKt.moveTo(file, new File(str2), true, false);
                                            file = new File(str2);
                                        }
                                    }
                                } catch (Throwable th2) {
                                    TmcLogger.e(SystemAbilityBridge.TAG, "Error downloading extension failed!", th2);
                                }
                                try {
                                    Uri uri = Uri.parse(downloadUrl);
                                    String path = uri != null ? uri.getPath() : null;
                                    Object obj = TmcProxy.get(IFileResourceManager.class);
                                    FileResourceManager fileResourceManager = obj instanceof FileResourceManager ? (FileResourceManager) obj : null;
                                    String vhost = fileResourceManager != null ? fileResourceManager.getVhost(appId) : null;
                                    if (path == null || !StringsKt.W(path, "/", false, 2, null)) {
                                        str = vhost + File.separator + path;
                                    } else {
                                        str = vhost + path;
                                    }
                                    if (fileResourceManager != null) {
                                        strSpecifyVUrl = fileResourceManager.specifyVUrl(str, file.getAbsolutePath(), appId, false);
                                    }
                                } catch (Throwable th3) {
                                    TmcLogger.e(SystemAbilityBridge.TAG, th3);
                                }
                                Function0<Unit> function0 = success;
                                if (function0 != null) {
                                    function0.invoke();
                                }
                                TmcLogger.d(SystemAbilityBridge.TAG, "onFinish url: " + url + " callbackId: " + callbackId + " fileVUrl: " + strSpecifyVUrl);
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                            public void onPrepare(String url, String callbackId) {
                                TmcLogger.d(SystemAbilityBridge.TAG, "onPrepare url: " + url + " callbackId: " + callbackId);
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                            public void onProgress(String url, int progress, String callbackId) {
                                TmcLogger.d(SystemAbilityBridge.TAG, "onProgress url: " + url + " progress: " + progress + " callbackId: " + callbackId);
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.PackageDownloadCallback
                            public /* synthetic */ void progressUpdate(String str, int i11, String str2, long j11, long j12) {
                                com.cloud.tmc.kernel.proxy.network.a.a(this, str, i11, str2, j11, j12);
                            }

                            @Override // com.cloud.tmc.kernel.proxy.network.OnFileDownloadCallback
                            public boolean responseHeader(Headers headers) {
                                Intrinsics.h(headers, "headers");
                                return true;
                            }

                            public final void setCurrentMediaType(MediaType mediaType) {
                                this.currentMediaType = mediaType;
                            }
                        });
                        return;
                    } else {
                        if (error != null) {
                            error.invoke();
                            return;
                        }
                        return;
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                return;
            }
        }
        if (error != null) {
            error.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preloadAssets$lambda$37$lambda$36(Function0 block) {
        Intrinsics.h(block, "$block");
        block.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preloadH5Webview$lambda$51(Function0 block) {
        Intrinsics.h(block, "$block");
        block.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preloadResources$lambda$46$lambda$45(Function0 block) {
        Intrinsics.h(block, "$block");
        block.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preloadWebview$lambda$49(Function0 block) {
        Intrinsics.h(block, "$block");
        block.invoke();
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void addToHomeScreen(@BindingNode(App.class) App app, @BindingParam({RequestParameters.SUBRESOURCE_LOCATION}) String location, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(location, "location");
        Intrinsics.h(callback, "callback");
        try {
            callback.sendFailResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void addToHomeScreenByLogoLink(@BindingNode(App.class) App app, @BindingParam({"appId"}) String appId, @BindingParam({MiniAppIpcConfig.IPC_ADDHOME_APP_NAME}) String appName, @BindingParam({"appLogoLink"}) String appLogoLink, @BindingParam({RequestParameters.SUBRESOURCE_LOCATION}) String location, @BindingParam({"showConfirmDialog"}) boolean showConfirmDialog, @BindingParam(booleanDefault = true, value = {"showSuccessToast"}) boolean showSuccessToast, @BindingParam(stringDefault = "", value = {TmcConstants.EXTRA_DATA}) String extraData, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(appId, "appId");
        Intrinsics.h(appName, "appName");
        Intrinsics.h(appLogoLink, "appLogoLink");
        Intrinsics.h(location, "location");
        Intrinsics.h(extraData, "extraData");
        Intrinsics.h(callback, "callback");
        try {
            TmcLogger.d(TAG, "extraData->" + extraData);
            callback.sendFailResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void addToHomeScreenInternal(@BindingNode(App.class) App app, @BindingParam({RequestParameters.SUBRESOURCE_LOCATION}) String location, @BindingParam({"showConfirmDialog"}) boolean showConfirmDialog, @BindingParam(booleanDefault = true, value = {"showSuccessToast"}) boolean showSuccessToast, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(location, "location");
        Intrinsics.h(callback, "callback");
        try {
            callback.sendFailResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void backExitInterceptor(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        List<IBackPressedIntercept> interceptors;
        IBackPressedProcessor backPressedProcessor;
        Intrinsics.h(callback, "callback");
        Object obj = null;
        if (app != null) {
            try {
                IBackPressedProcessor backPressedProcessor2 = app.getBackPressedProcessor();
                if (backPressedProcessor2 != null && (interceptors = backPressedProcessor2.getInterceptors()) != null) {
                    for (Object obj2 : interceptors) {
                        if (Intrinsics.c(((IBackPressedIntercept) obj2).getInterceptName(), BackExitIntercept.TAG)) {
                            obj = obj2;
                            break;
                        }
                    }
                    obj = (IBackPressedIntercept) obj;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject);
                return;
            }
        }
        if (obj == null || !(obj instanceof BackExitIntercept)) {
            if (app != null && (backPressedProcessor = app.getBackPressedProcessor()) != null) {
                BackExitIntercept backExitIntercept = new BackExitIntercept();
                backExitIntercept.setMCallback(callback);
                backPressedProcessor.addInterceptors(backExitIntercept);
            }
            TmcLogger.d(TAG, "backExitInterceptor success");
            return;
        }
        BridgeCallback mCallback = ((BackExitIntercept) obj).getMCallback();
        if (mCallback != null) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", "backExitIntercept updated");
            mCallback.sendFailResponse(jsonObject2);
        }
        ((BackExitIntercept) obj).setMCallback(callback);
        TmcLogger.d(TAG, "backExitInterceptor updated");
    }

    @Override // com.cloud.tmc.kernel.extension.BridgeExtension
    public /* synthetic */ void callbackFail(BridgeCallback bridgeCallback, String str, Boolean bool) {
        com.cloud.tmc.kernel.extension.a.a(this, bridgeCallback, str, bool);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void cancelBackExitInterceptor(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        List<IBackPressedIntercept> interceptors;
        Object next;
        BridgeCallback mCallback;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                IBackPressedProcessor backPressedProcessor = app.getBackPressedProcessor();
                if (backPressedProcessor != null && (interceptors = backPressedProcessor.getInterceptors()) != null) {
                    Iterator<T> it = interceptors.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((IBackPressedIntercept) next).getInterceptName(), BackExitIntercept.TAG));
                    IBackPressedIntercept iBackPressedIntercept = (IBackPressedIntercept) next;
                    if (iBackPressedIntercept != null) {
                        if ((iBackPressedIntercept instanceof BackExitIntercept) && (mCallback = ((BackExitIntercept) iBackPressedIntercept).getMCallback()) != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("errMsg", "backExitIntercept removed");
                            mCallback.sendFailResponse(jsonObject);
                        }
                        TmcLogger.d(TAG, "cancelBackExitInterceptor success");
                        app.getBackPressedProcessor().removeInterceptors(iBackPressedIntercept);
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject2);
                return;
            }
        }
        callback.sendSuccessResponse();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002b A[Catch: all -> 0x0029, TRY_LEAVE, TryCatch #0 {all -> 0x0029, blocks: (B:4:0x0007, B:6:0x000d, B:8:0x0013, B:11:0x002b), top: B:16:0x0007 }] */
    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void darkThemeIsEnabled(@BindingNode(App.class) App app, @BindingParam({EventConstants.KEY_ACTION}) String action, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    callback.sendFailResponse();
                } else {
                    boolean zDarkThemeIsEnabled = SystemUtils.darkThemeIsEnabled(context);
                    JsonObject jsonObject = new JsonObject();
                    jsonObject.addProperty(TmcConstants.KEY_DARK_THEME_ENABLE_STATUS, Boolean.valueOf(zDarkThemeIsEnabled));
                    callback.sendSuccessResponse(jsonObject);
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject2);
            }
        } else {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void enableExitShortcutInterceptor(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                app.getBackPressedProcessor().addInterceptors(new BackToAddHomeIntercept());
                CreateShortCutUtils.INSTANCE.getAppMap().put(app.getAppId(), app);
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
                return;
            }
        }
        callback.sendSuccessResponse();
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getExternalDeviceSize(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("externalTotalSize", Long.valueOf(SDCardUtils.getExternalTotalSize())).addProperty("externalAvailableSize", Long.valueOf(SDCardUtils.getExternalAvailableSize())).build());
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getInternalDeviceSize(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("internalTotalSize", Long.valueOf(SDCardUtils.getInternalTotalSize())).addProperty("internalAvailableSize", Long.valueOf(SDCardUtils.getInternalAvailableSize())).build());
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void getMenuButtonBoundingClientRect(@BindingNode(Page.class) Page page, @BindingCallback BridgeCallback callback) {
        Unit unit;
        Intrinsics.h(callback, "callback");
        if (page != null) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("width", Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_WIDTH)));
            jsonObject.addProperty("height", Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_HEIGHT)));
            jsonObject.addProperty(IntegrationConstants.TAB_BAR_POSITION_TOP, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_TOP)));
            jsonObject.addProperty(TtmlNode.RIGHT, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_RIGHT)));
            jsonObject.addProperty(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_BOTTOM)));
            jsonObject.addProperty(TtmlNode.LEFT, Integer.valueOf(page.getIntValue(TmcParams.CAPSULE_LEFT)));
            callback.sendSuccessResponse(jsonObject);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void getMovieboxInfo(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    return;
                }
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("login_info", ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(context, "kv_login", "login_user")).build());
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void innerBackInterceptor(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        List<IBackPressedIntercept> interceptors;
        IBackPressedProcessor backPressedProcessor;
        Intrinsics.h(callback, "callback");
        Object obj = null;
        if (app != null) {
            try {
                IBackPressedProcessor backPressedProcessor2 = app.getBackPressedProcessor();
                if (backPressedProcessor2 != null && (interceptors = backPressedProcessor2.getInterceptors()) != null) {
                    for (Object obj2 : interceptors) {
                        if (Intrinsics.c(((IBackPressedIntercept) obj2).getInterceptName(), InnerBackIntercept.TAG)) {
                            obj = obj2;
                            break;
                        }
                    }
                    obj = (IBackPressedIntercept) obj;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject);
                return;
            }
        }
        if (obj == null || !(obj instanceof InnerBackIntercept)) {
            if (app != null && (backPressedProcessor = app.getBackPressedProcessor()) != null) {
                InnerBackIntercept innerBackIntercept = new InnerBackIntercept();
                innerBackIntercept.setMCallback(callback);
                backPressedProcessor.addInterceptors(innerBackIntercept);
            }
            TmcLogger.d(TAG, "innerBackInterceptor success");
            return;
        }
        BridgeCallback mCallback = ((InnerBackIntercept) obj).getMCallback();
        if (mCallback != null) {
            JsonObject jsonObject2 = new JsonObject();
            jsonObject2.addProperty("errMsg", "innerBackInterceptor updated");
            mCallback.sendFailResponse(jsonObject2);
        }
        ((InnerBackIntercept) obj).setMCallback(callback);
        TmcLogger.d(TAG, "innerBackInterceptor updated");
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void innerCancelBackInterceptor(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        List<IBackPressedIntercept> interceptors;
        Object next;
        BridgeCallback mCallback;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                IBackPressedProcessor backPressedProcessor = app.getBackPressedProcessor();
                if (backPressedProcessor != null && (interceptors = backPressedProcessor.getInterceptors()) != null) {
                    Iterator<T> it = interceptors.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((IBackPressedIntercept) next).getInterceptName(), InnerBackIntercept.TAG));
                    IBackPressedIntercept iBackPressedIntercept = (IBackPressedIntercept) next;
                    if (iBackPressedIntercept != null) {
                        if ((iBackPressedIntercept instanceof InnerBackIntercept) && (mCallback = ((InnerBackIntercept) iBackPressedIntercept).getMCallback()) != null) {
                            JsonObject jsonObject = new JsonObject();
                            jsonObject.addProperty("errMsg", "innerBackInterceptor removed");
                            mCallback.sendFailResponse(jsonObject);
                        }
                        TmcLogger.d(TAG, "innerCancelBackInterceptor success");
                        app.getBackPressedProcessor().removeInterceptors(iBackPressedIntercept);
                    }
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject2);
                return;
            }
        }
        callback.sendSuccessResponse();
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onFinalized() {
        TmcLogger.d(TAG, "onFinalized");
    }

    @Override // com.cloud.tmc.kernel.extension.Extension
    public void onInitialized() {
        TmcLogger.d(TAG, "onInitialized");
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0031 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #0 {all -> 0x002f, blocks: (B:4:0x0007, B:6:0x000d, B:8:0x0013, B:11:0x0031), top: B:16:0x0007 }] */
    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void openAppAuthorizeSetting(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    callback.sendFailResponse();
                } else {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts("package", context.getPackageName(), null));
                    context.startActivity(intent);
                    callback.sendSuccessResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
            }
        } else {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023 A[Catch: all -> 0x0021, TRY_LEAVE, TryCatch #0 {all -> 0x0021, blocks: (B:4:0x0007, B:6:0x000d, B:8:0x0013, B:11:0x0023), top: B:16:0x0007 }] */
    @ActionFilter
    @ThreadType(ExecutorType.UI)
    public final void openSystemBluetoothSetting(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    callback.sendFailResponse();
                } else {
                    context.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
                    callback.sendSuccessResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
            }
        } else {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0032 A[Catch: all -> 0x0030, TRY_LEAVE, TryCatch #0 {all -> 0x0030, blocks: (B:4:0x000c, B:6:0x0012, B:8:0x0018, B:11:0x0032), top: B:16:0x000c }] */
    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void openSystemSetting(@BindingNode(App.class) App app, @BindingParam({"delayTimeMillis"}) String delayTimeMillis, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(delayTimeMillis, "delayTimeMillis");
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    callback.sendFailResponse();
                } else {
                    context.getApplicationContext().startActivity(new Intent("android.settings.SETTINGS").setFlags(ASTNode.DEOP));
                    callback.sendSuccessResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject);
            }
        } else {
            callback.sendFailResponse();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0031 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #0 {all -> 0x002f, blocks: (B:4:0x0007, B:6:0x000d, B:8:0x0013, B:11:0x0031), top: B:16:0x0007 }] */
    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void openSystemSettingWithAction(@BindingNode(App.class) App app, @BindingParam({EventConstants.KEY_ACTION}) String action, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || (context = appContext.getContext()) == null) {
                    callback.sendFailResponse();
                } else {
                    context.getApplicationContext().startActivity(new Intent(StringExtKt.orDefault(action, "android.settings.SETTINGS")).setFlags(ASTNode.DEOP));
                    callback.sendSuccessResponse();
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty("errMsg", th2.getMessage());
                callback.sendFailResponse(jsonObject);
            }
        } else {
            callback.sendFailResponse();
        }
    }

    @Override // com.cloud.tmc.kernel.security.Guard
    public Permission permit() {
        return null;
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public final void preloadAssets(@BindingNode(App.class) final App app, @BindingParam({"data"}) JsonArray data, @BindingCallback BridgeCallback callback) {
        final CountDownLatch countDownLatch;
        String str;
        String str2;
        String str3;
        String str4;
        JsonObject asJsonObject;
        String str5;
        JsonElement jsonElement;
        JsonElement jsonElement2;
        boolean z10;
        JsonElement jsonElement3;
        JsonElement jsonElement4;
        App app2 = app;
        Intrinsics.h(callback, "callback");
        if (app2 == null || data == null || data.isEmpty()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "Parameter error: PA10001");
            callback.sendFailResponse(jsonObject);
            return;
        }
        TmcLogger.d(TAG, "preloadAssets data: " + data);
        Iterator<JsonElement> it = data.iterator();
        do {
            boolean zHasNext = it.hasNext();
            String str6 = ASSET_SRC;
            String str7 = "type";
            String str8 = ASSET_TYPE_IMAGE;
            String str9 = ASSET_TYPE_FONT;
            String asString = null;
            if (!zHasNext) {
                if (!NetworkUtils.isConnected()) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("errMsg", "Network is not connected: PA10003");
                    callback.sendFailResponse(jsonObject2);
                    return;
                }
                CountDownLatch countDownLatch2 = new CountDownLatch(data.size());
                final LinkedHashSet linkedHashSet = new LinkedHashSet();
                final LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                final ArrayList arrayList = new ArrayList();
                for (JsonElement jsonElement5 : data) {
                    if (jsonElement5 != null) {
                        try {
                            asJsonObject = jsonElement5.getAsJsonObject();
                        } catch (Throwable th2) {
                            th = th2;
                            countDownLatch = countDownLatch2;
                            str = str9;
                            str2 = str8;
                            str3 = str7;
                            str4 = str6;
                            TmcLogger.e(TAG, th);
                            app2 = app;
                            countDownLatch2 = countDownLatch;
                            str9 = str;
                            str8 = str2;
                            str7 = str3;
                            str6 = str4;
                        }
                    } else {
                        asJsonObject = null;
                    }
                    final String asString2 = (asJsonObject == null || (jsonElement2 = asJsonObject.get(str7)) == null) ? null : jsonElement2.getAsString();
                    final String asString3 = (asJsonObject == null || (jsonElement = asJsonObject.get(str6)) == null) ? null : jsonElement.getAsString();
                    String extension = FileUtil.getExtension(asString3);
                    if (extension == null) {
                        extension = FileUtil.generateRandomSuffix(2);
                    }
                    String strTakeIfNotEmpty = StringExtKt.takeIfNotEmpty(asString3 != null ? StringExtKt.toMd5(asString3) : null);
                    if (strTakeIfNotEmpty == null) {
                        strTakeIfNotEmpty = GenerateIdUtils.INSTANCE.generateRandomId();
                    }
                    String strAddExtension = FileUtil.addExtension(strTakeIfNotEmpty, extension);
                    if (Intrinsics.c(asString2, str9)) {
                        String str10 = File.separator;
                        str5 = ASSET_PATH + str10 + str9 + str10 + strAddExtension;
                    } else if (Intrinsics.c(asString2, str8)) {
                        String str11 = File.separator;
                        str5 = ASSET_PATH + str11 + str8 + str11 + strAddExtension;
                    } else {
                        str5 = ASSET_PATH + File.separator + strAddExtension;
                    }
                    final File fileGenerateFile = FileUtil.generateFile(app2, str5);
                    TmcLogger.d(TAG, "preloadAssets download file path: " + fileGenerateFile.getAbsolutePath());
                    countDownLatch = countDownLatch2;
                    final String str12 = str5;
                    str = str9;
                    str2 = str8;
                    str3 = str7;
                    str4 = str6;
                    try {
                        final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadAssets$4$block$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Object invoke() {
                                m238invoke();
                                return Unit.f67061a;
                            }

                            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                            public final void m238invoke() {
                                SystemAbilityBridge systemAbilityBridge = this.this$0;
                                App app3 = app;
                                String appId = app3.getAppId();
                                Intrinsics.g(appId, "app.appId");
                                String str13 = asString2;
                                String str14 = asString3;
                                String absolutePath = fileGenerateFile.getAbsolutePath();
                                Intrinsics.g(absolutePath, "downloadFile.absolutePath");
                                final App app4 = app;
                                final File file = fileGenerateFile;
                                final String str15 = str12;
                                final List<Map<String, String>> list = arrayList;
                                final String str16 = asString2;
                                final String str17 = asString3;
                                final CountDownLatch countDownLatch3 = countDownLatch;
                                final Set<String> set = linkedHashSet;
                                Function0<Unit> function1 = new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadAssets$4$block$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Object invoke() {
                                        m239invoke();
                                        return Unit.f67061a;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                    public final void m239invoke() {
                                        String strGenerateVUrl = app4.getIFileResourceManager().generateVUrl(file.getAbsolutePath(), app4.getAppId(), str15, TmcConstants.TEMP_DATA_PATH);
                                        List<Map<String, String>> list2 = list;
                                        String str18 = str16;
                                        if (str18 == null) {
                                            str18 = "";
                                        }
                                        Pair pairA = TuplesKt.a(NativeComponentConstants.KEY_COMPONENT_TYPE, str18);
                                        String str19 = str17;
                                        if (str19 == null) {
                                            str19 = "";
                                        }
                                        list2.add(MapsKt.j(pairA, TuplesKt.a("src", str19), TuplesKt.a("saveFilePath", strGenerateVUrl)));
                                        countDownLatch3.countDown();
                                        set.add("");
                                    }
                                };
                                final CountDownLatch countDownLatch4 = countDownLatch;
                                final Set<String> set2 = linkedHashSet2;
                                systemAbilityBridge.downloadFile(app3, appId, str13, str14, absolutePath, function1, new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadAssets$4$block$1.2
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Object invoke() {
                                        m240invoke();
                                        return Unit.f67061a;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                    public final void m240invoke() {
                                        countDownLatch4.countDown();
                                        set2.add("");
                                    }
                                });
                            }
                        };
                        if (ExecutorUtils.isMainThread()) {
                            ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.p
                                @Override // java.lang.Runnable
                                public final void run() {
                                    SystemAbilityBridge.preloadAssets$lambda$37$lambda$36(function0);
                                }
                            });
                        } else {
                            function0.invoke();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        TmcLogger.e(TAG, th);
                    }
                    app2 = app;
                    countDownLatch2 = countDownLatch;
                    str9 = str;
                    str8 = str2;
                    str7 = str3;
                    str6 = str4;
                }
                try {
                    TmcLogger.d(TAG, "await download: " + countDownLatch2.await(3L, TimeUnit.MINUTES));
                    if (linkedHashSet.isEmpty()) {
                        JsonObject jsonObject3 = new JsonObject();
                        jsonObject3.addProperty("errMsg", "Download Failed: PA10004");
                        callback.sendFailResponse(jsonObject3);
                    } else {
                        JsonObject jsonObject4 = new JsonObject();
                        jsonObject4.addProperty("result", GsonUtils.toJson(arrayList));
                        callback.sendSuccessResponse(jsonObject4);
                    }
                    return;
                } catch (Throwable th4) {
                    TmcLogger.e(TAG, th4);
                    callback.sendFailResponse();
                    return;
                }
            }
            JsonElement next = it.next();
            JsonObject asJsonObject2 = next != null ? next.getAsJsonObject() : null;
            String asString4 = (asJsonObject2 == null || (jsonElement4 = asJsonObject2.get("type")) == null) ? null : jsonElement4.getAsString();
            if (asJsonObject2 != null && (jsonElement3 = asJsonObject2.get(ASSET_SRC)) != null) {
                asString = jsonElement3.getAsString();
            }
            boolean zB0 = CollectionsKt.b0(CollectionsKt.h(ASSET_TYPE_FONT, ASSET_TYPE_IMAGE), asString4);
            z10 = asString == null || asString.length() == 0;
            if (!zB0) {
                break;
            }
        } while (!z10);
        JsonObject jsonObject5 = new JsonObject();
        jsonObject5.addProperty("errMsg", "Type does not match: PA10002");
        callback.sendFailResponse(jsonObject5);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void preloadH5Webview(@BindingNode(App.class) App app, @BindingParam({"delayTimeMillis"}) long delayTimeMillis, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        Page activePage = app != null ? app.getActivePage() : null;
        MiniAppConfigModel.WindowBean window = activePage != null ? activePage.getWindow() : null;
        TmcLogger.d(TAG, "Preload Webview with delayTimeMillis: " + delayTimeMillis + " handleWebViewPreload: " + (window != null ? window.getHandleWebviewPreload() : null));
        if (0 > delayTimeMillis || delayTimeMillis >= 5001) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "delayTimeMillis is not in the range 0..5000: SP10003");
            callback.sendFailResponse(jsonObject);
            return;
        }
        try {
            final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadH5Webview$block$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m241invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m241invoke() {
                    if (((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).createWebview()) {
                        callback.sendSuccessResponse();
                    } else {
                        callback.sendFailResponse();
                    }
                }
            };
            if (delayTimeMillis > 0) {
                ScheduledThreadPoolExecutor scheduledExecutor = ExecutorUtils.getScheduledExecutor();
                if (scheduledExecutor != null) {
                    scheduledExecutor.schedule(new Runnable() { // from class: com.cloud.tmc.integration.bridge.n
                        @Override // java.lang.Runnable
                        public final void run() {
                            SystemAbilityBridge.preloadH5Webview$lambda$51(function0);
                        }
                    }, delayTimeMillis, TimeUnit.MILLISECONDS);
                }
            } else {
                function0.invoke();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NETWORK)
    public final void preloadResources(@BindingNode(App.class) final App app, @BindingParam({"data"}) JsonArray data, @BindingCallback BridgeCallback callback) {
        String asString;
        JsonObject asJsonObject;
        JsonElement jsonElement;
        JsonElement jsonElement2;
        JsonElement jsonElement3;
        Intrinsics.h(callback, "callback");
        if (app == null || data == null || data.isEmpty()) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "Parameter error: PA10001");
            callback.sendFailResponse(jsonObject);
            return;
        }
        TmcLogger.d(TAG, "preloadResources data: " + data);
        Iterator<JsonElement> it = data.iterator();
        do {
            asString = null;
            if (!it.hasNext()) {
                if (!NetworkUtils.isConnected()) {
                    JsonObject jsonObject2 = new JsonObject();
                    jsonObject2.addProperty("errMsg", "Network is not connected: PA10003");
                    callback.sendFailResponse(jsonObject2);
                    return;
                }
                final CountDownLatch countDownLatch = new CountDownLatch(data.size());
                final LinkedHashSet linkedHashSet = new LinkedHashSet();
                final LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                final ArrayList arrayList = new ArrayList();
                for (JsonElement jsonElement4 : data) {
                    if (jsonElement4 != null) {
                        try {
                            asJsonObject = jsonElement4.getAsJsonObject();
                        } catch (Throwable th2) {
                            TmcLogger.e(TAG, th2);
                        }
                    } else {
                        asJsonObject = null;
                    }
                    final String asString2 = (asJsonObject == null || (jsonElement2 = asJsonObject.get(ASSET_SRC)) == null) ? null : jsonElement2.getAsString();
                    final String asString3 = (asJsonObject == null || (jsonElement = asJsonObject.get("appId")) == null) ? null : jsonElement.getAsString();
                    String extension = FileUtil.getExtension(asString2);
                    if (extension == null) {
                        extension = FileUtil.generateRandomSuffix(2);
                    }
                    String strTakeIfNotEmpty = StringExtKt.takeIfNotEmpty(asString2 != null ? StringExtKt.toMd5(asString2) : null);
                    if (strTakeIfNotEmpty == null) {
                        strTakeIfNotEmpty = GenerateIdUtils.INSTANCE.generateRandomId();
                    }
                    String strAddExtension = FileUtil.addExtension(strTakeIfNotEmpty, extension);
                    final String str = ASSET_PATH + File.separator + strAddExtension;
                    String strTakeIfNotEmpty2 = StringExtKt.takeIfNotEmpty(asString3);
                    if (strTakeIfNotEmpty2 == null) {
                        strTakeIfNotEmpty2 = app.getAppId();
                        Intrinsics.g(strTakeIfNotEmpty2, "app.appId");
                    }
                    final String str2 = strTakeIfNotEmpty2;
                    final File fileGenerateFile = FileUtil.generateFile(str2, str);
                    TmcLogger.d(TAG, "preloadResources download file path: " + fileGenerateFile.getAbsolutePath());
                    final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadResources$4$block$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Object invoke() {
                            m242invoke();
                            return Unit.f67061a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                        public final void m242invoke() {
                            SystemAbilityBridge systemAbilityBridge = this.this$0;
                            App app2 = app;
                            String str3 = str2;
                            String str4 = asString2;
                            String absolutePath = fileGenerateFile.getAbsolutePath();
                            Intrinsics.g(absolutePath, "downloadFile.absolutePath");
                            final App app3 = app;
                            final File file = fileGenerateFile;
                            final String str5 = str;
                            final List<Map<String, String>> list = arrayList;
                            final String str6 = asString3;
                            final String str7 = asString2;
                            final CountDownLatch countDownLatch2 = countDownLatch;
                            final Set<String> set = linkedHashSet;
                            Function0<Unit> function1 = new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadResources$4$block$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Object invoke() {
                                    m243invoke();
                                    return Unit.f67061a;
                                }

                                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                public final void m243invoke() {
                                    String strGenerateVUrl = app3.getIFileResourceManager().generateVUrl(file.getAbsolutePath(), app3.getAppId(), str5, TmcConstants.TEMP_DATA_PATH);
                                    List<Map<String, String>> list2 = list;
                                    String str8 = str6;
                                    if (str8 == null) {
                                        str8 = "";
                                    }
                                    Pair pairA = TuplesKt.a("appId", str8);
                                    String str9 = str7;
                                    if (str9 == null) {
                                        str9 = "";
                                    }
                                    list2.add(MapsKt.j(pairA, TuplesKt.a("src", str9), TuplesKt.a("saveFilePath", strGenerateVUrl)));
                                    countDownLatch2.countDown();
                                    set.add("");
                                }
                            };
                            final CountDownLatch countDownLatch3 = countDownLatch;
                            final Set<String> set2 = linkedHashSet2;
                            systemAbilityBridge.downloadFile(app2, str3, null, str4, absolutePath, function1, new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadResources$4$block$1.2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public /* bridge */ /* synthetic */ Object invoke() {
                                    m244invoke();
                                    return Unit.f67061a;
                                }

                                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                public final void m244invoke() {
                                    countDownLatch3.countDown();
                                    set2.add("");
                                }
                            });
                        }
                    };
                    if (ExecutorUtils.isMainThread()) {
                        ExecutorUtils.execute(ExecutorType.IO, new Runnable() { // from class: com.cloud.tmc.integration.bridge.o
                            @Override // java.lang.Runnable
                            public final void run() {
                                SystemAbilityBridge.preloadResources$lambda$46$lambda$45(function0);
                            }
                        });
                    } else {
                        function0.invoke();
                    }
                }
                try {
                    TmcLogger.d(TAG, "await download: " + countDownLatch.await(3L, TimeUnit.MINUTES));
                    if (linkedHashSet.isEmpty()) {
                        JsonObject jsonObject3 = new JsonObject();
                        jsonObject3.addProperty("errMsg", "Download Failed: PA10004");
                        callback.sendFailResponse(jsonObject3);
                    } else {
                        JsonObject jsonObject4 = new JsonObject();
                        jsonObject4.addProperty("result", GsonUtils.toJson(arrayList));
                        callback.sendSuccessResponse(jsonObject4);
                    }
                    return;
                } catch (Throwable th3) {
                    TmcLogger.e(TAG, th3);
                    callback.sendFailResponse();
                    return;
                }
            }
            JsonElement next = it.next();
            JsonObject asJsonObject2 = next != null ? next.getAsJsonObject() : null;
            if (asJsonObject2 != null && (jsonElement3 = asJsonObject2.get(ASSET_SRC)) != null) {
                asString = jsonElement3.getAsString();
            }
            if (asString == null) {
                break;
            }
        } while (asString.length() != 0);
        JsonObject jsonObject5 = new JsonObject();
        jsonObject5.addProperty("errMsg", "Url is empty: PA10002");
        callback.sendFailResponse(jsonObject5);
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void preloadWebview(@BindingNode(App.class) App app, @BindingParam({"delayTimeMillis"}) long delayTimeMillis, @BindingCallback final BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        Page activePage = app != null ? app.getActivePage() : null;
        MiniAppConfigModel.WindowBean window = activePage != null ? activePage.getWindow() : null;
        TmcLogger.d(TAG, "Preload Webview with delayTimeMillis: " + delayTimeMillis + " handleWebViewPreload: " + (window != null ? window.getHandleWebviewPreload() : null));
        if (0 > delayTimeMillis || delayTimeMillis >= 5001) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("errMsg", "delayTimeMillis is not in the range 0..5000: SP10003");
            callback.sendFailResponse(jsonObject);
            return;
        }
        try {
            final Function0<Unit> function0 = new Function0<Unit>() { // from class: com.cloud.tmc.integration.bridge.SystemAbilityBridge$preloadWebview$block$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m245invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m245invoke() {
                    if (((IInnerRenderPool) TmcProxy.get(IInnerRenderPool.class)).createRender(false)) {
                        callback.sendSuccessResponse();
                    } else {
                        callback.sendFailResponse();
                    }
                }
            };
            if (delayTimeMillis > 0) {
                ScheduledThreadPoolExecutor scheduledExecutor = ExecutorUtils.getScheduledExecutor();
                if (scheduledExecutor != null) {
                    scheduledExecutor.schedule(new Runnable() { // from class: com.cloud.tmc.integration.bridge.q
                        @Override // java.lang.Runnable
                        public final void run() {
                            SystemAbilityBridge.preloadWebview$lambda$49(function0);
                        }
                    }, delayTimeMillis, TimeUnit.MILLISECONDS);
                }
            } else {
                function0.invoke();
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "", th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryMiniappCustomConfig(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext == null || appContext.getContext() == null) {
                    return;
                }
                AppUtils appUtils = AppUtils.INSTANCE;
                AppContext appContext2 = app.getAppContext();
                Context context = appContext2 != null ? appContext2.getContext() : null;
                AppNode appNode = app instanceof AppNode ? (AppNode) app : null;
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("customConfig", appUtils.queryMiniappCustomConfig(context, appNode != null ? appNode.getmAppLoadResult() : null)).build());
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
            }
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryShortcutExists(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Intrinsics.h(callback, "callback");
        try {
            if (app == null) {
                callback.sendFailResponse();
                return;
            }
            AppContext appContext = app.getAppContext();
            Context context = appContext != null ? appContext.getContext() : null;
            if (context == null) {
                callback.sendFailResponse();
            } else if (Build.VERSION.SDK_INT < 26) {
                callback.sendFailResponse();
            } else {
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty(TmcConstants.KEY_STORAGE_ADD_HOME_IS_EXIST, Boolean.valueOf(AppUtils.INSTANCE.queryShortcutExist(context, app.getAppId()))).build());
            }
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.IO)
    public final void queryShortcutListExists(@BindingNode(App.class) App app, @BindingParam({"appIdList"}) JsonArray appIdList, @BindingParam(intDefault = 15, value = {"maxLength"}) int maxLength, @BindingCallback BridgeCallback callback) {
        String asString;
        Intrinsics.h(appIdList, "appIdList");
        Intrinsics.h(callback, "callback");
        try {
            if (app == null) {
                callback.sendFailResponse();
                return;
            }
            AppContext appContext = app.getAppContext();
            if (appContext == null) {
                callback.sendFailResponse();
                return;
            }
            Context context = appContext.getContext();
            if (context == null) {
                callback.sendFailResponse();
                return;
            }
            if (Build.VERSION.SDK_INT < 26) {
                callback.sendFailResponse();
                return;
            }
            if (!appIdList.isJsonNull() && !appIdList.isEmpty()) {
                if (appIdList.size() <= maxLength) {
                    maxLength = appIdList.size();
                }
                TmcLogger.d(TAG, "queryShortcutListExists size=" + maxLength);
                JsonArray jsonArray = new JsonArray();
                for (int i11 = 0; i11 < maxLength; i11++) {
                    JsonElement jsonElement = appIdList.get(i11);
                    if (jsonElement != null && (asString = jsonElement.getAsString()) != null) {
                        boolean zQueryShortcutExist = AppUtils.INSTANCE.queryShortcutExist(context, asString);
                        JsonObject jsonObject = new JsonObject();
                        jsonObject.addProperty("appId", asString);
                        jsonObject.addProperty(TmcConstants.KEY_STORAGE_ADD_HOME_IS_EXIST, Boolean.valueOf(zQueryShortcutExist));
                        jsonArray.add(jsonObject);
                    }
                }
                String json = TmcGsonUtilsKt.toJson(jsonArray);
                TmcLogger.d(TAG, "queryShortcutListExists queryResult=" + json);
                callback.sendSuccessResponse(JsonObjectUtils.create().addProperty("queryResult", json).build());
                return;
            }
            callback.sendFailResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void removeExitShortcutInterceptor(@BindingNode(App.class) App app, @BindingCallback BridgeCallback callback) {
        Object next;
        Intrinsics.h(callback, "callback");
        try {
            if (app == null) {
                callback.sendFailResponse();
                return;
            }
            Iterator<T> it = app.getBackPressedProcessor().getInterceptors().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((IBackPressedIntercept) next).getInterceptName(), BackToAddHomeIntercept.TAG));
            IBackPressedIntercept iBackPressedIntercept = (IBackPressedIntercept) next;
            if (iBackPressedIntercept != null) {
                TmcLogger.d(TAG, "removeShortcutInterceptor success");
                app.getBackPressedProcessor().removeInterceptors(iBackPressedIntercept);
                CreateShortCutUtils.INSTANCE.getAppMap().remove(app.getAppId());
            }
            callback.sendSuccessResponse();
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            callback.sendFailResponse();
        }
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void setKeepScreenOn(@BindingNode(App.class) App app, @BindingParam({"keepScreenOn"}) boolean keepScreenOn, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    if (keepScreenOn) {
                        ScreenUtils.INSTANCE.acquire(context);
                    } else {
                        ScreenUtils.INSTANCE.release();
                    }
                    callback.sendSuccessResponse();
                    return;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
                return;
            }
        }
        callback.sendFailResponse();
    }

    @ActionFilter
    @ThreadType(ExecutorType.NORMAL)
    public final void updateAddHomeLogoAndName(@BindingNode(App.class) App app, @BindingParam({"appId"}) String appId, @BindingParam({MiniAppIpcConfig.IPC_ADDHOME_APP_NAME}) String appName, @BindingParam({"appLogoLink"}) String appLogoLink, @BindingCallback BridgeCallback callback) {
        Context context;
        Intrinsics.h(appName, "appName");
        Intrinsics.h(appLogoLink, "appLogoLink");
        Intrinsics.h(callback, "callback");
        if (app != null) {
            try {
                AppContext appContext = app.getAppContext();
                if (appContext != null && (context = appContext.getContext()) != null) {
                    if (appId == null || appId.length() == 0) {
                        appId = app.getAppId();
                    }
                    String finalAppId = appId;
                    AddHomeToScreenUtils addHomeToScreenUtils = AddHomeToScreenUtils.INSTANCE;
                    Intrinsics.g(finalAppId, "finalAppId");
                    addHomeToScreenUtils.checkAndUpdateScreenIcon(context, finalAppId, appName, appLogoLink, callback);
                    return;
                }
            } catch (Throwable th2) {
                TmcLogger.e(TAG, th2);
                callback.sendFailResponse();
                return;
            }
        }
        callback.sendFailResponse();
    }
}
