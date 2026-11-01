package n4;

import android.graphics.Path;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class i extends w4.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Path f70208q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final w4.a f70209r;

    public i(com.airbnb.lottie.h hVar, w4.a aVar) {
        super(hVar, (PointF) aVar.f77564b, (PointF) aVar.f77565c, aVar.f77566d, aVar.f77567e, aVar.f77568f, aVar.f77569g, aVar.f77570h);
        this.f70209r = aVar;
        j();
    }

    public void j() {
        Object obj;
        Object obj2;
        Object obj3 = this.f77565c;
        boolean z10 = (obj3 == null || (obj2 = this.f77564b) == null || !((PointF) obj2).equals(((PointF) obj3).x, ((PointF) obj3).y)) ? false : true;
        Object obj4 = this.f77564b;
        if (obj4 == null || (obj = this.f77565c) == null || z10) {
            return;
        }
        w4.a aVar = this.f70209r;
        this.f70208q = v4.l.d((PointF) obj4, (PointF) obj, aVar.f77577o, aVar.f77578p);
    }

    Path k() {
        return this.f70208q;
    }
}
