package androidx.compose.foundation;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.widget.EdgeEffect;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.platform.a1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
final class n extends a1 implements androidx.compose.ui.draw.f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AndroidEdgeEffectOverscrollEffect f3143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f3144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RenderNode f3145e;

    public n(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, p pVar, Function1 function1) {
        super(function1);
        this.f3143c = androidEdgeEffectOverscrollEffect;
        this.f3144d = pVar;
    }

    private final boolean a(EdgeEffect edgeEffect, Canvas canvas) {
        return l(180.0f, edgeEffect, canvas);
    }

    private final boolean i(EdgeEffect edgeEffect, Canvas canvas) {
        return l(270.0f, edgeEffect, canvas);
    }

    private final boolean j(EdgeEffect edgeEffect, Canvas canvas) {
        return l(90.0f, edgeEffect, canvas);
    }

    private final boolean k(EdgeEffect edgeEffect, Canvas canvas) {
        return l(0.0f, edgeEffect, canvas);
    }

    private final boolean l(float f11, EdgeEffect edgeEffect, Canvas canvas) {
        if (f11 == 0.0f) {
            return edgeEffect.draw(canvas);
        }
        int iSave = canvas.save();
        canvas.rotate(f11);
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    private final RenderNode m() {
        RenderNode renderNode = this.f3145e;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode renderNodeA = i.a("AndroidEdgeEffectOverscrollEffect");
        this.f3145e = renderNodeA;
        return renderNodeA;
    }

    private final boolean o() {
        p pVar = this.f3144d;
        return pVar.r() || pVar.s() || pVar.u() || pVar.v();
    }

    private final boolean p() {
        p pVar = this.f3144d;
        return pVar.y() || pVar.z() || pVar.o() || pVar.p();
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override // androidx.compose.ui.draw.f
    public void n(z.c cVar) {
        boolean zI;
        this.f3143c.r(cVar.i());
        if (y.m.k(cVar.i())) {
            cVar.Y0();
            return;
        }
        this.f3143c.j().getValue();
        float fE0 = cVar.E0(g.b());
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(cVar.H0().e());
        p pVar = this.f3144d;
        boolean zP = p();
        boolean zO = o();
        if (zP && zO) {
            m().setPosition(0, 0, canvasD.getWidth(), canvasD.getHeight());
        } else if (zP) {
            m().setPosition(0, 0, canvasD.getWidth() + (MathKt.d(fE0) * 2), canvasD.getHeight());
        } else {
            if (!zO) {
                cVar.Y0();
                return;
            }
            m().setPosition(0, 0, canvasD.getWidth(), canvasD.getHeight() + (MathKt.d(fE0) * 2));
        }
        RecordingCanvas recordingCanvasBeginRecording = m().beginRecording();
        if (pVar.s()) {
            EdgeEffect edgeEffectI = pVar.i();
            j(edgeEffectI, recordingCanvasBeginRecording);
            edgeEffectI.finish();
        }
        if (pVar.r()) {
            EdgeEffect edgeEffectH = pVar.h();
            zI = i(edgeEffectH, recordingCanvasBeginRecording);
            if (pVar.t()) {
                float fN = y.g.n(this.f3143c.i());
                o oVar = o.f3146a;
                oVar.d(pVar.i(), oVar.b(edgeEffectH), 1 - fN);
            }
        } else {
            zI = false;
        }
        if (pVar.z()) {
            EdgeEffect edgeEffectM = pVar.m();
            a(edgeEffectM, recordingCanvasBeginRecording);
            edgeEffectM.finish();
        }
        if (pVar.y()) {
            EdgeEffect edgeEffectL = pVar.l();
            zI = k(edgeEffectL, recordingCanvasBeginRecording) || zI;
            if (pVar.A()) {
                float fM = y.g.m(this.f3143c.i());
                o oVar2 = o.f3146a;
                oVar2.d(pVar.m(), oVar2.b(edgeEffectL), fM);
            }
        }
        if (pVar.v()) {
            EdgeEffect edgeEffectK = pVar.k();
            i(edgeEffectK, recordingCanvasBeginRecording);
            edgeEffectK.finish();
        }
        if (pVar.u()) {
            EdgeEffect edgeEffectJ = pVar.j();
            zI = j(edgeEffectJ, recordingCanvasBeginRecording) || zI;
            if (pVar.w()) {
                float fN2 = y.g.n(this.f3143c.i());
                o oVar3 = o.f3146a;
                oVar3.d(pVar.k(), oVar3.b(edgeEffectJ), fN2);
            }
        }
        if (pVar.p()) {
            EdgeEffect edgeEffectG = pVar.g();
            k(edgeEffectG, recordingCanvasBeginRecording);
            edgeEffectG.finish();
        }
        if (pVar.o()) {
            EdgeEffect edgeEffectF = pVar.f();
            boolean z10 = a(edgeEffectF, recordingCanvasBeginRecording) || zI;
            if (pVar.q()) {
                float fM2 = y.g.m(this.f3143c.i());
                o oVar4 = o.f3146a;
                oVar4.d(pVar.g(), oVar4.b(edgeEffectF), 1 - fM2);
            }
            zI = z10;
        }
        if (zI) {
            this.f3143c.k();
        }
        float f11 = zO ? 0.0f : fE0;
        if (zP) {
            fE0 = 0.0f;
        }
        LayoutDirection layoutDirection = cVar.getLayoutDirection();
        m1 m1VarB = androidx.compose.ui.graphics.h0.b(recordingCanvasBeginRecording);
        long jI = cVar.i();
        o0.e density = cVar.H0().getDensity();
        LayoutDirection layoutDirection2 = cVar.H0().getLayoutDirection();
        m1 m1VarE = cVar.H0().e();
        long jI2 = cVar.H0().i();
        GraphicsLayer graphicsLayerG = cVar.H0().g();
        z.d dVarH0 = cVar.H0();
        dVarH0.b(cVar);
        dVarH0.a(layoutDirection);
        dVarH0.h(m1VarB);
        dVarH0.f(jI);
        dVarH0.d(null);
        m1VarB.n();
        try {
            cVar.H0().c().c(f11, fE0);
            try {
                cVar.Y0();
                float f12 = -f11;
                float f13 = -fE0;
                cVar.H0().c().c(f12, f13);
                m1VarB.j();
                z.d dVarH1 = cVar.H0();
                dVarH1.b(density);
                dVarH1.a(layoutDirection2);
                dVarH1.h(m1VarE);
                dVarH1.f(jI2);
                dVarH1.d(graphicsLayerG);
                m().endRecording();
                int iSave = canvasD.save();
                canvasD.translate(f12, f13);
                canvasD.drawRenderNode(m());
                canvasD.restoreToCount(iSave);
            } catch (Throwable th2) {
                cVar.H0().c().c(-f11, -fE0);
                throw th2;
            }
        } catch (Throwable th3) {
            m1VarB.j();
            z.d dVarH2 = cVar.H0();
            dVarH2.b(density);
            dVarH2.a(layoutDirection2);
            dVarH2.h(m1VarE);
            dVarH2.f(jI2);
            dVarH2.d(graphicsLayerG);
            throw th3;
        }
    }
}
