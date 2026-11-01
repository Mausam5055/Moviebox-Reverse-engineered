package androidx.compose.ui.draganddrop;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.View;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import y.m;

/* JADX INFO: loaded from: classes.dex */
public final class a extends View.DragShadowBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o0.e f4140a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function1 f4142c;

    private a(o0.e eVar, long j11, Function1 function1) {
        this.f4140a = eVar;
        this.f4141b = j11;
        this.f4142c = function1;
    }

    public /* synthetic */ a(o0.e eVar, long j11, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(eVar, j11, function1);
    }

    @Override // android.view.View.DragShadowBuilder
    public void onDrawShadow(Canvas canvas) {
        z.a aVar = new z.a();
        o0.e eVar = this.f4140a;
        long j11 = this.f4141b;
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        m1 m1VarB = h0.b(canvas);
        Function1 function1 = this.f4142c;
        z.a.C0973a c0973aF = aVar.F();
        o0.e eVarA = c0973aF.a();
        LayoutDirection layoutDirectionB = c0973aF.b();
        m1 m1VarC = c0973aF.c();
        long jD = c0973aF.d();
        z.a.C0973a c0973aF2 = aVar.F();
        c0973aF2.j(eVar);
        c0973aF2.k(layoutDirection);
        c0973aF2.i(m1VarB);
        c0973aF2.l(j11);
        m1VarB.n();
        function1.invoke(aVar);
        m1VarB.j();
        z.a.C0973a c0973aF3 = aVar.F();
        c0973aF3.j(eVarA);
        c0973aF3.k(layoutDirectionB);
        c0973aF3.i(m1VarC);
        c0973aF3.l(jD);
    }

    @Override // android.view.View.DragShadowBuilder
    public void onProvideShadowMetrics(Point point, Point point2) {
        o0.e eVar = this.f4140a;
        point.set(eVar.c0(eVar.y0(m.i(this.f4141b))), eVar.c0(eVar.y0(m.g(this.f4141b))));
        point2.set(point.x / 2, point.y / 2);
    }
}
