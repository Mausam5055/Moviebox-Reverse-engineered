package com.mbridge.msdk.foundation.same.image;

import android.content.Context;
import android.graphics.Bitmap;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f35399a;

    protected b(Context context) {
    }

    public static b a(Context context) {
        if (f35399a == null) {
            f35399a = new b(context);
        }
        return f35399a;
    }

    public void a() {
    }

    public void a(String str) {
    }

    public void a(String str, c cVar) {
        d.a().b(str, null, cVar);
    }

    public Bitmap b(String str) {
        if (t0.k(str)) {
            return null;
        }
        return d.a().c(str);
    }

    public void b() {
    }

    public boolean c(String str) {
        if (t0.k(str)) {
            return false;
        }
        return d.a().d(str);
    }
}
