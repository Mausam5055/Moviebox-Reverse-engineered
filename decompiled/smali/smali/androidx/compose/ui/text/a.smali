.class public final Landroidx/compose/ui/text/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

.field private final b:I

.field private final c:Z

.field private final d:J

.field private final e:Lk0/e1;

.field private final f:Ljava/lang/CharSequence;

.field private final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V
    .locals 24

    move-object/from16 v9, p0

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v9, Landroidx/compose/ui/text/a;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    iput v10, v9, Landroidx/compose/ui/text/a;->b:I

    iput-boolean v11, v9, Landroidx/compose/ui/text/a;->c:Z

    move-wide/from16 v12, p4

    iput-wide v12, v9, Landroidx/compose/ui/text/a;->d:J

    invoke-static/range {p4 .. p5}, Lo0/b;->m(J)I

    move-result v1

    if-nez v1, :cond_f

    invoke-static/range {p4 .. p5}, Lo0/b;->n(J)I

    move-result v1

    if-nez v1, :cond_f

    const/4 v14, 0x1

    if-lt v10, v14, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i()Landroidx/compose/ui/text/d0;

    move-result-object v15

    invoke-static {v15, v11}, Landroidx/compose/ui/text/b;->c(Landroidx/compose/ui/text/d0;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/text/b;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->f()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, v9, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->z()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/b;->d(I)I

    move-result v16

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->z()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/style/h;->b:Landroidx/compose/ui/text/style/h$a;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/h$a;->c()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/h;->k(II)Z

    move-result v17

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->v()Landroidx/compose/ui/text/r;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/r;->c()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/b;->f(I)I

    move-result v18

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->r()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/e;->e(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/b;->e(I)I

    move-result v19

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->r()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/e;->f(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/b;->g(I)I

    move-result v20

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->r()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/style/e;->g(I)I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/text/b;->h(I)I

    move-result v21

    const/16 v22, 0x0

    if-eqz v11, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v23, v0

    goto :goto_1

    :cond_1
    move-object/from16 v23, v22

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v4, p2

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/text/a;->v(IILandroid/text/TextUtils$TruncateAt;IIIII)Lk0/e1;

    move-result-object v0

    if-eqz v11, :cond_3

    invoke-virtual {v0}, Lk0/e1;->e()I

    move-result v1

    invoke-static/range {p4 .. p5}, Lo0/b;->k(J)I

    move-result v2

    if-le v1, v2, :cond_3

    if-le v10, v14, :cond_3

    invoke-static/range {p4 .. p5}, Lo0/b;->k(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/b;->b(Lk0/e1;I)I

    move-result v1

    if-ltz v1, :cond_2

    if-eq v1, v10, :cond_2

    invoke-static {v1, v14}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v23

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/text/a;->v(IILandroid/text/TextUtils$TruncateAt;IIIII)Lk0/e1;

    move-result-object v0

    :cond_2
    iput-object v0, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    goto :goto_2

    :cond_3
    iput-object v0, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->g()Landroidx/compose/ui/graphics/j1;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->getHeight()F

    move-result v3

    invoke-static {v2, v3}, Ly/n;->a(FF)J

    move-result-wide v2

    invoke-virtual {v15}, Landroidx/compose/ui/text/d0;->d()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/j1;JF)V

    iget-object v0, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-direct {v9, v0}, Landroidx/compose/ui/text/a;->y(Lk0/e1;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->getWidth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->getHeight()F

    move-result v3

    invoke-static {v2, v3}, Ly/n;->a(FF)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->c(J)V

    goto :goto_3

    :cond_4
    iget-object v0, v9, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_e

    :cond_5
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Ll0/j;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v0

    move v5, v3

    :goto_4
    if-ge v5, v4, :cond_d

    aget-object v6, v0, v5

    check-cast v6, Ll0/j;

    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iget-object v10, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v10, v7}, Lk0/e1;->p(I)I

    move-result v10

    iget v11, v9, Landroidx/compose/ui/text/a;->b:I

    if-lt v10, v11, :cond_6

    move v11, v14

    goto :goto_5

    :cond_6
    move v11, v3

    :goto_5
    iget-object v12, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v12, v10}, Lk0/e1;->m(I)I

    move-result v12

    if-lez v12, :cond_7

    iget-object v12, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v12, v10}, Lk0/e1;->n(I)I

    move-result v12

    if-le v8, v12, :cond_7

    move v12, v14

    goto :goto_6

    :cond_7
    move v12, v3

    :goto_6
    iget-object v13, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v13, v10}, Lk0/e1;->o(I)I

    move-result v13

    if-le v8, v13, :cond_8

    move v8, v14

    goto :goto_7

    :cond_8
    move v8, v3

    :goto_7
    if-nez v12, :cond_c

    if-nez v8, :cond_c

    if-eqz v11, :cond_9

    goto/16 :goto_c

    :cond_9
    invoke-virtual {v9, v7}, Landroidx/compose/ui/text/a;->r(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;

    move-result-object v8

    sget-object v11, Landroidx/compose/ui/text/a$a;->a:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v11, v8

    const/4 v11, 0x2

    if-eq v8, v14, :cond_b

    if-ne v8, v11, :cond_a

    invoke-virtual {v9, v7, v14}, Landroidx/compose/ui/text/a;->w(IZ)F

    move-result v7

    invoke-virtual {v6}, Ll0/j;->d()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    goto :goto_8

    :cond_a
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_b
    invoke-virtual {v9, v7, v14}, Landroidx/compose/ui/text/a;->w(IZ)F

    move-result v7

    :goto_8
    invoke-virtual {v6}, Ll0/j;->d()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v7

    iget-object v12, v9, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v6}, Ll0/j;->c()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected verticalAlignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v6}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    iget v15, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v15, v13

    invoke-virtual {v6}, Ll0/j;->b()I

    move-result v13

    sub-int/2addr v15, v13

    div-int/2addr v15, v11

    int-to-float v11, v15

    invoke-virtual {v12, v10}, Lk0/e1;->j(I)F

    move-result v10

    :goto_9
    add-float/2addr v11, v10

    goto :goto_b

    :pswitch_1
    invoke-virtual {v6}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v11, v11

    invoke-virtual {v12, v10}, Lk0/e1;->j(I)F

    move-result v10

    add-float/2addr v11, v10

    invoke-virtual {v6}, Ll0/j;->b()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v11, v10

    goto :goto_b

    :pswitch_2
    invoke-virtual {v6}, Ll0/j;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v11, v11

    invoke-virtual {v12, v10}, Lk0/e1;->j(I)F

    move-result v10

    goto :goto_9

    :pswitch_3
    invoke-virtual {v12, v10}, Lk0/e1;->v(I)F

    move-result v13

    invoke-virtual {v12, v10}, Lk0/e1;->k(I)F

    move-result v10

    add-float/2addr v13, v10

    invoke-virtual {v6}, Ll0/j;->b()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v13, v10

    int-to-float v10, v11

    div-float v11, v13, v10

    goto :goto_b

    :pswitch_4
    invoke-virtual {v12, v10}, Lk0/e1;->k(I)F

    move-result v10

    invoke-virtual {v6}, Ll0/j;->b()I

    move-result v11

    :goto_a
    int-to-float v11, v11

    sub-float v11, v10, v11

    goto :goto_b

    :pswitch_5
    invoke-virtual {v12, v10}, Lk0/e1;->v(I)F

    move-result v11

    goto :goto_b

    :pswitch_6
    invoke-virtual {v12, v10}, Lk0/e1;->j(I)F

    move-result v10

    invoke-virtual {v6}, Ll0/j;->b()I

    move-result v11

    goto :goto_a

    :goto_b
    invoke-virtual {v6}, Ll0/j;->b()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v11

    new-instance v10, Ly/i;

    invoke-direct {v10, v7, v11, v8, v6}, Ly/i;-><init>(FFFF)V

    goto :goto_d

    :cond_c
    :goto_c
    move-object/from16 v10, v22

    :goto_d
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :cond_d
    move-object v0, v2

    :goto_e
    iput-object v0, v9, Landroidx/compose/ui/text/a;->g:Ljava/util/List;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxLines should be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/text/a;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;IZJ)V

    return-void
