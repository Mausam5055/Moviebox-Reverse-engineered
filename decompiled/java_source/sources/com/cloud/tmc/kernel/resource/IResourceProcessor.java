package com.cloud.tmc.kernel.resource;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.node.Node;
import com.cloud.tmc.kernel.proxy.Proxiable;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.integration.resource.BaseResourceProcessor")
public interface IResourceProcessor extends Proxiable {
    List<String> fuzzySearch(String str, String str2);

    WebResourceResponse get(WebResourceRequest webResourceRequest, String str, Node node);

    WebResourceResponse get(WebResourceRequest webResourceRequest, String str, String str2, Node node);

    File get(String str, String str2);

    File get(String str, String str2, String str3);

    boolean shouldIntercept(WebResourceRequest webResourceRequest, String str);

    boolean shouldIntercept(String str, String str2);

    boolean shouldInterceptFuzzySearch(String str);
}
