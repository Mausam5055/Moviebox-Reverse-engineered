package com.airbnb.lottie;

import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class PerformanceTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f17698a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f17699b = new androidx.collection.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f17700c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Comparator f17701d = new Comparator<androidx.core.util.e>() { // from class: com.airbnb.lottie.PerformanceTracker.1
        @Override // java.util.Comparator
        public int compare(androidx.core.util.e eVar, androidx.core.util.e eVar2) {
            float fFloatValue = ((Float) eVar.f8268b).floatValue();
            float fFloatValue2 = ((Float) eVar2.f8268b).floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    };

    public void a(String str, float f11) {
        if (this.f17698a) {
            v4.j jVar = (v4.j) this.f17700c.get(str);
            if (jVar == null) {
                jVar = new v4.j();
                this.f17700c.put(str, jVar);
            }
            jVar.a(f11);
            if (str.equals("__container")) {
                Iterator it = this.f17699b.iterator();
                if (it.hasNext()) {
                    android.support.v4.media.session.c.a(it.next());
                    throw null;
                }
            }
        }
    }

    void b(boolean z10) {
        this.f17698a = z10;
    }
}
