.class public final Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;
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
.field final synthetic $anchors$inlined:Ljava/util/Map;

.field final synthetic $enabled$inlined:Z

.field final synthetic $interactionSource$inlined:Lp/i;

.field final synthetic $orientation$inlined:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $resistance$inlined:Landroidx/compose/material/f;

.field final synthetic $reverseDirection$inlined:Z

.field final synthetic $state$inlined:Landroidx/compose/material/o;

.field final synthetic $thresholds$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $velocityThreshold$inlined:F


# direct methods
.method public constructor <init>(Landroidx/compose/material/o;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLp/i;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/f;F)V
    .locals 0

    iput-object p2, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$anchors$inlined:Ljava/util/Map;

    iput-object p3, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$orientation$inlined:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p4, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    iput-boolean p5, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$reverseDirection$inlined:Z

    iput-object p6, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Lp/i;

    iput-object p7, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$thresholds$inlined:Lkotlin/jvm/functions/Function2;

    iput p9, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$velocityThreshold$inlined:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/platform/z0;

    invoke-virtual {p0, p1}, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/z0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/z0;)V
    .locals 4

    const-string v0, "swipeable"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/z0;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "anchors"

    iget-object v3, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$anchors$inlined:Ljava/util/Map;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "orientation"

    iget-object v3, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$orientation$inlined:Landroidx/compose/foundation/gestures/Orientation;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "enabled"

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$reverseDirection$inlined:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "reverseDirection"

    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "interactionSource"

    iget-object v3, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Lp/i;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "thresholds"

    iget-object v3, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$thresholds$inlined:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "resistance"

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object p1

    iget v0, p0, Landroidx/compose/material/SwipeableKt$swipeable-pPrIpRY$$inlined$debugInspectorInfo$1;->$velocityThreshold$inlined:F

    invoke-static {v0}, Lo0/i;->d(F)Lo0/i;

    move-result-object v0

    const-string v1, "velocityThreshold"

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
