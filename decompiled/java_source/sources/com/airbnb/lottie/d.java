package com.airbnb.lottie;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f17710a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f17711b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f17712c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f17713d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AsyncUpdates f17714e = AsyncUpdates.AUTOMATIC;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static t4.e f17715f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static t4.d f17716g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static volatile t4.g f17717h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static volatile t4.f f17718i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ThreadLocal f17719j;

    public static void b(String str) {
        if (f17711b) {
            f().a(str);
        }
    }

    public static float c(String str) {
        if (f17711b) {
            return f().b(str);
        }
        return 0.0f;
    }

    public static AsyncUpdates d() {
        return f17714e;
    }

    public static boolean e() {
        return f17713d;
    }

    private static v4.h f() {
        v4.h hVar = (v4.h) f17719j.get();
        if (hVar != null) {
            return hVar;
        }
        v4.h hVar2 = new v4.h();
        f17719j.set(hVar2);
        return hVar2;
    }

    public static boolean g() {
        return f17711b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ File h(Context context) {
        return new File(context.getCacheDir(), "lottie_network_cache");
    }

    public static t4.f i(Context context) {
        if (!f17712c) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        t4.f fVar = f17718i;
        if (fVar == null) {
            synchronized (t4.f.class) {
                try {
                    fVar = f17718i;
                    if (fVar == null) {
                        t4.d dVar = f17716g;
                        if (dVar == null) {
                            dVar = new t4.d() { // from class: com.airbnb.lottie.c
                                @Override // t4.d
                                public final File a() {
                                    return d.h(applicationContext);
                                }
                            };
                        }
                        fVar = new t4.f(dVar);
                        f17718i = fVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return fVar;
    }

    public static t4.g j(Context context) {
        t4.g gVar = f17717h;
        if (gVar == null) {
            synchronized (t4.g.class) {
                try {
                    gVar = f17717h;
                    if (gVar == null) {
                        t4.f fVarI = i(context);
                        t4.e bVar = f17715f;
                        if (bVar == null) {
                            bVar = new t4.b();
                        }
                        gVar = new t4.g(fVarI, bVar);
                        f17717h = gVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return gVar;
    }
}
