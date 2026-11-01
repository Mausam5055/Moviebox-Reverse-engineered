package com.mbridge.msdk.foundation.same.directory;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<a> f35375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f35376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f35377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c f35378d;

    public List<a> a() {
        return this.f35375a;
    }

    public void a(a aVar) {
        if (this.f35375a == null) {
            this.f35375a = new ArrayList();
        }
        aVar.b(this);
        this.f35375a.add(aVar);
    }

    public void a(c cVar) {
        this.f35378d = cVar;
    }

    public void a(c cVar, String str) {
        a aVar = new a();
        aVar.a(cVar);
        aVar.a(str);
        a(aVar);
    }

    public void a(String str) {
        this.f35376b = str;
    }

    public void a(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<a> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public String b() {
        return this.f35376b;
    }

    public void b(a aVar) {
        this.f35377c = aVar;
    }

    public a c() {
        return this.f35377c;
    }

    public c d() {
        return this.f35378d;
    }
}
