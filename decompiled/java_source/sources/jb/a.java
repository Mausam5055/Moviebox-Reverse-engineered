package jb;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.c;
import com.google.firebase.l;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile FirebaseAnalytics f65981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f65982b = new Object();

    public static final FirebaseAnalytics a(c cVar) {
        Intrinsics.h(cVar, "<this>");
        if (f65981a == null) {
            synchronized (f65982b) {
                if (f65981a == null) {
                    f65981a = FirebaseAnalytics.getInstance(l.a(c.f31069a).k());
                }
            }
        }
        FirebaseAnalytics firebaseAnalytics = f65981a;
        Intrinsics.e(firebaseAnalytics);
        return firebaseAnalytics;
    }
}
