package n4;

import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class k extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f70215i;

    public k(List list) {
        super(list);
        this.f70215i = new PointF();
    }

    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(w4.a aVar, float f11) {
        return j(aVar, f11, f11, f11);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // n4.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public PointF j(w4.a aVar, float f11, float f12, float f13) {
        Object obj;
        PointF pointF;
        Object obj2 = aVar.f77564b;
        if (obj2 == null || (obj = aVar.f77565c) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = (PointF) obj2;
        PointF pointF3 = (PointF) obj;
        w4.c cVar = this.f70180e;
        if (cVar != null && (pointF = (PointF) cVar.b(aVar.f77569g, aVar.f77570h.floatValue(), pointF2, pointF3, f11, e(), f())) != null) {
            return pointF;
        }
        PointF pointF4 = this.f70215i;
        float f14 = pointF2.x;
        float f15 = f14 + (f12 * (pointF3.x - f14));
        float f16 = pointF2.y;
        pointF4.set(f15, f16 + (f13 * (pointF3.y - f16)));
        return this.f70215i;
    }
}
