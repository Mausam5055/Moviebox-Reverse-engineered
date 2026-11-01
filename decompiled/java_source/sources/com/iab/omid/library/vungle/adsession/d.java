package com.iab.omid.library.vungle.adsession;

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
    private final f f33775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f33776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f33777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f33778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f33779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f33780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f33781g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AdSessionContextType f33782h;

    private d(f fVar, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f33777c = arrayList;
        this.f33778d = new HashMap();
        this.f33775a = fVar;
        this.f33776b = webView;
        this.f33779e = str;
        this.f33782h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                this.f33778d.put(UUID.randomUUID().toString(), gVar);
            }
        }
        this.f33781g = str2;
        this.f33780f = str3;
    }

    public static d a(f fVar, WebView webView, String str, String str2) {
        ue.g.d(fVar, "Partner is null");
        ue.g.d(webView, "WebView is null");
        if (str2 != null) {
            ue.g.e(str2, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, webView, null, null, str, str2, AdSessionContextType.HTML);
    }

    public static d b(f fVar, String str, List list, String str2, String str3) {
        ue.g.d(fVar, "Partner is null");
        ue.g.d(str, "OM SDK JS script content is null");
        ue.g.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            ue.g.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType c() {
        return this.f33782h;
    }

    public String d() {
        return this.f33781g;
    }

    public String e() {
        return this.f33780f;
    }

    public Map f() {
        return Collections.unmodifiableMap(this.f33778d);
    }

    public String g() {
        return this.f33779e;
    }

    public f h() {
        return this.f33775a;
    }

    public List i() {
        return Collections.unmodifiableList(this.f33777c);
    }

    public WebView j() {
        return this.f33776b;
    }
}
