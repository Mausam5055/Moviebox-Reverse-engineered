package xc;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile d f78193b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f78194a = new HashSet();

    d() {
    }

    public static d a() {
        d dVar = f78193b;
        if (dVar == null) {
            synchronized (d.class) {
                try {
                    dVar = f78193b;
                    if (dVar == null) {
                        dVar = new d();
                        f78193b = dVar;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return dVar;
    }

    Set b() {
        Set setUnmodifiableSet;
        synchronized (this.f78194a) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.f78194a);
        }
        return setUnmodifiableSet;
    }
}
