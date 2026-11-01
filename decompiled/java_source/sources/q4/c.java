package q4;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends p {
    public c(List list) {
        super(e(list));
    }

    private static w4.a d(w4.a aVar) {
        r4.d dVar = (r4.d) aVar.f77564b;
        r4.d dVar2 = (r4.d) aVar.f77565c;
        if (dVar == null || dVar2 == null || dVar.e().length == dVar2.e().length) {
            return aVar;
        }
        float[] fArrF = f(dVar.e(), dVar2.e());
        return aVar.b(dVar.b(fArrF), dVar2.b(fArrF));
    }

    private static List e(List list) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            list.set(i11, d((w4.a) list.get(i11)));
        }
        return list;
    }

    static float[] f(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f11 = Float.NaN;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            float f12 = fArr3[i12];
            if (f12 != f11) {
                fArr3[i11] = f12;
                i11++;
                f11 = fArr3[i12];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i11);
    }

    @Override // q4.o
    public n4.a a() {
        return new n4.e(this.f73111a);
    }

    @Override // q4.p, q4.o
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // q4.p, q4.o
    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // q4.p
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
