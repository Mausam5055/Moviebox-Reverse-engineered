package com.android.volley.toolbox;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class o {

    class a implements c.InterfaceC0177c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f19310a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f19311b;

        a(Context context) {
            this.f19311b = context;
        }

        @Override // com.android.volley.toolbox.c.InterfaceC0177c
        public File get() {
            if (this.f19310a == null) {
                this.f19310a = new File(this.f19311b.getCacheDir(), "volley");
            }
            return this.f19310a;
        }
    }

    public static com.android.volley.h a(Context context) {
        return c(context, null);
    }

    private static com.android.volley.h b(Context context, com.android.volley.f fVar) {
        com.android.volley.h hVar = new com.android.volley.h(new c(new a(context.getApplicationContext())), fVar);
        hVar.g();
        return hVar;
    }

    public static com.android.volley.h c(Context context, com.android.volley.toolbox.a aVar) {
        return b(context, aVar == null ? new b(new g()) : new b(aVar));
    }
}
