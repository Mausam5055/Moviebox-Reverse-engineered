package androidx.compose.material3;

import androidx.compose.ui.platform.z0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;
import o0.i;

/* JADX INFO: renamed from: androidx.compose.material3.TextFieldDefaults$indicatorLine-gv0btCI$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class TextFieldDefaults$indicatorLinegv0btCI$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ h $colors$inlined;
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ float $focusedIndicatorLineThickness$inlined;
    final /* synthetic */ p.g $interactionSource$inlined;
    final /* synthetic */ boolean $isError$inlined;
    final /* synthetic */ float $unfocusedIndicatorLineThickness$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldDefaults$indicatorLinegv0btCI$$inlined$debugInspectorInfo$1(boolean z10, boolean z11, p.g gVar, h hVar, float f11, float f12) {
        super(1);
        this.$enabled$inlined = z10;
        this.$isError$inlined = z11;
        this.$interactionSource$inlined = gVar;
        this.$focusedIndicatorLineThickness$inlined = f11;
        this.$unfocusedIndicatorLineThickness$inlined = f12;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("indicatorLine");
        z0Var.a().c("enabled", Boolean.valueOf(this.$enabled$inlined));
        z0Var.a().c("isError", Boolean.valueOf(this.$isError$inlined));
        z0Var.a().c("interactionSource", this.$interactionSource$inlined);
        z0Var.a().c("colors", null);
        z0Var.a().c("focusedIndicatorLineThickness", i.d(this.$focusedIndicatorLineThickness$inlined));
        z0Var.a().c("unfocusedIndicatorLineThickness", i.d(this.$unfocusedIndicatorLineThickness$inlined));
    }
}
