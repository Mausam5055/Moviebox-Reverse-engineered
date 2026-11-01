package z1;

import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.util.a1;
import com.google.common.collect.g3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f79156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f79157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f79158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Random f79159d;

    public b() {
        this(new Random());
    }

    b(Random random) {
        this.f79158c = new HashMap();
        this.f79159d = random;
        this.f79156a = new HashMap();
        this.f79157b = new HashMap();
    }

    private static void b(Object obj, long j11, Map map) {
        if (map.containsKey(obj)) {
            j11 = Math.max(j11, ((Long) a1.i((Long) map.get(obj))).longValue());
        }
        map.put(obj, Long.valueOf(j11));
    }

    private List c(List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h(jElapsedRealtime, this.f79156a);
        h(jElapsedRealtime, this.f79157b);
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            a2.b bVar = (a2.b) list.get(i11);
            if (!this.f79156a.containsKey(bVar.f42b) && !this.f79157b.containsKey(Integer.valueOf(bVar.f43c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(a2.b bVar, a2.b bVar2) {
        int iCompare = Integer.compare(bVar.f43c, bVar2.f43c);
        return iCompare != 0 ? iCompare : bVar.f42b.compareTo(bVar2.f42b);
    }

    public static int f(List list) {
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < list.size(); i11++) {
            hashSet.add(Integer.valueOf(((a2.b) list.get(i11)).f43c));
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

    private a2.b k(List list) {
        int i11 = 0;
        for (int i12 = 0; i12 < list.size(); i12++) {
            i11 += ((a2.b) list.get(i12)).f44d;
        }
        int iNextInt = this.f79159d.nextInt(i11);
        int i13 = 0;
        for (int i14 = 0; i14 < list.size(); i14++) {
            a2.b bVar = (a2.b) list.get(i14);
            i13 += bVar.f44d;
            if (iNextInt < i13) {
                return bVar;
            }
        }
        return (a2.b) g3.g(list);
    }

    public void e(a2.b bVar, long j11) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j11;
        b(bVar.f42b, jElapsedRealtime, this.f79156a);
        int i11 = bVar.f43c;
        if (i11 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i11), jElapsedRealtime, this.f79157b);
        }
    }

    public int g(List list) {
        HashSet hashSet = new HashSet();
        List listC = c(list);
        for (int i11 = 0; i11 < listC.size(); i11++) {
            hashSet.add(Integer.valueOf(((a2.b) listC.get(i11)).f43c));
        }
        return hashSet.size();
    }

    public void i() {
        this.f79156a.clear();
        this.f79157b.clear();
        this.f79158c.clear();
    }

    public a2.b j(List list) {
        List listC = c(list);
        if (listC.size() < 2) {
            return (a2.b) g3.f(listC, null);
        }
        Collections.sort(listC, new Comparator() { // from class: z1.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return b.d((a2.b) obj, (a2.b) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i11 = ((a2.b) listC.get(0)).f43c;
        for (int i12 = 0; i12 < listC.size(); i12++) {
            a2.b bVar = (a2.b) listC.get(i12);
            if (i11 != bVar.f43c) {
                if (arrayList.size() != 1) {
                    break;
                }
                return (a2.b) listC.get(0);
            }
            arrayList.add(new Pair(bVar.f42b, Integer.valueOf(bVar.f44d)));
        }
        a2.b bVar2 = (a2.b) this.f79158c.get(arrayList);
        if (bVar2 != null) {
            return bVar2;
        }
        a2.b bVarK = k(listC.subList(0, arrayList.size()));
        this.f79158c.put(arrayList, bVarK);
        return bVarK;
    }
}
