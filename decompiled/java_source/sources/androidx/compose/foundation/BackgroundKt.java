package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v4;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class BackgroundKt {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, final long j11, final a5 a5Var) {
        return fVar.e(new BackgroundElement(j11, null, 1.0f, a5Var, InspectableValueKt.b() ? new Function1<z0, Unit>() { // from class: androidx.compose.foundation.BackgroundKt$background-bw27NRU$$inlined$debugInspectorInfo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z0) obj);
                return Unit.f67061a;
            }

            public final void invoke(z0 z0Var) {
                z0Var.b("background");
                z0Var.c(u1.g(j11));
                z0Var.a().c(TtmlNode.ATTR_TTS_COLOR, u1.g(j11));
                z0Var.a().c("shape", a5Var);
            }
        } : InspectableValueKt.a(), 2, null));
    }

    public static /* synthetic */ androidx.compose.ui.f b(androidx.compose.ui.f fVar, long j11, a5 a5Var, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            a5Var = v4.a();
        }
        return a(fVar, j11, a5Var);
    }
}
