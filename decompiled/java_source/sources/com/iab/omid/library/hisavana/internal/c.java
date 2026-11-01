package com.iab.omid.library.hisavana.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f33572c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f33573a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f33574b = new ArrayList();

    private c() {
    }

    public static c e() {
        return f33572c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.f33574b);
    }

    public void b(com.iab.omid.library.hisavana.adsession.h hVar) {
        this.f33573a.add(hVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.f33573a);
    }

    public void d(com.iab.omid.library.hisavana.adsession.h hVar) {
        boolean zG = g();
        this.f33573a.remove(hVar);
        this.f33574b.remove(hVar);
        if (!zG || g()) {
            return;
        }
        i.d().f();
    }

    public void f(com.iab.omid.library.hisavana.adsession.h hVar) {
        boolean zG = g();
        this.f33574b.add(hVar);
        if (zG) {
            return;
        }
        i.d().e();
    }

    public boolean g() {
        return this.f33574b.size() > 0;
    }
}
