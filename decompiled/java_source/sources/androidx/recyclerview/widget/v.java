package androidx.recyclerview.widget;

import android.util.SparseArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
interface v {

    public static class a implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SparseArray f14435a = new SparseArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14436b = 0;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.v$a$a, reason: collision with other inner class name */
        class C0113a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private SparseIntArray f14437a = new SparseIntArray(1);

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private SparseIntArray f14438b = new SparseIntArray(1);

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final k f14439c;

            C0113a(k kVar) {
                this.f14439c = kVar;
            }

            @Override // androidx.recyclerview.widget.v.c
            public int a(int i11) {
                int iIndexOfKey = this.f14438b.indexOfKey(i11);
                if (iIndexOfKey >= 0) {
                    return this.f14438b.valueAt(iIndexOfKey);
                }
                throw new IllegalStateException("requested global type " + i11 + " does not belong to the adapter:" + this.f14439c.f14398c);
            }

            @Override // androidx.recyclerview.widget.v.c
            public int b(int i11) {
                int iIndexOfKey = this.f14437a.indexOfKey(i11);
                if (iIndexOfKey > -1) {
                    return this.f14437a.valueAt(iIndexOfKey);
                }
                int iC = a.this.c(this.f14439c);
                this.f14437a.put(i11, iC);
                this.f14438b.put(iC, i11);
                return iC;
            }
        }

        @Override // androidx.recyclerview.widget.v
        public k a(int i11) {
            k kVar = (k) this.f14435a.get(i11);
            if (kVar != null) {
                return kVar;
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i11);
        }

        @Override // androidx.recyclerview.widget.v
        public c b(k kVar) {
            return new C0113a(kVar);
        }

        int c(k kVar) {
            int i11 = this.f14436b;
            this.f14436b = i11 + 1;
            this.f14435a.put(i11, kVar);
            return i11;
        }
    }

    public static class b implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SparseArray f14441a = new SparseArray();

        class a implements c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final k f14442a;

            a(k kVar) {
                this.f14442a = kVar;
            }

            @Override // androidx.recyclerview.widget.v.c
            public int a(int i11) {
                return i11;
            }

            @Override // androidx.recyclerview.widget.v.c
            public int b(int i11) {
                List arrayList = (List) b.this.f14441a.get(i11);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    b.this.f14441a.put(i11, arrayList);
                }
                if (!arrayList.contains(this.f14442a)) {
                    arrayList.add(this.f14442a);
                }
                return i11;
            }
        }

        @Override // androidx.recyclerview.widget.v
        public k a(int i11) {
            List list = (List) this.f14441a.get(i11);
            if (list != null && !list.isEmpty()) {
                return (k) list.get(0);
            }
            throw new IllegalArgumentException("Cannot find the wrapper for global view type " + i11);
        }

        @Override // androidx.recyclerview.widget.v
        public c b(k kVar) {
            return new a(kVar);
        }
    }

    public interface c {
        int a(int i11);

        int b(int i11);
    }

    k a(int i11);

    c b(k kVar);
}
