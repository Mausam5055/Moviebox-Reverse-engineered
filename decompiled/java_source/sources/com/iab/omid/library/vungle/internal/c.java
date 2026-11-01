package com.iab.omid.library.vungle.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f33806c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f33807a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f33808b = new ArrayList();

    private c() {
    }

    public static c e() {
        return f33806c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.f33808b);
    }

    public void b(com.iab.omid.library.vungle.adsession.h hVar) {
        this.f33807a.add(hVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.f33807a);
    }

    public void d(com.iab.omid.library.vungle.adsession.h hVar) {
        boolean zG = g();
        this.f33807a.remove(hVar);
        this.f33808b.remove(hVar);
        if (!zG || g()) {
            return;
        }
        i.d().f();
    }

    public void f(com.iab.omid.library.vungle.adsession.h hVar) {
        boolean zG = g();
        this.f33808b.add(hVar);
        if (zG) {
            return;
        }
        i.d().e();
    }

    public boolean g() {
        return this.f33808b.size() > 0;
    }
}
