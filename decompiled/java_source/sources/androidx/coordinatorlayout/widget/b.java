package androidx.coordinatorlayout.widget;

import androidx.collection.x0;
import androidx.core.util.f;
import androidx.core.util.g;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f7926a = new g(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x0 f7927b = new x0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList f7928c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet f7929d = new HashSet();

    private void e(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) this.f7927b.get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i11 = 0; i11 < size; i11++) {
                e(arrayList2.get(i11), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    private ArrayList f() {
        ArrayList arrayList = (ArrayList) this.f7926a.acquire();
        return arrayList == null ? new ArrayList() : arrayList;
    }

    private void k(ArrayList arrayList) {
        arrayList.clear();
        this.f7926a.release(arrayList);
    }

    public void a(Object obj, Object obj2) {
        if (!this.f7927b.containsKey(obj) || !this.f7927b.containsKey(obj2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayListF = (ArrayList) this.f7927b.get(obj);
        if (arrayListF == null) {
            arrayListF = f();
            this.f7927b.put(obj, arrayListF);
        }
        arrayListF.add(obj2);
    }

    public void b(Object obj) {
        if (this.f7927b.containsKey(obj)) {
            return;
        }
        this.f7927b.put(obj, null);
    }

    public void c() {
        int size = this.f7927b.size();
        for (int i11 = 0; i11 < size; i11++) {
            ArrayList arrayList = (ArrayList) this.f7927b.valueAt(i11);
            if (arrayList != null) {
                k(arrayList);
            }
        }
        this.f7927b.clear();
    }

    public boolean d(Object obj) {
        return this.f7927b.containsKey(obj);
    }

    public List g(Object obj) {
        return (List) this.f7927b.get(obj);
    }

    public List h(Object obj) {
        int size = this.f7927b.size();
        ArrayList arrayList = null;
        for (int i11 = 0; i11 < size; i11++) {
            ArrayList arrayList2 = (ArrayList) this.f7927b.valueAt(i11);
            if (arrayList2 != null && arrayList2.contains(obj)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f7927b.keyAt(i11));
            }
        }
        return arrayList;
    }

    public ArrayList i() {
        this.f7928c.clear();
        this.f7929d.clear();
        int size = this.f7927b.size();
        for (int i11 = 0; i11 < size; i11++) {
            e(this.f7927b.keyAt(i11), this.f7928c, this.f7929d);
        }
        return this.f7928c;
    }

    public boolean j(Object obj) {
        int size = this.f7927b.size();
        for (int i11 = 0; i11 < size; i11++) {
            ArrayList arrayList = (ArrayList) this.f7927b.valueAt(i11);
            if (arrayList != null && arrayList.contains(obj)) {
                return true;
            }
        }
        return false;
    }
}
