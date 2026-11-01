package ka;

import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class k implements ba.i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f66735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f66736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long[] f66737c;

    public k(List list) {
        this.f66735a = Collections.unmodifiableList(new ArrayList(list));
        this.f66736b = new long[list.size() * 2];
        for (int i11 = 0; i11 < list.size(); i11++) {
            e eVar = (e) list.get(i11);
            int i12 = i11 * 2;
            long[] jArr = this.f66736b;
            jArr[i12] = eVar.f66706b;
            jArr[i12 + 1] = eVar.f66707c;
        }
        long[] jArr2 = this.f66736b;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f66737c = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(e eVar, e eVar2) {
        return Long.compare(eVar.f66706b, eVar2.f66706b);
    }

    @Override // ba.i
    public List getCues(long j11) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < this.f66735a.size(); i11++) {
            long[] jArr = this.f66736b;
            int i12 = i11 * 2;
            if (jArr[i12] <= j11 && j11 < jArr[i12 + 1]) {
                e eVar = (e) this.f66735a.get(i11);
                ba.b bVar = eVar.f66705a;
                if (bVar.f16255e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(bVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: ka.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return k.b((e) obj, (e) obj2);
            }
        });
        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
            arrayList.add(((e) arrayList2.get(i13)).f66705a.b().h((-1) - i13, 1).a());
        }
        return arrayList;
    }

    @Override // ba.i
    public long getEventTime(int i11) {
        com.google.android.exoplayer2.util.a.a(i11 >= 0);
        com.google.android.exoplayer2.util.a.a(i11 < this.f66737c.length);
        return this.f66737c[i11];
    }

    @Override // ba.i
    public int getEventTimeCount() {
        return this.f66737c.length;
    }

    @Override // ba.i
    public int getNextEventTimeIndex(long j11) {
        int iE = p0.e(this.f66737c, j11, false, false);
        if (iE < this.f66737c.length) {
            return iE;
        }
        return -1;
    }
}
