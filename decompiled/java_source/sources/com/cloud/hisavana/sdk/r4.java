package com.cloud.hisavana.sdk;

import android.util.ArrayMap;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class r4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f22924a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayMap f22925b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static r4 f22926a = new r4();
    }

    private r4() {
        this.f22924a = 100;
        this.f22925b = new ArrayMap();
    }

    public static r4 b() {
        return b.f22926a;
    }

    public i1 a(String str) {
        WeakReference weakReference = (WeakReference) this.f22925b.get(str);
        if (weakReference == null) {
            return null;
        }
        return (i1) weakReference.get();
    }

    public void c(String str, i1 i1Var) {
        try {
            if (this.f22925b.size() >= 100) {
                this.f22925b.removeAt(0);
                e4.b().d("AdSplashManager", "spalsh attachTranSplash map clear");
            }
            this.f22925b.put(str, new WeakReference(i1Var));
            e4.b().d("AdSplashManager", "spalsh attachTranSplash map size = " + this.f22925b.size());
        } catch (Exception e11) {
            e4.b().w("AdSplashManager", e11.getMessage());
        }
    }

    public void d(String str) {
        this.f22925b.remove(str);
        e4.b().d("AdSplashManager", "spalsh unAttach map size = " + this.f22925b.size());
    }
}
