package com.iab.omid.library.mmadbridge.adsession;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f33655a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f33656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f33657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f33658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f33659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f33660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f33661g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AdSessionContextType f33662h;

    private d(f fVar, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f33657c = arrayList;
        this.f33658d = new HashMap();
        this.f33655a = fVar;
        this.f33656b = webView;
        this.f33659e = str;
        this.f33662h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                this.f33658d.put(UUID.randomUUID().toString(), gVar);
            }
        }
        this.f33661g = str2;
        this.f33660f = str3;
    }

    public static d a(f fVar, WebView webView, String str, String str2) {
        oe.g.d(fVar, "Partner is null");
        oe.g.d(webView, "WebView is null");
        if (str2 != null) {
            oe.g.e(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public static d b(f fVar, String str, List list, String str2, String str3) {
        oe.g.d(fVar, "Partner is null");
        oe.g.d(str, "OM SDK JS script content is null");
        oe.g.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            oe.g.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType c() {
        return this.f33662h;
    }

    public String d() {
        return this.f33661g;
    }

    public String e() {
        return this.f33660f;
    }

    public Map f() {
        return Collections.unmodifiableMap(this.f33658d);
    }

    public String g() {
        return this.f33659e;
    }

    public f h() {
        return this.f33655a;
    }

    public List i() {
        return Collections.unmodifiableList(this.f33657c);
    }

    public WebView j() {
        return this.f33656b;
    }
}
