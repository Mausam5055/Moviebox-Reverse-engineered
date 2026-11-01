package androidx.compose.foundation.layout;

import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: renamed from: androidx.compose.foundation.layout.SizeKt$sizeIn-qDBjuR0$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class SizeKt$sizeInqDBjuR0$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ float $maxHeight$inlined;
    final /* synthetic */ float $maxWidth$inlined;
    final /* synthetic */ float $minHeight$inlined;
    final /* synthetic */ float $minWidth$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SizeKt$sizeInqDBjuR0$$inlined$debugInspectorInfo$1(float f11, float f12, float f13, float f14) {
        super(1);
        this.$minWidth$inlined = f11;
        this.$minHeight$inlined = f12;
        this.$maxWidth$inlined = f13;
        this.$maxHeight$inlined = f14;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("sizeIn");
        z0Var.a().c("minWidth", o0.i.d(this.$minWidth$inlined));
        z0Var.a().c("minHeight", o0.i.d(this.$minHeight$inlined));
        z0Var.a().c("maxWidth", o0.i.d(this.$maxWidth$inlined));
        z0Var.a().c("maxHeight", o0.i.d(this.$maxHeight$inlined));
    }
}
