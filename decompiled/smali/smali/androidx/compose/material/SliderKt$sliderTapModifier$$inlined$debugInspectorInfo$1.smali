.class public final Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/platform/z0;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0005\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/compose/ui/platform/z0;",
        "",
        "invoke",
        "(Landroidx/compose/ui/platform/z0;)V",
        "androidx/compose/ui/platform/InspectableValueKt$debugInspectorInfo$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $draggableState$inlined:Landroidx/compose/foundation/gestures/f;

.field final synthetic $enabled$inlined:Z

.field final synthetic $gestureEndAction$inlined:Landroidx/compose/runtime/a3;

.field final synthetic $interactionSource$inlined:Lp/i;

.field final synthetic $isRtl$inlined:Z

.field final synthetic $maxPx$inlined:F

.field final synthetic $pressOffset$inlined:Landroidx/compose/runtime/i1;

.field final synthetic $rawOffset$inlined:Landroidx/compose/runtime/a3;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/f;Lp/i;FZLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/i1;Z)V
    .locals 0

    iput-object p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Lp/i;

    iput p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$maxPx$inlined:F

    iput-boolean p4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$isRtl$inlined:Z

    iput-object p5, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$rawOffset$inlined:Landroidx/compose/runtime/a3;

    iput-object p6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$gestureEndAction$inlined:Landroidx/compose/runtime/a3;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$pressOffset$inlined:Landroidx/compose/runtime/i1;

    iput-boolean p8, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/platform/z0;

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/z0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/z0;)V
    .locals 3

    const-string v0, "sliderTapModifier"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/z0;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "draggableState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "interactionSource"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Lp/i;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$maxPx$inlined:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "maxPx"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$isRtl$inlined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isRtl"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "rawOffset"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$rawOffset$inlined:Landroidx/compose/runtime/a3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "gestureEndAction"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$gestureEndAction$inlined:Landroidx/compose/runtime/a3;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "pressOffset"

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$pressOffset$inlined:Landroidx/compose/runtime/i1;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
