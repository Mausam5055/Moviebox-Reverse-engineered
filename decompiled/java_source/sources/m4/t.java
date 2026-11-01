package m4;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.p0;

/* JADX INFO: loaded from: classes2.dex */
public class t extends a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f69302r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f69303s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f69304t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final n4.a f69305u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private n4.a f69306v;

    public t(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.a aVar, ShapeStroke shapeStroke) {
        super(lottieDrawable, aVar, shapeStroke.b().toPaintCap(), shapeStroke.e().toPaintJoin(), shapeStroke.g(), shapeStroke.i(), shapeStroke.j(), shapeStroke.f(), shapeStroke.d());
        this.f69302r = aVar;
        this.f69303s = shapeStroke.h();
        this.f69304t = shapeStroke.k();
        n4.a aVarA = shapeStroke.c().a();
        this.f69305u = aVarA;
        aVarA.a(this);
        aVar.i(aVarA);
    }

    @Override // m4.a, p4.e
    public void b(Object obj, w4.c cVar) {
        super.b(obj, cVar);
        if (obj == p0.f17904b) {
            this.f69305u.o(cVar);
            return;
        }
        if (obj == p0.K) {
            n4.a aVar = this.f69306v;
            if (aVar != null) {
                this.f69302r.H(aVar);
            }
            if (cVar == null) {
                this.f69306v = null;
                return;
            }
            n4.q qVar = new n4.q(cVar);
            this.f69306v = qVar;
            qVar.a(this);
            this.f69302r.i(this.f69305u);
        }
    }

    @Override // m4.c
    public String getName() {
        return this.f69303s;
    }

    @Override // m4.a, m4.e
    public void h(Canvas canvas, Matrix matrix, int i11) {
        if (this.f69304t) {
            return;
        }
        this.f69170i.setColor(((n4.b) this.f69305u).q());
        n4.a aVar = this.f69306v;
        if (aVar != null) {
            this.f69170i.setColorFilter((ColorFilter) aVar.h());
        }
        super.h(canvas, matrix, i11);
    }
}
