package n4;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends g {
    public d(List list) {
        super(list);
    }

    public float q() {
        return r(b(), d());
    }

    float r(w4.a aVar, float f11) {
        Float f12;
        if (aVar.f77564b == null || aVar.f77565c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        w4.c cVar = this.f70180e;
        return (cVar == null || (f12 = (Float) cVar.b(aVar.f77569g, aVar.f77570h.floatValue(), (Float) aVar.f77564b, (Float) aVar.f77565c, f11, e(), f())) == null) ? v4.k.i(aVar.g(), aVar.d(), f11) : f12.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // n4.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public Float i(w4.a aVar, float f11) {
        return Float.valueOf(r(aVar, f11));
    }
}
