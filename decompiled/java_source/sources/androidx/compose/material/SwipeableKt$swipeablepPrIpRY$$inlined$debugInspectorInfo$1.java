package androidx.compose.material;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.platform.z0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: renamed from: androidx.compose.material.SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/z0;", "", "invoke", "(Landroidx/compose/ui/platform/z0;)V", "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@SourceDebugExtension
public final class SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1 extends Lambda implements Function1<z0, Unit> {
    final /* synthetic */ Map $anchors$inlined;
    final /* synthetic */ boolean $enabled$inlined;
    final /* synthetic */ p.i $interactionSource$inlined;
    final /* synthetic */ Orientation $orientation$inlined;
    final /* synthetic */ f $resistance$inlined;
    final /* synthetic */ boolean $reverseDirection$inlined;
    final /* synthetic */ o $state$inlined;
    final /* synthetic */ Function2 $thresholds$inlined;
    final /* synthetic */ float $velocityThreshold$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeableKt$swipeablepPrIpRY$$inlined$debugInspectorInfo$1(o oVar, Map map, Orientation orientation, boolean z10, boolean z11, p.i iVar, Function2 function2, f fVar, float f11) {
        super(1);
        this.$anchors$inlined = map;
        this.$orientation$inlined = orientation;
        this.$enabled$inlined = z10;
        this.$reverseDirection$inlined = z11;
        this.$interactionSource$inlined = iVar;
        this.$thresholds$inlined = function2;
        this.$velocityThreshold$inlined = f11;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((z0) obj);
        return Unit.f67061a;
    }

    public final void invoke(z0 z0Var) {
        z0Var.b("swipeable");
        z0Var.a().c("state", null);
        z0Var.a().c("anchors", this.$anchors$inlined);
        z0Var.a().c("orientation", this.$orientation$inlined);
        z0Var.a().c("enabled", Boolean.valueOf(this.$enabled$inlined));
        z0Var.a().c("reverseDirection", Boolean.valueOf(this.$reverseDirection$inlined));
        z0Var.a().c("interactionSource", this.$interactionSource$inlined);
        z0Var.a().c("thresholds", this.$thresholds$inlined);
        z0Var.a().c("resistance", null);
        z0Var.a().c("velocityThreshold", o0.i.d(this.$velocityThreshold$inlined));
    }
}
