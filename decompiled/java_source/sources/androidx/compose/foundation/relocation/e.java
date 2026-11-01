package androidx.compose.foundation.relocation;

import android.graphics.Rect;
import android.view.View;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.layout.m;
import androidx.compose.ui.node.h;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import y.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    static final class a implements androidx.compose.foundation.relocation.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.compose.ui.node.f f3164a;

        a(androidx.compose.ui.node.f fVar) {
            this.f3164a = fVar;
        }

        @Override // androidx.compose.foundation.relocation.a
        public final Object U(l lVar, Function0 function0, Continuation continuation) {
            View viewA = h.a(this.f3164a);
            long jE = m.e(lVar);
            i iVar = (i) function0.invoke();
            i iVarQ = iVar != null ? iVar.q(jE) : null;
            if (iVarQ != null) {
                viewA.requestRectangleOnScreen(e.c(iVarQ), false);
            }
            return Unit.f67061a;
        }
    }

    public static final androidx.compose.foundation.relocation.a b(androidx.compose.ui.node.f fVar) {
        return new a(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect c(i iVar) {
        return new Rect((int) iVar.f(), (int) iVar.i(), (int) iVar.g(), (int) iVar.c());
    }
}
