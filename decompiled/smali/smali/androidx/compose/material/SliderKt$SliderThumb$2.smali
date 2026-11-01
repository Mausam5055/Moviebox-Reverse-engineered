.class final Landroidx/compose/material/SliderKt$SliderThumb$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->d(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/i;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $colors:Landroidx/compose/material/j;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Lp/i;

.field final synthetic $modifier:Landroidx/compose/ui/f;

.field final synthetic $offset:F

.field final synthetic $this_SliderThumb:Landroidx/compose/foundation/layout/f;

.field final synthetic $thumbSize:F


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFI)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$this_SliderThumb:Landroidx/compose/foundation/layout/f;

    iput-object p2, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$modifier:Landroidx/compose/ui/f;

    iput p3, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$offset:F

    iput-object p4, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$interactionSource:Lp/i;

    iput-object p5, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$colors:Landroidx/compose/material/j;

    iput-boolean p6, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$enabled:Z

    iput p7, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$thumbSize:F

    iput p8, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$SliderThumb$2;->invoke(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/i;I)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$this_SliderThumb:Landroidx/compose/foundation/layout/f;

    iget-object v1, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$modifier:Landroidx/compose/ui/f;

    iget v2, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$offset:F

    iget-object v3, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$interactionSource:Lp/i;

    iget-object v4, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$colors:Landroidx/compose/material/j;

    iget-boolean v5, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$enabled:Z

    iget v6, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$thumbSize:F

    iget p2, p0, Landroidx/compose/material/SliderKt$SliderThumb$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    move-result v8

    move-object v7, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material/SliderKt;->h(Landroidx/compose/foundation/layout/f;Landroidx/compose/ui/f;FLp/i;Landroidx/compose/material/j;ZFLandroidx/compose/runtime/i;I)V

    return-void
.end method
