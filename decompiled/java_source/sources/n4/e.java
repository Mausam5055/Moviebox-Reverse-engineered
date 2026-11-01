package n4;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final r4.d f70204i;

    public e(List list) {
        super(list);
        int iMax = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            r4.d dVar = (r4.d) ((w4.a) list.get(i11)).f77564b;
            if (dVar != null) {
                iMax = Math.max(iMax, dVar.f());
            }
        }
        this.f70204i = new r4.d(new float[iMax], new int[iMax]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public r4.d i(w4.a aVar, float f11) {
        this.f70204i.g((r4.d) aVar.f77564b, (r4.d) aVar.f77565c, f11);
        return this.f70204i;
    }
}
