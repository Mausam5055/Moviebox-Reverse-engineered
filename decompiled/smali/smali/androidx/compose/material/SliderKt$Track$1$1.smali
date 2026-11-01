.class final Landroidx/compose/material/SliderKt$Track$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lz/g;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lz/g;",
        "",
        "invoke",
        "(Lz/g;)V",
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
.field final synthetic $activeTickColor:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $activeTrackColor:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTickColor:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTrackColor:Landroidx/compose/runtime/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/a3;"
        }
    .end annotation
.end field

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
.method constructor <init>(FLandroidx/compose/runtime/a3;FFFLandroidx/compose/runtime/a3;Ljava/util/List;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/a3;",
            "FFF",
            "Landroidx/compose/runtime/a3;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/a3;",
            "Landroidx/compose/runtime/a3;",
            ")V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$thumbPx:F

    iput-object p2, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTrackColor:Landroidx/compose/runtime/a3;

    iput p3, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    iput p4, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionEnd:F

    iput p5, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionStart:F

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTrackColor:Landroidx/compose/runtime/a3;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$tickFractions:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTickColor:Landroidx/compose/runtime/a3;

    iput-object p9, p0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTickColor:Landroidx/compose/runtime/a3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz/g;

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$Track$1$1;->invoke(Lz/g;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lz/g;)V
    .locals 25

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lz/g;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$thumbPx:F

    invoke-interface/range {p1 .. p1}, Lz/g;->O0()J

    move-result-wide v5

    invoke-static {v5, v6}, Ly/g;->n(J)F

    move-result v5

    invoke-static {v2, v5}, Ly/h;->a(FF)J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lz/g;->i()J

    move-result-wide v7

    invoke-static {v7, v8}, Ly/m;->i(J)F

    move-result v2

    iget v7, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$thumbPx:F

    sub-float/2addr v2, v7

    invoke-interface/range {p1 .. p1}, Lz/g;->O0()J

    move-result-wide v7

    invoke-static {v7, v8}, Ly/g;->n(J)F

    move-result v7

    invoke-static {v2, v7}, Ly/h;->a(FF)J

    move-result-wide v7

    if-eqz v1, :cond_1

    move-wide v14, v7

    goto :goto_1

    :cond_1
    move-wide v14, v5

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v5, v7

    :goto_2
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTrackColor:Landroidx/compose/runtime/a3;

    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v10

    iget v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    sget-object v2, Landroidx/compose/ui/graphics/c5;->a:Landroidx/compose/ui/graphics/c5$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/c5$a;->b()I

    move-result v17

    const/16 v22, 0x1e0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v9, p1

    move-wide v12, v14

    move-wide v7, v14

    move-wide v14, v5

    move/from16 v16, v1

    invoke-static/range {v9 .. v23}, Lz/f;->f(Lz/g;JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    invoke-static {v7, v8}, Ly/g;->m(J)F

    move-result v1

    invoke-static {v5, v6}, Ly/g;->m(J)F

    move-result v9

    invoke-static {v7, v8}, Ly/g;->m(J)F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionEnd:F

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    invoke-interface/range {p1 .. p1}, Lz/g;->O0()J

    move-result-wide v9

    invoke-static {v9, v10}, Ly/g;->n(J)F

    move-result v9

    invoke-static {v1, v9}, Ly/h;->a(FF)J

    move-result-wide v15

    invoke-static {v7, v8}, Ly/g;->m(J)F

    move-result v1

    invoke-static {v5, v6}, Ly/g;->m(J)F

    move-result v9

    invoke-static {v7, v8}, Ly/g;->m(J)F

    move-result v10

    sub-float/2addr v9, v10

    iget v10, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionStart:F

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    invoke-interface/range {p1 .. p1}, Lz/g;->O0()J

    move-result-wide v9

    invoke-static {v9, v10}, Ly/g;->n(J)F

    move-result v9

    invoke-static {v1, v9}, Ly/h;->a(FF)J

    move-result-wide v13

    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTrackColor:Landroidx/compose/runtime/a3;

    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v11

    iget v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/c5$a;->b()I

    move-result v18

    const/16 v23, 0x1e0

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v10, p1

    move/from16 v17, v1

    invoke-static/range {v10 .. v24}, Lz/f;->f(Lz/g;JJJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$tickFractions:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionEnd:F

    iget v9, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$positionFractionStart:F

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    cmpl-float v13, v12, v2

    if-gtz v13, :cond_4

    cmpg-float v12, v12, v9

    if-gez v12, :cond_3

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    move v12, v4

    :goto_5
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$inactiveTickColor:Landroidx/compose/runtime/a3;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$activeTickColor:Landroidx/compose/runtime/a3;

    iget v4, v0, Landroidx/compose/material/SliderKt$Track$1$1;->$trackStrokeWidth:F

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v13, :cond_7

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v15

    invoke-static {v7, v8, v5, v6, v15}, Ly/h;->e(JJF)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ly/g;->m(J)F

    move-result v15

    invoke-interface/range {p1 .. p1}, Lz/g;->O0()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ly/g;->n(J)F

    move-result v3

    invoke-static {v15, v3}, Ly/h;->a(FF)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ly/g;->d(J)Ly/g;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_7
    sget-object v3, Landroidx/compose/ui/graphics/t4;->a:Landroidx/compose/ui/graphics/t4$a;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/t4$a;->b()I

    move-result v13

    if-eqz v11, :cond_8

    move-object v3, v1

    goto :goto_8

    :cond_8
    move-object v3, v2

    :goto_8
    invoke-interface {v3}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v14

    sget-object v3, Landroidx/compose/ui/graphics/c5;->a:Landroidx/compose/ui/graphics/c5$a;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/c5$a;->b()I

    move-result v17

    const/16 v22, 0x1e0

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v11, p1

    move/from16 v16, v4

    invoke-static/range {v11 .. v23}, Lz/f;->h(Lz/g;Ljava/util/List;IJFILandroidx/compose/ui/graphics/p4;FLandroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    return-void
.end method
