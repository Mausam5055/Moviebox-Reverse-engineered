package com.iab.omid.library.bytedance2;

import android.content.Context;
import com.iab.omid.library.bytedance2.internal.i;
import com.iab.omid.library.bytedance2.utils.e;
import com.iab.omid.library.bytedance2.utils.g;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33422a;

    private void b(Context context) {
        g.a(context, "Application Context cannot be null");
    }

    String a() {
        return "1.4.12-Bytedance2";
    }

    void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        i.c().a(context);
        com.iab.omid.library.bytedance2.internal.b.g().a(context);
        com.iab.omid.library.bytedance2.utils.a.a(context);
        com.iab.omid.library.bytedance2.utils.c.a(context);
        e.a(context);
        com.iab.omid.library.bytedance2.internal.g.b().a(context);
        com.iab.omid.library.bytedance2.internal.a.a().a(context);
    }

    void a(boolean z10) {
        this.f33422a = z10;
    }

    boolean b() {
        return this.f33422a;
    }

    void c() {
        g.a();
        com.iab.omid.library.bytedance2.internal.a.a().d();
    }
}
