package androidx.compose.ui.text;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.NoWhenBranchMatchedException;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6097a;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f6097a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final w b(v vVar, u uVar) {
        if (vVar == null && uVar == null) {
            return null;
        }
        return c.a(vVar, uVar);
    }

    public static final d0 c(d0 d0Var, LayoutDirection layoutDirection) {
        return new d0(SpanStyleKt.d(d0Var.y()), s.c(d0Var.v(), layoutDirection), d0Var.w());
    }

    public static final int d(LayoutDirection layoutDirection, int i11) {
        androidx.compose.ui.text.style.j.a aVar = androidx.compose.ui.text.style.j.f6414b;
        if (androidx.compose.ui.text.style.j.j(i11, aVar.a())) {
            int i12 = a.f6097a[layoutDirection.ordinal()];
            if (i12 == 1) {
                return aVar.b();
            }
            if (i12 == 2) {
                return aVar.c();
            }
            throw new NoWhenBranchMatchedException();
        }
        if (!androidx.compose.ui.text.style.j.j(i11, aVar.f())) {
            return i11;
        }
        int i13 = a.f6097a[layoutDirection.ordinal()];
        if (i13 == 1) {
            return aVar.d();
        }
        if (i13 == 2) {
            return aVar.e();
        }
        throw new NoWhenBranchMatchedException();
    }
}
