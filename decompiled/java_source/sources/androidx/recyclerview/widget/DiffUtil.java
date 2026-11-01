package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DiffUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Comparator f14126a = new Comparator<c>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(c cVar, c cVar2) {
            return cVar.f14129a - cVar2.f14129a;
        }
    };

    public static abstract class a {
        public abstract boolean a(int i11, int i12);

        public abstract boolean b(int i11, int i12);

        public Object c(int i11, int i12) {
            return null;
        }

        public abstract int d();

        public abstract int e();
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int[] f14127a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f14128b;

        b(int i11) {
            int[] iArr = new int[i11];
            this.f14127a = iArr;
            this.f14128b = iArr.length / 2;
        }

        int[] a() {
            return this.f14127a;
        }

        int b(int i11) {
            return this.f14127a[i11 + this.f14128b];
        }

        void c(int i11, int i12) {
            this.f14127a[i11 + this.f14128b] = i12;
        }
    }

    static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14130b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f14131c;

        c(int i11, int i12, int i13) {
            this.f14129a = i11;
            this.f14130b = i12;
            this.f14131c = i13;
        }

        int a() {
            return this.f14129a + this.f14131c;
        }

        int b() {
            return this.f14130b + this.f14131c;
        }
    }

    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List f14132a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f14133b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f14134c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final a f14135d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f14136e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f14137f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final boolean f14138g;

        d(a aVar, List list, int[] iArr, int[] iArr2, boolean z10) {
            this.f14132a = list;
            this.f14133b = iArr;
            this.f14134c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f14135d = aVar;
            this.f14136e = aVar.e();
            this.f14137f = aVar.d();
            this.f14138g = z10;
            a();
            e();
        }

        private void a() {
            c cVar = this.f14132a.isEmpty() ? null : (c) this.f14132a.get(0);
            if (cVar == null || cVar.f14129a != 0 || cVar.f14130b != 0) {
                this.f14132a.add(0, new c(0, 0, 0));
            }
            this.f14132a.add(new c(this.f14136e, this.f14137f, 0));
        }

        private void d(int i11) {
            int size = this.f14132a.size();
            int iB = 0;
            for (int i12 = 0; i12 < size; i12++) {
                c cVar = (c) this.f14132a.get(i12);
                while (iB < cVar.f14130b) {
                    if (this.f14134c[iB] == 0 && this.f14135d.b(i11, iB)) {
                        int i13 = this.f14135d.a(i11, iB) ? 8 : 4;
                        this.f14133b[i11] = (iB << 4) | i13;
                        this.f14134c[iB] = (i11 << 4) | i13;
                        return;
                    }
                    iB++;
                }
                iB = cVar.b();
            }
        }

        private void e() {
            for (c cVar : this.f14132a) {
                for (int i11 = 0; i11 < cVar.f14131c; i11++) {
                    int i12 = cVar.f14129a + i11;
                    int i13 = cVar.f14130b + i11;
                    int i14 = this.f14135d.a(i12, i13) ? 1 : 2;
                    this.f14133b[i12] = (i13 << 4) | i14;
                    this.f14134c[i13] = (i12 << 4) | i14;
                }
            }
            if (this.f14138g) {
                f();
            }
        }

        private void f() {
            int iA = 0;
            for (c cVar : this.f14132a) {
                while (iA < cVar.f14129a) {
                    if (this.f14133b[iA] == 0) {
                        d(iA);
                    }
                    iA++;
                }
                iA = cVar.a();
            }
        }

        private static f g(Collection collection, int i11, boolean z10) {
            f fVar;
            Iterator it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    fVar = null;
                    break;
                }
                fVar = (f) it.next();
                if (fVar.f14139a == i11 && fVar.f14141c == z10) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                f fVar2 = (f) it.next();
                if (z10) {
                    fVar2.f14140b--;
                } else {
                    fVar2.f14140b++;
                }
            }
            return fVar;
        }

        public void b(j jVar) {
            int i11;
            androidx.recyclerview.widget.d dVar = jVar instanceof androidx.recyclerview.widget.d ? (androidx.recyclerview.widget.d) jVar : new androidx.recyclerview.widget.d(jVar);
            int i12 = this.f14136e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i13 = this.f14136e;
            int i14 = this.f14137f;
            for (int size = this.f14132a.size() - 1; size >= 0; size--) {
                c cVar = (c) this.f14132a.get(size);
                int iA = cVar.a();
                int iB = cVar.b();
                while (true) {
                    if (i13 <= iA) {
                        break;
                    }
                    i13--;
                    int i15 = this.f14133b[i13];
                    if ((i15 & 12) != 0) {
                        int i16 = i15 >> 4;
                        f fVarG = g(arrayDeque, i16, false);
                        if (fVarG != null) {
                            int i17 = (i12 - fVarG.f14140b) - 1;
                            dVar.onMoved(i13, i17);
                            if ((i15 & 4) != 0) {
                                dVar.onChanged(i17, 1, this.f14135d.c(i13, i16));
                            }
                        } else {
                            arrayDeque.add(new f(i13, (i12 - i13) - 1, true));
                        }
                    } else {
                        dVar.onRemoved(i13, 1);
                        i12--;
                    }
                }
                while (i14 > iB) {
                    i14--;
                    int i18 = this.f14134c[i14];
                    if ((i18 & 12) != 0) {
                        int i19 = i18 >> 4;
                        f fVarG2 = g(arrayDeque, i19, true);
                        if (fVarG2 == null) {
                            arrayDeque.add(new f(i14, i12 - i13, false));
                        } else {
                            dVar.onMoved((i12 - fVarG2.f14140b) - 1, i13);
                            if ((i18 & 4) != 0) {
                                dVar.onChanged(i13, 1, this.f14135d.c(i19, i14));
                            }
                        }
                    } else {
                        dVar.onInserted(i13, 1);
                        i12++;
                    }
                }
                int i20 = cVar.f14129a;
                int i21 = cVar.f14130b;
                for (i11 = 0; i11 < cVar.f14131c; i11++) {
                    if ((this.f14133b[i20] & 15) == 2) {
                        dVar.onChanged(i20, 1, this.f14135d.c(i20, i21));
                    }
                    i20++;
                    i21++;
                }
                i13 = cVar.f14129a;
                i14 = cVar.f14130b;
            }
            dVar.a();
        }

        public void c(RecyclerView.Adapter adapter) {
            b(new androidx.recyclerview.widget.b(adapter));
        }
    }

    public static abstract class e {
        public abstract boolean areContentsTheSame(Object obj, Object obj2);

        public abstract boolean areItemsTheSame(Object obj, Object obj2);

        @Nullable
        public Object getChangePayload(@NonNull Object obj, @NonNull Object obj2) {
            return null;
        }
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14139a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14140b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f14141c;

        f(int i11, int i12, boolean z10) {
            this.f14139a = i11;
            this.f14140b = i12;
            this.f14141c = z10;
        }
    }

    static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f14142a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f14143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f14144c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f14145d;

        public g() {
        }

        public g(int i11, int i12, int i13, int i14) {
            this.f14142a = i11;
            this.f14143b = i12;
            this.f14144c = i13;
            this.f14145d = i14;
        }

        int a() {
            return this.f14145d - this.f14144c;
        }

        int b() {
            return this.f14143b - this.f14142a;
        }
    }

    static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f14146a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f14148c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f14149d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f14150e;

        h() {
        }

        int a() {
            return Math.min(this.f14148c - this.f14146a, this.f14149d - this.f14147b);
        }

        boolean b() {
            return this.f14149d - this.f14147b != this.f14148c - this.f14146a;
        }

        boolean c() {
            return this.f14149d - this.f14147b > this.f14148c - this.f14146a;
        }

        c d() {
            if (!b()) {
                int i11 = this.f14146a;
                return new c(i11, this.f14147b, this.f14148c - i11);
            }
            if (this.f14150e) {
                return new c(this.f14146a, this.f14147b, a());
            }
            return c() ? new c(this.f14146a, this.f14147b + 1, a()) : new c(this.f14146a + 1, this.f14147b, a());
        }
    }

    private static h a(g gVar, a aVar, b bVar, b bVar2, int i11) {
        int iB;
        int i12;
        int i13;
        boolean z10 = (gVar.b() - gVar.a()) % 2 == 0;
        int iB2 = gVar.b() - gVar.a();
        int i14 = -i11;
        for (int i15 = i14; i15 <= i11; i15 += 2) {
            if (i15 == i14 || (i15 != i11 && bVar2.b(i15 + 1) < bVar2.b(i15 - 1))) {
                iB = bVar2.b(i15 + 1);
                i12 = iB;
            } else {
                iB = bVar2.b(i15 - 1);
                i12 = iB - 1;
            }
            int i16 = gVar.f14145d - ((gVar.f14143b - i12) - i15);
            int i17 = (i11 == 0 || i12 != iB) ? i16 : i16 + 1;
            while (i12 > gVar.f14142a && i16 > gVar.f14144c && aVar.b(i12 - 1, i16 - 1)) {
                i12--;
                i16--;
            }
            bVar2.c(i15, i12);
            if (z10 && (i13 = iB2 - i15) >= i14 && i13 <= i11 && bVar.b(i13) >= i12) {
                h hVar = new h();
                hVar.f14146a = i12;
                hVar.f14147b = i16;
                hVar.f14148c = iB;
                hVar.f14149d = i17;
                hVar.f14150e = true;
                return hVar;
            }
        }
        return null;
    }

    public static d b(a aVar) {
        return c(aVar, true);
    }

    public static d c(a aVar, boolean z10) {
        int iE = aVar.e();
        int iD = aVar.d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new g(0, iE, 0, iD));
        int i11 = ((((iE + iD) + 1) / 2) * 2) + 1;
        b bVar = new b(i11);
        b bVar2 = new b(i11);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            g gVar = (g) arrayList2.remove(arrayList2.size() - 1);
            h hVarE = e(gVar, aVar, bVar, bVar2);
            if (hVarE != null) {
                if (hVarE.a() > 0) {
                    arrayList.add(hVarE.d());
                }
                g gVar2 = arrayList3.isEmpty() ? new g() : (g) arrayList3.remove(arrayList3.size() - 1);
                gVar2.f14142a = gVar.f14142a;
                gVar2.f14144c = gVar.f14144c;
                gVar2.f14143b = hVarE.f14146a;
                gVar2.f14145d = hVarE.f14147b;
                arrayList2.add(gVar2);
                gVar.f14143b = gVar.f14143b;
                gVar.f14145d = gVar.f14145d;
                gVar.f14142a = hVarE.f14148c;
                gVar.f14144c = hVarE.f14149d;
                arrayList2.add(gVar);
            } else {
                arrayList3.add(gVar);
            }
        }
        Collections.sort(arrayList, f14126a);
        return new d(aVar, arrayList, bVar.a(), bVar2.a(), z10);
    }

    private static h d(g gVar, a aVar, b bVar, b bVar2, int i11) {
        int iB;
        int i12;
        int i13;
        boolean z10 = Math.abs(gVar.b() - gVar.a()) % 2 == 1;
        int iB2 = gVar.b() - gVar.a();
        int i14 = -i11;
        for (int i15 = i14; i15 <= i11; i15 += 2) {
            if (i15 == i14 || (i15 != i11 && bVar.b(i15 + 1) > bVar.b(i15 - 1))) {
                iB = bVar.b(i15 + 1);
                i12 = iB;
            } else {
                iB = bVar.b(i15 - 1);
                i12 = iB + 1;
            }
            int i16 = (gVar.f14144c + (i12 - gVar.f14142a)) - i15;
            int i17 = (i11 == 0 || i12 != iB) ? i16 : i16 - 1;
            while (i12 < gVar.f14143b && i16 < gVar.f14145d && aVar.b(i12, i16)) {
                i12++;
                i16++;
            }
            bVar.c(i15, i12);
            if (z10 && (i13 = iB2 - i15) >= i14 + 1 && i13 <= i11 - 1 && bVar2.b(i13) <= i12) {
                h hVar = new h();
                hVar.f14146a = iB;
                hVar.f14147b = i17;
                hVar.f14148c = i12;
                hVar.f14149d = i16;
                hVar.f14150e = false;
                return hVar;
            }
        }
        return null;
    }

    private static h e(g gVar, a aVar, b bVar, b bVar2) {
        if (gVar.b() >= 1 && gVar.a() >= 1) {
            int iB = ((gVar.b() + gVar.a()) + 1) / 2;
            bVar.c(1, gVar.f14142a);
            bVar2.c(1, gVar.f14143b);
            for (int i11 = 0; i11 < iB; i11++) {
                h hVarD = d(gVar, aVar, bVar, bVar2, i11);
                if (hVarD != null) {
                    return hVarD;
                }
                h hVarA = a(gVar, aVar, bVar, bVar2, i11);
                if (hVarA != null) {
                    return hVarA;
                }
            }
        }
        return null;
    }
}
