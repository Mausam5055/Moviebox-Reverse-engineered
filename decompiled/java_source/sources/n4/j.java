package n4;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class j extends g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final PointF f70210i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float[] f70211j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float[] f70212k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final PathMeasure f70213l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private i f70214m;

    public j(List list) {
        super(list);
        this.f70210i = new PointF();
        this.f70211j = new float[2];
        this.f70212k = new float[2];
        this.f70213l = new PathMeasure();
    }

    @Override // n4.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public PointF i(w4.a aVar, float f11) {
        PointF pointF;
        i iVar = (i) aVar;
        Path pathK = iVar.k();
        if (pathK == null) {
            return (PointF) aVar.f77564b;
        }
        w4.c cVar = this.f70180e;
        if (cVar != null && (pointF = (PointF) cVar.b(iVar.f77569g, iVar.f77570h.floatValue(), (PointF) iVar.f77564b, (PointF) iVar.f77565c, e(), f11, f())) != null) {
            return pointF;
        }
        if (this.f70214m != iVar) {
            this.f70213l.setPath(pathK, false);
            this.f70214m = iVar;
        }
        float length = this.f70213l.getLength();
        float f12 = f11 * length;
        this.f70213l.getPosTan(f12, this.f70211j, this.f70212k);
        PointF pointF2 = this.f70210i;
        float[] fArr = this.f70211j;
        pointF2.set(fArr[0], fArr[1]);
        if (f12 < 0.0f) {
            PointF pointF3 = this.f70210i;
            float[] fArr2 = this.f70212k;
            pointF3.offset(fArr2[0] * f12, fArr2[1] * f12);
        } else if (f12 > length) {
            PointF pointF4 = this.f70210i;
            float[] fArr3 = this.f70212k;
            float f13 = f12 - length;
            pointF4.offset(fArr3[0] * f13, fArr3[1] * f13);
        }
        return this.f70210i;
    }
}
