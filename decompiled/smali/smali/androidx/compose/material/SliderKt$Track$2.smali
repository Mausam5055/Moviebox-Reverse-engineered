.class final Landroidx/compose/material/SliderKt$Track$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->e(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V
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

.field final synthetic $modifier:Landroidx/compose/ui/f;

.field final synthetic $positionFractionEnd:F

.field final synthetic $positionFractionStart:F

.field final synthetic $thumbPx:F

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $trackStrokeWidth:F


# direct methods
.method constructor <init>(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/f;",
            "Landroidx/compose/material/j;",
            "ZFF",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;FFI)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material/SliderKt$Track$2;->$modifier:Landroidx/compose/ui/f;

    iput-object p2, p0, Landroidx/compose/material/SliderKt$Track$2;->$colors:Landroidx/compose/material/j;

    iput-boolean p3, p0, Landroidx/compose/material/SliderKt$Track$2;->$enabled:Z

    iput p4, p0, Landroidx/compose/material/SliderKt$Track$2;->$positionFractionStart:F

    iput p5, p0, Landroidx/compose/material/SliderKt$Track$2;->$positionFractionEnd:F

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Track$2;->$tickFractions:Ljava/util/List;

    iput p7, p0, Landroidx/compose/material/SliderKt$Track$2;->$thumbPx:F

    iput p8, p0, Landroidx/compose/material/SliderKt$Track$2;->$trackStrokeWidth:F

    iput p9, p0, Landroidx/compose/material/SliderKt$Track$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$Track$2;->invoke(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/i;I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/material/SliderKt$Track$2;->$modifier:Landroidx/compose/ui/f;

    iget-object v1, p0, Landroidx/compose/material/SliderKt$Track$2;->$colors:Landroidx/compose/material/j;

    iget-boolean v2, p0, Landroidx/compose/material/SliderKt$Track$2;->$enabled:Z

    iget v3, p0, Landroidx/compose/material/SliderKt$Track$2;->$positionFractionStart:F

    iget v4, p0, Landroidx/compose/material/SliderKt$Track$2;->$positionFractionEnd:F

    iget-object v5, p0, Landroidx/compose/material/SliderKt$Track$2;->$tickFractions:Ljava/util/List;

    iget v6, p0, Landroidx/compose/material/SliderKt$Track$2;->$thumbPx:F

    iget v7, p0, Landroidx/compose/material/SliderKt$Track$2;->$trackStrokeWidth:F

    iget p2, p0, Landroidx/compose/material/SliderKt$Track$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/v1;->a(I)I

    move-result v9

    move-object v8, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/material/SliderKt;->i(Landroidx/compose/ui/f;Landroidx/compose/material/j;ZFFLjava/util/List;FFLandroidx/compose/runtime/i;I)V

    return-void
.end method
