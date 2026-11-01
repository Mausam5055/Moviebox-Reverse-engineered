package com.iab.omid.library.mmadbridge.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f33691c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f33692a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f33693b = new ArrayList();

    private c() {
    }

    public static c e() {
        return f33691c;
    }

    public Collection a() {
        return Collections.unmodifiableCollection(this.f33693b);
    }

    public void b(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        this.f33692a.add(hVar);
    }

    public Collection c() {
        return Collections.unmodifiableCollection(this.f33692a);
    }

    public void d(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        boolean zG = g();
        this.f33692a.remove(hVar);
        this.f33693b.remove(hVar);
        if (!zG || g()) {
            return;
        }
        i.d().f();
    }

    public void f(com.iab.omid.library.mmadbridge.adsession.h hVar) {
        boolean zG = g();
        this.f33693b.add(hVar);
        if (zG) {
            return;
        }
        i.d().e();
    }

    public boolean g() {
        return this.f33693b.size() > 0;
    }
}
