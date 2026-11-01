package w9;

import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.g3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f77599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f77600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f77601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Random f77602d;

    public b() {
        this(new Random());
    }

    b(Random random) {
        this.f77601c = new HashMap();
        this.f77602d = random;
        this.f77599a = new HashMap();
        this.f77600b = new HashMap();
    }

    private static void b(Object obj, long j11, Map map) {
        if (map.containsKey(obj)) {
            j11 = Math.max(j11, ((Long) p0.j((Long) map.get(obj))).longValue());
        }
        map.put(obj, Long.valueOf(j11));
    }

    private List c(List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h(jElapsedRealtime, this.f77599a);
        h(jElapsedRealtime, this.f77600b);
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            x9.b bVar = (x9.b) list.get(i11);
            if (!this.f77599a.containsKey(bVar.f78058b) && !this.f77600b.containsKey(Integer.valueOf(bVar.f78059c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(x9.b bVar, x9.b bVar2) {
        int iCompare = Integer.compare(bVar.f78059c, bVar2.f78059c);
        return iCompare != 0 ? iCompare : bVar.f78058b.compareTo(bVar2.f78058b);
    }

    public static int f(List list) {
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < list.size(); i11++) {
            hashSet.add(Integer.valueOf(((x9.b) list.get(i11)).f78059c));
        }
        return hashSet.size();
    }

    private static void h(long j11, Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (((Long) entry.getValue()).longValue() <= j11) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            map.remove(arrayList.get(i11));
        }
    }

    private x9.b k(List list) {
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            i11 += ((x9.b) list.get(i12)).f78060d;
        }
        int iNextInt = this.f77602d.nextInt(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            x9.b bVar = (x9.b) list.get(i14);
            i13 += bVar.f78060d;
            if (iNextInt < i13) {
                return bVar;
            }
        }
        return (x9.b) g3.g(list);
    }

    public void e(x9.b bVar, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j11;
        b(bVar.f78058b, jElapsedRealtime, this.f77599a);
        int i11 = bVar.f78059c;
        if (i11 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i11), jElapsedRealtime, this.f77600b);
        }
    }

    public int g(List list) {
        HashSet hashSet = new HashSet();
        List listC = c(list);
        for (int i11 = 0; i11 < listC.size(); i11++) {
            hashSet.add(Integer.valueOf(((x9.b) listC.get(i11)).f78059c));
        }
        return hashSet.size();
    }

    public void i() {
        this.f77599a.clear();
        this.f77600b.clear();
        this.f77601c.clear();
    }

    public x9.b j(List list) {
        List listC = c(list);
        if (listC.size() < 2) {
            return (x9.b) g3.f(listC, null);
        }
        Collections.sort(listC, new Comparator() { // from class: w9.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return b.d((x9.b) obj, (x9.b) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i11 = ((x9.b) listC.get(0)).f78059c;
        for (int i12 = 0; i12 < listC.size(); i12++) {
            x9.b bVar = (x9.b) listC.get(i12);
            if (i11 != bVar.f78059c) {
                if (arrayList.size() != 1) {
                    break;
                }
                return (x9.b) listC.get(0);
            }
            arrayList.add(new Pair(bVar.f78058b, Integer.valueOf(bVar.f78060d)));
        }
        x9.b bVar2 = (x9.b) this.f77601c.get(arrayList);
        if (bVar2 != null) {
            return bVar2;
        }
        x9.b bVarK = k(listC.subList(0, arrayList.size()));
        this.f77601c.put(arrayList, bVarK);
        return bVarK;
    }
}
