package com.transsion.lib_web.zip.loader;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f46206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f46207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f46208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f46209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f46210e;

    public d(Context context, List loaders) {
        Intrinsics.h(context, "context");
        Intrinsics.h(loaders, "loaders");
        this.f46206a = context;
        this.f46207b = loaders;
        this.f46208c = "";
        this.f46209d = "";
        this.f46210e = "";
    }

    public final WebResourceResponse a(WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null) {
            return null;
        }
        Iterator it = this.f46207b.iterator();
        while (it.hasNext()) {
            WebResourceResponse webResourceResponseA = ((c) it.next()).a(webResourceRequest);
            if (webResourceResponseA != null) {
                return webResourceResponseA;
            }
        }
        return null;
    }

    public final boolean b() {
        for (c cVar : this.f46207b) {
        }
        return false;
    }
}
