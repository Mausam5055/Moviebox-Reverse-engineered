package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f2625a = o0.i.g(30);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final androidx.compose.ui.f f2626b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.compose.ui.f f2627c;

    public static final class a implements a5 {
        a() {
        }

        @Override // androidx.compose.ui.graphics.a5
        public k4 a(long j11, LayoutDirection layoutDirection, o0.e eVar) {
            float fC0 = eVar.c0(g.b());
            return new k4.b(new y.i(0.0f, -fC0, y.m.i(j11), y.m.g(j11) + fC0));
        }
    }

    public static final class b implements a5 {
        b() {
        }

        @Override // androidx.compose.ui.graphics.a5
        public k4 a(long j11, LayoutDirection layoutDirection, o0.e eVar) {
            float fC0 = eVar.c0(g.b());
            return new k4.b(new y.i(-fC0, 0.0f, y.m.i(j11) + fC0, y.m.g(j11)));
        }
    }

    static {
        androidx.compose.ui.f.a aVar = androidx.compose.ui.f.f4178a;
        f2626b = androidx.compose.ui.draw.d.a(aVar, new a());
        f2627c = androidx.compose.ui.draw.d.a(aVar, new b());
    }

    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, Orientation orientation) {
        return fVar.e(orientation == Orientation.Vertical ? f2627c : f2626b);
    }

    public static final float b() {
        return f2625a;
    }
}
