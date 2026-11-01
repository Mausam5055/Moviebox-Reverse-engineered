package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.collection.x;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import com.airbnb.lottie.p0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n4.q;
import v4.l;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.airbnb.lottie.model.layer.a {
    private n4.a E;
    private final List F;
    private final RectF G;
    private final RectF H;
    private final Paint I;
    private Boolean J;
    private Boolean K;
    private float L;
    private boolean M;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17886a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f17886a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17886a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public b(LottieDrawable lottieDrawable, Layer layer, List list, h hVar) {
        int i11;
        com.airbnb.lottie.model.layer.a aVar;
        super(lottieDrawable, layer);
        this.F = new ArrayList();
        this.G = new RectF();
        this.H = new RectF();
        this.I = new Paint();
        this.M = true;
        q4.b bVarV = layer.v();
        if (bVarV != null) {
            n4.d dVarA = bVarV.a();
            this.E = dVarA;
            i(dVarA);
            this.E.a(this);
        } else {
            this.E = null;
        }
        x xVar = new x(hVar.k().size());
        int size = list.size() - 1;
        com.airbnb.lottie.model.layer.a aVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer2 = (Layer) list.get(size);
            com.airbnb.lottie.model.layer.a aVarU = com.airbnb.lottie.model.layer.a.u(this, layer2, lottieDrawable, hVar);
            if (aVarU != null) {
                xVar.k(aVarU.z().e(), aVarU);
                if (aVar2 != null) {
                    aVar2.J(aVarU);
                    aVar2 = null;
                } else {
                    this.F.add(0, aVarU);
                    int i12 = a.f17886a[layer2.i().ordinal()];
                    if (i12 == 1 || i12 == 2) {
                        aVar2 = aVarU;
                    }
                }
            }
            size--;
        }
        for (i11 = 0; i11 < xVar.n(); i11++) {
            com.airbnb.lottie.model.layer.a aVar3 = (com.airbnb.lottie.model.layer.a) xVar.e(xVar.j(i11));
            if (aVar3 != null && (aVar = (com.airbnb.lottie.model.layer.a) xVar.e(aVar3.z().k())) != null) {
                aVar3.L(aVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    protected void I(p4.d dVar, int i11, List list, p4.d dVar2) {
        for (int i12 = 0; i12 < this.F.size(); i12++) {
            ((com.airbnb.lottie.model.layer.a) this.F.get(i12)).d(dVar, i11, list, dVar2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void K(boolean z10) {
        super.K(z10);
        Iterator it = this.F.iterator();
        while (it.hasNext()) {
            ((com.airbnb.lottie.model.layer.a) it.next()).K(z10);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    public void M(float f11) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("CompositionLayer#setProgress");
        }
        this.L = f11;
        super.M(f11);
        if (this.E != null) {
            f11 = ((((Float) this.E.h()).floatValue() * this.f17874q.c().i()) - this.f17874q.c().p()) / (this.f17873p.O().e() + 0.01f);
        }
        if (this.E == null) {
            f11 -= this.f17874q.s();
        }
        if (this.f17874q.w() != 0.0f && !"__container".equals(this.f17874q.j())) {
            f11 /= this.f17874q.w();
        }
        for (int size = this.F.size() - 1; size >= 0; size--) {
            ((com.airbnb.lottie.model.layer.a) this.F.get(size)).M(f11);
        }
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("CompositionLayer#setProgress");
        }
    }

    public float P() {
        return this.L;
    }

    public boolean Q() {
        if (this.K == null) {
            for (int size = this.F.size() - 1; size >= 0; size--) {
                com.airbnb.lottie.model.layer.a aVar = (com.airbnb.lottie.model.layer.a) this.F.get(size);
                if (aVar instanceof e) {
                    if (aVar.A()) {
                        this.K = Boolean.TRUE;
                        return true;
                    }
                } else if ((aVar instanceof b) && ((b) aVar).Q()) {
                    this.K = Boolean.TRUE;
                    return true;
                }
            }
            this.K = Boolean.FALSE;
        }
        return this.K.booleanValue();
    }

    public boolean R() {
        if (this.J == null) {
            if (B()) {
                this.J = Boolean.TRUE;
                return true;
            }
            for (int size = this.F.size() - 1; size >= 0; size--) {
                if (((com.airbnb.lottie.model.layer.a) this.F.get(size)).B()) {
                    this.J = Boolean.TRUE;
                    return true;
                }
            }
            this.J = Boolean.FALSE;
        }
        return this.J.booleanValue();
    }

    public void S(boolean z10) {
        this.M = z10;
    }

    @Override // com.airbnb.lottie.model.layer.a, p4.e
    public void b(Object obj, w4.c cVar) {
        super.b(obj, cVar);
        if (obj == p0.E) {
            if (cVar == null) {
                n4.a aVar = this.E;
                if (aVar != null) {
                    aVar.o(null);
                    return;
                }
                return;
            }
            q qVar = new q(cVar);
            this.E = qVar;
            qVar.a(this);
            i(this.E);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a, m4.e
    public void f(RectF rectF, Matrix matrix, boolean z10) {
        super.f(rectF, matrix, z10);
        for (int size = this.F.size() - 1; size >= 0; size--) {
            this.G.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((com.airbnb.lottie.model.layer.a) this.F.get(size)).f(this.G, this.f17872o, true);
            rectF.union(this.G);
        }
    }

    @Override // com.airbnb.lottie.model.layer.a
    void t(Canvas canvas, Matrix matrix, int i11) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("CompositionLayer#draw");
        }
        this.H.set(0.0f, 0.0f, this.f17874q.m(), this.f17874q.l());
        matrix.mapRect(this.H);
        boolean z10 = this.f17873p.m0() && this.F.size() > 1 && i11 != 255;
        if (z10) {
            this.I.setAlpha(i11);
            l.n(canvas, this.H, this.I);
        } else {
            canvas.save();
        }
        if (z10) {
            i11 = 255;
        }
        for (int size = this.F.size() - 1; size >= 0; size--) {
            if (((this.M || !"__container".equals(this.f17874q.j())) && !this.H.isEmpty()) ? canvas.clipRect(this.H) : true) {
                ((com.airbnb.lottie.model.layer.a) this.F.get(size)).h(canvas, matrix, i11);
            }
        }
        canvas.restore();
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("CompositionLayer#draw");
        }
    }
}
