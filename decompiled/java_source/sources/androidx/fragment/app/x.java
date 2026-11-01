package androidx.fragment.app;

import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final FragmentTransitionImpl f9504a = new y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final FragmentTransitionImpl f9505b = c();

    static void a(Fragment fragment, Fragment fragment2, boolean z10, androidx.collection.a aVar, boolean z11) {
        androidx.core.app.a0 enterTransitionCallback = z10 ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback();
        if (enterTransitionCallback != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = aVar == null ? 0 : aVar.size();
            for (int i11 = 0; i11 < size; i11++) {
                arrayList2.add((String) aVar.keyAt(i11));
                arrayList.add((View) aVar.valueAt(i11));
            }
            if (z11) {
                enterTransitionCallback.g(arrayList2, arrayList, null);
            } else {
                enterTransitionCallback.f(arrayList2, arrayList, null);
            }
        }
    }

    static String b(androidx.collection.a aVar, String str) {
        int size = aVar.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (str.equals(aVar.valueAt(i11))) {
                return (String) aVar.keyAt(i11);
            }
        }
        return null;
    }

    private static FragmentTransitionImpl c() {
        try {
            return (FragmentTransitionImpl) androidx.transition.e.class.getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }

    static void d(androidx.collection.a aVar, androidx.collection.a aVar2) {
        for (int size = aVar.size() - 1; size >= 0; size--) {
            if (!aVar2.containsKey((String) aVar.valueAt(size))) {
                aVar.removeAt(size);
            }
        }
    }

    static void e(ArrayList arrayList, int i11) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((View) arrayList.get(size)).setVisibility(i11);
        }
    }
}
