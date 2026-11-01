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
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.render.bean.JSConfig;
import com.cloud.tmc.render.proxy.InjectJSProxy;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0005¢\u0006\u0002\u0010\u0002J\"\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0016J)\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J3\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\u001f\u0010\f\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J)\u0010\f\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u0096\u0002J\u001c\u0010\u0016\u001a\u00020\u00172\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u001c\u0010\u0016\u001a\u00020\u00172\b\u0010\u0014\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\u0018\u001a\u00020\u00172\b\u0010\n\u001a\u0004\u0018\u00010\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/cloud/tmc/integration/resource/processor/InjectJavaScriptResourceProcessor;", "Lcom/cloud/tmc/kernel/resource/IResourceProcessor;", "()V", "TAG", "", "appId", "getAppId", "()Ljava/lang/String;", "setAppId", "(Ljava/lang/String;)V", "fuzzySearch", "", "get", "Landroid/webkit/WebResourceResponse;", "request", "Landroid/webkit/WebResourceRequest;", "node", "Lcom/cloud/tmc/kernel/node/Node;", "commonResId", "Ljava/io/File;", "url", TmcConstants.KEY_MINI_COMMONRES_ID, "shouldIntercept", "", "shouldInterceptFuzzySearch", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InjectJavaScriptResourceProcessor implements IResourceProcessor {
    public static final String ASSET_INJECT_JS_FOLDER_NAME = "injectjavascript";
    private String TAG = "InjectJavaScriptResourceProcessor";
    private String appId = "";

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public List<String> fuzzySearch(String appId, String fuzzySearch) {
        return new ArrayList();
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public WebResourceResponse get(WebResourceRequest request, String appId, Node node) {
        Uri url;
        List listS0;
        String str;
        PageContext pageContext;
        Activity activity;
        if (request != null) {
            try {
                url = request.getUrl();
            } catch (Throwable unused) {
            }
        } else {
            url = null;
        }
        if (url == null) {
            return null;
        }
        String string = url.toString();
        Intrinsics.g(string, "uri.toString()");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        TmcLogger.i(this.TAG, "InjectJavaScriptResourceProcessor requestUrl:" + string);
        String path = UrlUtils.getPath(string);
        if (path != null && (listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) != null && !listS0.isEmpty()) {
            String str2 = (String) CollectionsKt.u0(listS0);
            PageNode pageNode = node instanceof PageNode ? (PageNode) node : null;
            AssetManager assets = (pageNode == null || (pageContext = pageNode.getPageContext()) == null || (activity = pageContext.getActivity()) == null) ? null : activity.getAssets();
            if (assets != null) {
                String[] list = assets.list(ASSET_INJECT_JS_FOLDER_NAME);
                if (list != null && list.length != 0) {
                    int length = list.length;
                    int i11 = 0;
                    while (true) {
                        if (i11 >= length) {
                            str = null;
                            break;
                        }
                        str = list[i11];
                        if (Intrinsics.c(str, str2)) {
                            break;
                        }
                        i11++;
                    }
                    if (str == null) {
                        return null;
                    }
                    TmcLogger.i(this.TAG, "InjectJavaScriptResourceProcessor filePath:injectjavascript/" + str);
                    InputStream inputStreamOpen = assets.open("injectjavascript/" + str);
                    Intrinsics.g(inputStreamOpen, "assetManager.open(\"$ASSE…S_FOLDER_NAME/$fileName\")");
                    return BaseResourceProcessor.addCommonWebRespHeaders(new WebResourceResponse(UrlUtils.getContentTypeFromUrl(string), BaseResourceProcessor.getResourceResponseEncoding(), inputStreamOpen));
                }
                TmcLogger.i(this.TAG, "InjectJavaScriptResourceProcessor Folder must have js file");
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

    public final String getAppId() {
        return this.appId;
    }

    public final void setAppId(String str) {
        this.appId = str;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001e A[Catch: all -> 0x009b, TryCatch #0 {all -> 0x009b, blocks: (B:3:0x0002, B:5:0x0008, B:7:0x000e, B:10:0x0022, B:13:0x002d, B:15:0x0035, B:19:0x0041, B:20:0x004b, B:22:0x0051, B:24:0x0061, B:26:0x0073, B:28:0x0077, B:30:0x007d, B:9:0x001e), top: B:36:0x0002 }] */
    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(WebResourceRequest request, String appId) {
        String path;
        List listS0;
        if (request != null) {
            try {
                Uri url = request.getUrl();
                if (url == null || (path = url.getPath()) == null || (listS0 = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) == null) {
                    listS0 = CollectionsKt.l();
                }
            } catch (Throwable unused) {
                return false;
            }
        } else {
            listS0 = CollectionsKt.l();
        }
        String str = "";
        String str2 = !listS0.isEmpty() ? (String) CollectionsKt.u0(listS0) : "";
        InjectJSProxy injectJSProxy = (InjectJSProxy) TmcProxy.get(InjectJSProxy.class);
        if (appId != null) {
            str = appId;
        }
        Iterator<T> it = injectJSProxy.getTartgetInjectJSData(str).iterator();
        while (it.hasNext()) {
            if (Intrinsics.c(((JSConfig) it.next()).getJsName(), str2) && ShellResourceProcessor.INSTANCE.getRegex().matchEntire((CharSequence) CollectionsKt.u0(listS0)) == null) {
                TmcLogger.d(this.TAG, "InjectJavaScriptResourceProcessor shouldIntercept -> appId:" + appId + ", requestUrl:" + (request != null ? request.getUrl() : null));
                return true;
            }
        }
        return false;
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldIntercept(String url, String appId) {
        List listL;
        try {
            String path = UrlUtils.getPath(url);
            if (path == null || (listL = StringsKt.S0(path, new String[]{"/"}, false, 0, 6, null)) == null) {
                listL = CollectionsKt.l();
            }
            String str = "";
            String str2 = !listL.isEmpty() ? (String) CollectionsKt.u0(listL) : "";
            InjectJSProxy injectJSProxy = (InjectJSProxy) TmcProxy.get(InjectJSProxy.class);
            if (appId != null) {
                str = appId;
            }
            Iterator<T> it = injectJSProxy.getTartgetInjectJSData(str).iterator();
            while (it.hasNext()) {
                if (Intrinsics.c(((JSConfig) it.next()).getJsName(), str2) && ShellResourceProcessor.INSTANCE.getRegex().matchEntire((CharSequence) CollectionsKt.u0(listL)) == null) {
                    TmcLogger.d(this.TAG, "InjectJavaScriptResourceProcessor shouldIntercept -> appId:" + appId + ", requestUrl:" + url);
                    return true;
                }
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.cloud.tmc.kernel.resource.IResourceProcessor
    public boolean shouldInterceptFuzzySearch(String fuzzySearch) {
        return false;
    }
}
