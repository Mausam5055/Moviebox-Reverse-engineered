package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SparseIntArray f7862a = new SparseIntArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap f7863b = new HashMap();

    public interface a {
    }

    public void a(int i11, a aVar) {
        HashSet hashSet = (HashSet) this.f7863b.get(Integer.valueOf(i11));
        if (hashSet == null) {
            hashSet = new HashSet();
            this.f7863b.put(Integer.valueOf(i11), hashSet);
        }
        hashSet.add(new WeakReference(aVar));
    }

    public void b(int i11, a aVar) {
        HashSet<WeakReference> hashSet = (HashSet) this.f7863b.get(Integer.valueOf(i11));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (WeakReference weakReference : hashSet) {
            a aVar2 = (a) weakReference.get();
            if (aVar2 == null || aVar2 == aVar) {
                arrayList.add(weakReference);
            }
        }
        hashSet.removeAll(arrayList);
    }
}
