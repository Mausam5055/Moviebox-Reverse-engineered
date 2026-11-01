package com.iab.omid.library.bytedance2.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static c f33442c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f33443a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f33444b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f33442c;
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f33444b);
    }

    public void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        this.f33443a.add(aVar);
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f33443a);
    }

    public void b(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean zD = d();
        this.f33443a.remove(aVar);
        this.f33444b.remove(aVar);
        if (!zD || d()) {
            return;
        }
        i.c().e();
    }

    public void c(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean zD = d();
        this.f33444b.add(aVar);
        if (zD) {
            return;
        }
        i.c().d();
    }

    public boolean d() {
        return this.f33444b.size() > 0;
    }
}
