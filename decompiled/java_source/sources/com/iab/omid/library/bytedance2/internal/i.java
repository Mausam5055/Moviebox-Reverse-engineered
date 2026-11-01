package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.bytedance2.walking.TreeWalker;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class i implements com.iab.omid.library.bytedance2.devicevolume.c, d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static i f33460f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f33461a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.devicevolume.e f33462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.devicevolume.b f33463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.iab.omid.library.bytedance2.devicevolume.d f33464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f33465e;

    public i(com.iab.omid.library.bytedance2.devicevolume.e eVar, com.iab.omid.library.bytedance2.devicevolume.b bVar) {
        this.f33462b = eVar;
        this.f33463c = bVar;
    }

    private c a() {
        if (this.f33465e == null) {
            this.f33465e = c.c();
        }
        return this.f33465e;
    }

    public static i c() {
        if (f33460f == null) {
            f33460f = new i(new com.iab.omid.library.bytedance2.devicevolume.e(), new com.iab.omid.library.bytedance2.devicevolume.b());
        }
        return f33460f;
    }

    @Override // com.iab.omid.library.bytedance2.devicevolume.c
    public void a(float f11) {
        this.f33461a = f11;
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = a().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(f11);
        }
    }

    public void a(Context context) {
        this.f33464d = this.f33462b.a(new Handler(), context, this.f33463c.a(), this);
    }

    @Override // com.iab.omid.library.bytedance2.internal.d.a
    public void a(boolean z10) {
        if (z10) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }

    public float b() {
        return this.f33461a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f33464d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f33464d.d();
    }
}
