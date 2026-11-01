package n4;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class l extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final w4.d f70216i;

    public l(List list) {
        super(list);
        this.f70216i = new w4.d();
    }

    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public w4.d i(w4.a aVar, float f11) {
        Object obj;
        w4.d dVar;
        Object obj2 = aVar.f77564b;
        if (obj2 == null || (obj = aVar.f77565c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        w4.d dVar2 = (w4.d) obj2;
        w4.d dVar3 = (w4.d) obj;
        w4.c cVar = this.f70180e;
        if (cVar != null && (dVar = (w4.d) cVar.b(aVar.f77569g, aVar.f77570h.floatValue(), dVar2, dVar3, f11, e(), f())) != null) {
            return dVar;
        }
        this.f70216i.d(v4.k.i(dVar2.b(), dVar3.b(), f11), v4.k.i(dVar2.c(), dVar3.c(), f11));
        return this.f70216i;
    }
}
