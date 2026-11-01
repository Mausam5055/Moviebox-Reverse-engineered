package n4;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class f extends g {
    public f(List list) {
        super(list);
    }

    public int q() {
        return r(b(), d());
    }

    int r(w4.a aVar, float f11) {
        Integer num;
        if (aVar.f77564b == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        int iH = aVar.f77565c == null ? aVar.h() : aVar.e();
        w4.c cVar = this.f70180e;
        return (cVar == null || (num = (Integer) cVar.b(aVar.f77569g, aVar.f77570h.floatValue(), (Integer) aVar.f77564b, Integer.valueOf(iH), f11, e(), f())) == null) ? v4.k.j(aVar.h(), iH, f11) : num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n4.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public Integer i(w4.a aVar, float f11) {
        return Integer.valueOf(r(aVar, f11));
    }
}
