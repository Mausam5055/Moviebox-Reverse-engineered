package r3;

import androidx.media3.common.util.a1;
import i3.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class j implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f74087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f74088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long[] f74089c;

    public j(List list) {
        this.f74087a = Collections.unmodifiableList(new ArrayList(list));
        this.f74088b = new long[list.size() * 2];
        for (int i11 = 0; i11 < list.size(); i11++) {
            d dVar = (d) list.get(i11);
            int i12 = i11 * 2;
            long[] jArr = this.f74088b;
            jArr[i12] = dVar.f74058b;
            jArr[i12 + 1] = dVar.f74059c;
        }
        long[] jArr2 = this.f74088b;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f74089c = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(d dVar, d dVar2) {
        return Long.compare(dVar.f74058b, dVar2.f74058b);
    }

    @Override // i3.k
    public List getCues(long j11) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < this.f74087a.size(); i11++) {
            long[] jArr = this.f74088b;
            int i12 = i11 * 2;
            if (jArr[i12] <= j11 && j11 < jArr[i12 + 1]) {
                d dVar = (d) this.f74087a.get(i11);
                u1.a aVar = dVar.f74057a;
                if (aVar.f76562e == -3.4028235E38f) {
                    arrayList2.add(dVar);
                } else {
                    arrayList.add(aVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: r3.i
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return j.b((d) obj, (d) obj2);
            }
        });
        for (int i13 = 0; i13 < arrayList2.size(); i13++) {
            arrayList.add(((d) arrayList2.get(i13)).f74057a.a().h((-1) - i13, 1).a());
        }
        return arrayList;
    }

    @Override // i3.k
    public long getEventTime(int i11) {
        androidx.media3.common.util.a.a(i11 >= 0);
        androidx.media3.common.util.a.a(i11 < this.f74089c.length);
        return this.f74089c[i11];
    }

    @Override // i3.k
    public int getEventTimeCount() {
        return this.f74089c.length;
    }

    @Override // i3.k
    public int getNextEventTimeIndex(long j11) {
        int iD = a1.d(this.f74089c, j11, false, false);
        if (iD < this.f74089c.length) {
            return iD;
        }
        return -1;
    }
}
