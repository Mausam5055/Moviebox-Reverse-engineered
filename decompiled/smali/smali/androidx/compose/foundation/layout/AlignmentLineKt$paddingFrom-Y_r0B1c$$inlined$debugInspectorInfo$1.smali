.class public final Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;
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
.field final synthetic $after$inlined:J

.field final synthetic $alignmentLine$inlined:Landroidx/compose/ui/layout/a;

.field final synthetic $before$inlined:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/a;JJ)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->$alignmentLine$inlined:Landroidx/compose/ui/layout/a;

    iput-wide p2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->$before$inlined:J

    iput-wide p4, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->$after$inlined:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/platform/z0;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/z0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/z0;)V
    .locals 3

    const-string v0, "paddingFrom"

    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/z0;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    const-string v1, "alignmentLine"

    iget-object v2, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->$alignmentLine$inlined:Landroidx/compose/ui/layout/a;

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->$before$inlined:J

    invoke-static {v1, v2}, Lo0/w;->b(J)Lo0/w;

    move-result-object v1

    const-string v2, "before"

    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/z0;->a()Landroidx/compose/ui/platform/l2;

    move-result-object p1

    iget-wide v0, p0, Landroidx/compose/foundation/layout/AlignmentLineKt$paddingFrom-Y_r0B1c$$inlined$debugInspectorInfo$1;->$after$inlined:J

    invoke-static {v0, v1}, Lo0/w;->b(J)Lo0/w;

    move-result-object v0

    const-string v1, "after"

    invoke-virtual {p1, v1, v0}, Landroidx/compose/ui/platform/l2;->c(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
