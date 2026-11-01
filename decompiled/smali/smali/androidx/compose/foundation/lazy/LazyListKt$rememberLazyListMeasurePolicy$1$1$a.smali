.class public final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;
.super Landroidx/compose/foundation/lazy/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/q;J)Landroidx/compose/foundation/lazy/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Landroidx/compose/foundation/lazy/layout/q;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Landroidx/compose/ui/b$b;

.field final synthetic i:Landroidx/compose/ui/b$c;

.field final synthetic j:Z

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:J

.field final synthetic n:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(JZLandroidx/compose/foundation/lazy/k;Landroidx/compose/foundation/lazy/layout/q;IILandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;ZIIJLandroidx/compose/foundation/lazy/LazyListState;)V
    .locals 5

    move-object v0, p0

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->d:Z

    move-object v2, p5

    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->e:Landroidx/compose/foundation/lazy/layout/q;

    move v3, p6

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->f:I

    move v3, p7

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->g:I

    move-object v3, p8

    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->h:Landroidx/compose/ui/b$b;

    move-object v3, p9

    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->i:Landroidx/compose/ui/b$c;

    move v3, p10

    iput-boolean v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->j:Z

    move/from16 v3, p11

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->k:I

    move/from16 v3, p12

    iput v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->l:I

    move-wide/from16 v3, p13

    iput-wide v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->m:J

    move-object/from16 v3, p15

    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->n:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v3, 0x0

    move-object p6, p0

    move-wide p7, p1

    move p9, p3

    move-object p10, p4

    move-object/from16 p11, p5

    move-object/from16 p12, v3

    invoke-direct/range {p6 .. p12}, Landroidx/compose/foundation/lazy/o;-><init>(JZLandroidx/compose/foundation/lazy/k;Landroidx/compose/foundation/lazy/layout/q;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;J)Landroidx/compose/foundation/lazy/n;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->f:I

    add-int/lit8 v1, v1, -0x1

    move/from16 v3, p1

    if-ne v3, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v12, v1

    goto :goto_1

    :cond_0
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->g:I

    goto :goto_0

    :goto_1
    new-instance v1, Landroidx/compose/foundation/lazy/n;

    move-object v2, v1

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->d:Z

    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->h:Landroidx/compose/ui/b$b;

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->i:Landroidx/compose/ui/b$c;

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->e:Landroidx/compose/foundation/lazy/layout/q;

    invoke-interface {v4}, Landroidx/compose/ui/layout/j;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    iget-boolean v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->j:Z

    iget v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->k:I

    iget v11, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->l:I

    iget-wide v13, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->m:J

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$a;->n:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListState;->s()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-result-object v17

    const/16 v20, 0x0

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-wide/from16 v18, p5

    invoke-direct/range {v2 .. v20}, Landroidx/compose/foundation/lazy/n;-><init>(ILjava/util/List;ZLandroidx/compose/ui/b$b;Landroidx/compose/ui/b$c;Landroidx/compose/ui/unit/LayoutDirection;ZIIIJLjava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
