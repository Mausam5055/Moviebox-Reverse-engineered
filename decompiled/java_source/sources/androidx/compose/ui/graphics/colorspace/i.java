package androidx.compose.ui.graphics.colorspace;

import androidx.collection.e0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e0 f4387a;

    static {
        g gVar = g.f4353a;
        int iB = gVar.w().b();
        int iB2 = gVar.w().b();
        n.a aVar = n.f4405a;
        DefaultConstructorMarker defaultConstructorMarker = null;
        f4387a = androidx.collection.p.c(iB | (iB2 << 6) | (aVar.b() << 12), h.f4377g.c(gVar.w()), gVar.w().b() | (gVar.t().b() << 6) | (aVar.b() << 12), new h(gVar.w(), gVar.t(), aVar.b(), defaultConstructorMarker), gVar.t().b() | (gVar.w().b() << 6) | (aVar.b() << 12), new h(gVar.t(), gVar.w(), aVar.b(), defaultConstructorMarker));
    }

    public static final e0 a() {
        return f4387a;
    }
}
