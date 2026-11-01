package com.iab.omid.library.hisavana.adsession;

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
    private final f f33541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f33542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f33543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f33544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f33545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f33546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f33547g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AdSessionContextType f33548h;

    private d(f fVar, WebView webView, String str, List list, String str2, String str3, AdSessionContextType adSessionContextType) {
        ArrayList arrayList = new ArrayList();
        this.f33543c = arrayList;
        this.f33544d = new HashMap();
        this.f33541a = fVar;
        this.f33542b = webView;
        this.f33545e = str;
        this.f33548h = adSessionContextType;
        if (list != null) {
            arrayList.addAll(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                g gVar = (g) it.next();
                this.f33544d.put(UUID.randomUUID().toString(), gVar);
            }
        }
        this.f33547g = str2;
        this.f33546f = str3;
    }

    public static d a(f fVar, String str, List list, String str2, String str3) {
        ie.g.d(fVar, "Partner is null");
        ie.g.d(str, "OM SDK JS script content is null");
        ie.g.d(list, "VerificationScriptResources is null");
        if (str3 != null) {
            ie.g.e(str3, 256, "CustomReferenceData is greater than 256 characters");
        }
        return new d(fVar, null, str, list, str2, str3, AdSessionContextType.NATIVE);
    }

    public AdSessionContextType b() {
        return this.f33548h;
    }

    public String c() {
        return this.f33547g;
    }

    public String d() {
        return this.f33546f;
    }

    public Map e() {
        return Collections.unmodifiableMap(this.f33544d);
    }

    public String f() {
        return this.f33545e;
    }

    public f g() {
        return this.f33541a;
    }

    public List h() {
        return Collections.unmodifiableList(this.f33543c);
    }

    public WebView i() {
        return this.f33542b;
    }
}
