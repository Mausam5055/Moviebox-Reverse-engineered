package com.mbridge.msdk.video.dynview.energize;

import android.view.View;
import com.mbridge.msdk.video.dynview.c;
import com.mbridge.msdk.video.dynview.listener.e;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f39009b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.mbridge.msdk.video.dynview.inter.a f39010a;

    private a() {
    }

    public static a a() {
        a aVar;
        if (f39009b != null) {
            return f39009b;
        }
        synchronized (a.class) {
            try {
                if (f39009b == null) {
                    f39009b = new a();
                }
                aVar = f39009b;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    private void a(c cVar, View view, e eVar) {
        new com.mbridge.msdk.video.dynview.wrapper.a().a(cVar, view, eVar);
    }

    private void a(c cVar, View view, Map map, e eVar) {
        com.mbridge.msdk.video.dynview.wrapper.a aVar = new com.mbridge.msdk.video.dynview.wrapper.a();
        aVar.a(cVar, view, map, eVar);
        this.f39010a = aVar.f39160l;
    }

    private void b(c cVar, View view, Map map, e eVar) {
        new com.mbridge.msdk.video.dynview.wrapper.a().b(cVar, view, map, eVar);
    }

    private void c(c cVar, View view, Map map, e eVar) {
        new com.mbridge.msdk.video.dynview.wrapper.a().c(cVar, view, map, eVar);
    }

    public void a(View view, c cVar, Map map, e eVar) {
        int iG = cVar.g();
        if (iG == 1) {
            a(cVar, view, map, eVar);
            return;
        }
        if (iG == 2) {
            b(cVar, view, map, eVar);
            return;
        }
        if (iG == 4) {
            a(cVar, view, eVar);
        } else if (iG != 5) {
            eVar.a(view, new ArrayList());
        } else {
            c(cVar, view, map, eVar);
        }
    }

    public void b() {
        com.mbridge.msdk.video.dynview.inter.a aVar = this.f39010a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public void c() {
        com.mbridge.msdk.video.dynview.inter.a aVar = this.f39010a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void d() {
        com.mbridge.msdk.video.dynview.inter.a aVar = this.f39010a;
        if (aVar != null) {
            aVar.c();
        }
    }
}