.end method

.method private final A(Landroid/text/Spanned;Ljava/lang/Class;)Z
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final B(Landroidx/compose/ui/graphics/m1;)V
    .locals 3

    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->F(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private final v(IILandroid/text/TextUtils$TruncateAt;IIIII)Lk0/e1;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v17, p2

    move-object/from16 v6, p3

    move/from16 v12, p4

    move/from16 v16, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    iget-object v2, v0, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->getWidth()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v4

    iget-object v1, v0, Landroidx/compose/ui/text/a;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j()I

    move-result v7

    iget-object v1, v0, Landroidx/compose/ui/text/a;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h()Lk0/g0;

    move-result-object v20

    iget-object v1, v0, Landroidx/compose/ui/text/a;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i()Landroidx/compose/ui/text/d0;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/ui/text/platform/c;->b(Landroidx/compose/ui/text/d0;)Z

    move-result v10

    new-instance v23, Lk0/e1;

    move-object/from16 v1, v23

    const v21, 0x30080

    const/16 v22, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v22}, Lk0/e1;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IFFZZIIIIII[I[ILk0/g0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v23
.end method

.method private final y(Lk0/e1;)[Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
    .locals 4

    invoke-virtual {p1}, Lk0/e1;->C()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lk0/e1;->C()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    invoke-direct {p0, v0, v3}, Landroidx/compose/ui/text/a;->A(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lk0/e1;->C()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p1}, Lk0/e1;->C()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    return-object p1
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a()F

    move-result v0

    return v0
.end method

.method public b(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->p(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->x(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_0
    return-object p1
.end method

.method public c(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->v(I)F

    move-result p1

    return p1
.end method

.method public d(I)Ly/i;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lk0/e1;->z(Lk0/e1;IZILjava/lang/Object;)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v1, p1}, Lk0/e1;->p(I)I

    move-result p1

    new-instance v1, Ly/i;

    iget-object v2, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v2, p1}, Lk0/e1;->v(I)F

    move-result v2

    iget-object v3, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v3, p1}, Lk0/e1;->k(I)F

    move-result p1

    invoke-direct {v1, v0, v2, v0, p1}, Ly/i;-><init>(FFFF)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/a;->x(I)F

    move-result v0

    return v0
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->u(I)I

    move-result p1

    return p1
.end method

.method public g(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {p2, p1}, Lk0/e1;->w(I)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {p2, p1}, Lk0/e1;->o(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0}, Lk0/e1;->e()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getWidth()F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/a;->d:J

    invoke-static {v0, v1}, Lo0/b;->l(J)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0}, Lk0/e1;->l()I

    move-result v0

    return v0
.end method

.method public i(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->t(I)F

    move-result p1

    return p1
.end method

.method public j(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/j1;FLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->getHeight()F

    move-result v3

    invoke-static {v2, v3}, Ly/n;->a(FF)J

    move-result-wide v2

    invoke-virtual {v1, p2, v2, v3, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/j1;JF)V

    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h(Landroidx/compose/ui/graphics/z4;)V

    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->i(Landroidx/compose/ui/text/style/i;)V

    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Lz/h;)V

    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(I)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/a;->B(Landroidx/compose/ui/graphics/m1;)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(I)V

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0}, Lk0/e1;->c()Z

    move-result v0

    return v0
.end method

.method public l(F)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lk0/e1;->q(I)I

    move-result p1

    return p1
.end method

.method public m(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->s(I)F

    move-result p1

    return p1
.end method

.method public n(J[FI)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->j(J)I

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/text/b0;->i(J)I

    move-result p1

    invoke-virtual {v0, v1, p1, p3, p4}, Lk0/e1;->a(II[FI)V

    return-void
.end method

.method public o()F
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/a;->x(I)F

    move-result v0

    return v0
.end method

.method public p(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->p(I)I

    move-result p1

    return p1
.end method

.method public q(Landroidx/compose/ui/graphics/m1;JLandroidx/compose/ui/graphics/z4;Landroidx/compose/ui/text/style/i;Lz/h;I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(J)V

    invoke-virtual {v1, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->h(Landroidx/compose/ui/graphics/z4;)V

    invoke-virtual {v1, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->i(Landroidx/compose/ui/text/style/i;)V

    invoke-virtual {v1, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Lz/h;)V

    invoke-virtual {v1, p7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(I)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/a;->B(Landroidx/compose/ui/graphics/m1;)V

    invoke-virtual {p0}, Landroidx/compose/ui/text/a;->z()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(I)V

    return-void
.end method

.method public r(I)Landroidx/compose/ui/text/style/ResolvedTextDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->E(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Rtl:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/text/style/ResolvedTextDirection;->Ltr:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    :goto_0
    return-object p1
.end method

.method public s(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->k(I)F

    move-result p1

    return p1
.end method

.method public t(I)Ly/i;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->b(I)Landroid/graphics/RectF;

    move-result-object p1

    new-instance v0, Ly/i;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, p1}, Ly/i;-><init>(FFFF)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offset("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0,"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/compose/ui/text/a;->f:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->g:Ljava/util/List;

    return-object v0
.end method

.method public w(IZ)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-static {p2, p1, v2, v1, v0}, Lk0/e1;->z(Lk0/e1;IZILjava/lang/Object;)F

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-static {p2, p1, v2, v1, v0}, Lk0/e1;->B(Lk0/e1;IZILjava/lang/Object;)F

    move-result p1

    :goto_0
    return p1
.end method

.method public x(I)F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->e:Lk0/e1;

    invoke-virtual {v0, p1}, Lk0/e1;->j(I)F

    move-result p1

    return p1
.end method

.method public final z()Landroidx/compose/ui/text/platform/AndroidTextPaint;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/a;->a:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k()Landroidx/compose/ui/text/platform/AndroidTextPaint;

    move-result-object v0

    return-object v0
.end method
