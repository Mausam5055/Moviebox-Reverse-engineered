package com.cloud.tmc.integration.resource.processor;

import android.app.Activity;
import android.content.res.AssetManager;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.resource.BaseResourceProcessor;
import com.cloud.tmc.integration.structure.PageContext;
import com.cloud.tmc.integration.structure.node.PageNode;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J)\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J3\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\u001f\u0010\b\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J)\u0010\b\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\u001c\u0010\u0012\u001a\u00020\u00132\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u0012\u001a\u00020\u00132\b\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0014\u001a\u00020\u00132\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor;", "Lcom/cloud/tmc/kernel/resource/IResourceProcessor;", "()V", "TAG", "", "fuzzySearch", "", "appId", "get", "Landroid/webkit/WebResourceResponse;", "request", "Landroid/webkit/WebResourceRequest;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "commonResId", "Ljava/io/File;", "url", TmcConstants.KEY_MINI_COMMONRES_ID, "shouldIntercept", "", "shouldInterceptFuzzySearch", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShellResourceProcessor implements IResourceProcessor {
    public static final String ASSET_SHELL_JS_BRIDGE_FILE_NAME = "byteh5bridge.aio.min.js";
    public static final String ASSET_SHELL_JS_BRIDGE_FOLDER_NAME = "ShellJSBridge";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex regex = new Regex("byteh5bridge.*.aio.min.js");
    private final String TAG = "miniShell";

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/cloud/tmc/integration/resource/processor/ShellResourceProcessor$Companion;", "", "()V", "ASSET_SHELL_JS_BRIDGE_FILE_NAME", "", "ASSET_SHELL_JS_BRIDGE_FOLDER_NAME", "regex", "Lkotlin/text/Regex;", "getRegex", "()Lkotlin/text/Regex;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Regex getRegex() {
            return ShellResourceProcessor.regex;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public List<String> fuzzySearch(String appId, String fuzzySearch) {
        return new ArrayList();
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest request, String appId, Node node) throws IOException {
        Uri url;
        String path;
        PageContext pageContext;
        Activity activity;
        Uri url2 = request != null ? request.getUrl() : null;
        if (url2 == null) {
            return null;
        }
        String string = url2.toString();
        Intrinsics.g(string, "uri.toString()");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        TmcLogger.i(this.TAG, "ShellJSBridge requestUrl:" + string);
        PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
        AssetManager assets = (pageNode == null || (pageContext = pageNode.getPageContext()) == null || (activity = pageContext.getActivity()) == null) ? null : activity.getAssets();
        if (assets != null) {
            String[] list = assets.list(ASSET_SHELL_JS_BRIDGE_FOLDER_NAME);
            if (list == null || list.length == 0) {
                TmcLogger.i(this.TAG, "ShellJSBridge Folder must have byteh5bridge.aio.min.js");
            } else {
                if (list.length > 1) {
                    TmcLogger.i(this.TAG, "ShellJSBridge Folder only keep one byteh5bridge.aio.min.js");
                    return null;
                }
                String string2 = list[0].toString();
                if (regex.matchEntire(string2) == null) {
                    TmcLogger.i(this.TAG, "ShellJSBridge Folder have file must match to byteh5bridge.aio.min.js");
                    return null;
                }
                if (request != null && (url = request.getUrl()) != null && (path = url.getPath()) != null) {
                    List listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null);
                    if (!listS0.isEmpty() && (Intrinsics.c(CollectionsKt.u0(listS0), ASSET_SHELL_JS_BRIDGE_FILE_NAME) || Intrinsics.c(CollectionsKt.u0(listS0), string2))) {
                        TmcLogger.i(this.TAG, "ShellJSBridge get file From Assets:ShellJSBridge/" + string2);
                        InputStream inputStreamOpen = assets.open("ShellJSBridge/" + string2);
                        Intrinsics.g(inputStreamOpen, "assetManager.open(\"$ASSE…E_FOLDER_NAME/$fileName\")");
                        return BaseResourceProcessor.addCommonWebRespHeaders(new WebResourceResponse(UrlUtils.getContentTypeFromUrl(string), BaseResourceProcessor.getResourceResponseEncoding(), inputStreamOpen));
                    }
                }
            }
        }
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest request, String appId, String commonResId, Node node) {
        return get(request, appId, node);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String url, String appId) {
        return null;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public File get(String url, String appId, String commonresId) {
        return get(url, appId);
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(WebResourceRequest request, String appId) {
        String path;
        if (request == null) {
            return false;
        }
        try {
            Uri url = request.getUrl();
            if (url == null || (path = url.getPath()) == null) {
                return false;
            }
            List listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null);
            return (listS0.isEmpty() || regex.matchEntire((CharSequence) CollectionsKt.u0(listS0)) == null) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(String url, String appId) {
        if (url == null) {
            return false;
        }
        try {
            String path = UrlUtils.getPath(url);
            if (path == null) {
                return false;
            }
            Intrinsics.g(path, "getPath(it)");
            List listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null);
            return (listS0.isEmpty() || regex.matchEntire((CharSequence) CollectionsKt.u0(listS0)) == null) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldInterceptFuzzySearch(String fuzzySearch) {
        return false;
    }
}
