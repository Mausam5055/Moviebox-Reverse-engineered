package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.z0;
import androidx.compose.ui.unit.LayoutDirection;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class PaddingKt {
    public static final t a(float f11) {
        return new u(f11, f11, f11, f11, null);
    }

    public static final t b(float f11, float f12) {
        return new u(f11, f12, f11, f12, null);
    }

    public static /* synthetic */ t c(float f11, float f12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = o0.i.g(0);
        }
        if ((i11 & 2) != 0) {
            f12 = o0.i.g(0);
        }
        return b(f11, f12);
    }

    public static final float d(t tVar, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? tVar.c(layoutDirection) : tVar.b(layoutDirection);
    }

    public static final float e(t tVar, LayoutDirection layoutDirection) {
        return layoutDirection == LayoutDirection.Ltr ? tVar.b(layoutDirection) : tVar.c(layoutDirection);
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, final float f11, final float f12) {
        return fVar.e(new PaddingElement(f11, f12, f11, f12, true, new Function1<z0, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$padding$2
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
                z0Var.b("padding");
                z0Var.a().c("horizontal", o0.i.d(f11));
                z0Var.a().c("vertical", o0.i.d(f12));
            }
        }, null));
    }

    public static /* synthetic */ androidx.compose.ui.f g(androidx.compose.ui.f fVar, float f11, float f12, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = o0.i.g(0);
        }
        if ((i11 & 2) != 0) {
            f12 = o0.i.g(0);
        }
        return f(fVar, f11, f12);
    }

    public static final androidx.compose.ui.f h(androidx.compose.ui.f fVar, final float f11, final float f12, final float f13, final float f14) {
        return fVar.e(new PaddingElement(f11, f12, f13, f14, true, new Function1<z0, Unit>() { // from class: androidx.compose.foundation.layout.PaddingKt$padding$1
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
                z0Var.b("padding");
                z0Var.a().c("start", o0.i.d(f11));
                z0Var.a().c(IntegrationConstants.TAB_BAR_POSITION_TOP, o0.i.d(f12));
                z0Var.a().c(TtmlNode.END, o0.i.d(f13));
                z0Var.a().c(IntegrationConstants.TAB_BAR_POSITION_DEFAULT, o0.i.d(f14));
            }
        }, null));
    }

    public static /* synthetic */ androidx.compose.ui.f i(androidx.compose.ui.f fVar, float f11, float f12, float f13, float f14, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f11 = o0.i.g(0);
        }
        if ((i11 & 2) != 0) {
            f12 = o0.i.g(0);
        }
        if ((i11 & 4) != 0) {
            f13 = o0.i.g(0);
        }
        if ((i11 & 8) != 0) {
            f14 = o0.i.g(0);
        }
        return h(fVar, f11, f12, f13, f14);
    }
}
