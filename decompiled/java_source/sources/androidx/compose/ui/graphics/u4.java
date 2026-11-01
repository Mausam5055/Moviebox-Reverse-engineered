package androidx.compose.ui.graphics;

import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes.dex */
public abstract class u4 {
    public static final Rect a(o0.r rVar) {
        return new Rect(rVar.f(), rVar.h(), rVar.g(), rVar.d());
    }

    public static final Rect b(y.i iVar) {
        return new Rect((int) iVar.f(), (int) iVar.i(), (int) iVar.g(), (int) iVar.c());
    }

    public static final RectF c(y.i iVar) {
        return new RectF(iVar.f(), iVar.i(), iVar.g(), iVar.c());
    }

    public static final o0.r d(Rect rect) {
        return new o0.r(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static final y.i e(Rect rect) {
        return new y.i(rect.left, rect.top, rect.right, rect.bottom);
    }
}
