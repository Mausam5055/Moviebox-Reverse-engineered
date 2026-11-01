package androidx.compose.foundation.layout;

import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000*\u00020\u0000H\u000b¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/f;", "invoke", "(Landroidx/compose/ui/f;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/f;", "androidx/compose/foundation/layout/WindowInsetsPadding_androidKt$windowInsetsPadding$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$windowInsetsPadding$1 extends Lambda implements Function3<androidx.compose.ui.f, androidx.compose.runtime.i, Integer, androidx.compose.ui.f> {
    public WindowInsetsPadding_androidKt$mandatorySystemGesturesPadding$$inlined$windowInsetsPadding$1() {
        super(3);
    }

    public final androidx.compose.ui.f invoke(androidx.compose.ui.f fVar, androidx.compose.runtime.i iVar, int i11) {
        iVar.P(359872873);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(359872873, i11, -1, "androidx.compose.foundation.layout.windowInsetsPadding.<anonymous> (WindowInsetsPadding.android.kt:249)");
        }
        WindowInsetsHolder windowInsetsHolderC = WindowInsetsHolder.f2793x.c(iVar, 6);
        boolean zO = iVar.O(windowInsetsHolderC);
        Object objY = iVar.y();
        if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new InsetsPaddingModifier(windowInsetsHolderC.g());
            iVar.p(objY);
        }
        InsetsPaddingModifier insetsPaddingModifier = (InsetsPaddingModifier) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return insetsPaddingModifier;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
        return invoke((androidx.compose.ui.f) obj, (androidx.compose.runtime.i) obj2, ((Number) obj3).intValue());
    }
}
