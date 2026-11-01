.class public final Landroidx/compose/runtime/m2$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/m2$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/m2$a;Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/runtime/m2$a;->b(Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/m2;->k0(I)I

    move-result v3

    add-int v4, v1, v3

    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/m2;->b(Landroidx/compose/runtime/m2;I)I

    move-result v5

    invoke-static {v0, v4}, Landroidx/compose/runtime/m2;->b(Landroidx/compose/runtime/m2;I)I

    move-result v6

    sub-int v7, v6, v5

    invoke-static/range {p1 .. p2}, Landroidx/compose/runtime/m2;->a(Landroidx/compose/runtime/m2;I)Z

    move-result v8

    invoke-static {v2, v3}, Landroidx/compose/runtime/m2;->q(Landroidx/compose/runtime/m2;I)V

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->a0()I

    move-result v9

    invoke-static {v2, v7, v9}, Landroidx/compose/runtime/m2;->r(Landroidx/compose/runtime/m2;II)V

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->h(Landroidx/compose/runtime/m2;)I

    move-result v9

    if-ge v9, v4, :cond_0

    invoke-static {v0, v4}, Landroidx/compose/runtime/m2;->s(Landroidx/compose/runtime/m2;I)V

    :cond_0
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->n(Landroidx/compose/runtime/m2;)I

    move-result v9

    if-ge v9, v6, :cond_1

    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/m2;->t(Landroidx/compose/runtime/m2;II)V

    :cond_1
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->a0()I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->i(Landroidx/compose/runtime/m2;)[I

    move-result-object v11

    mul-int/lit8 v12, v10, 0x5

    mul-int/lit8 v13, v1, 0x5

    mul-int/lit8 v14, v4, 0x5

    invoke-static {v11, v9, v12, v13, v14}, Lkotlin/collections/ArraysKt;->l([I[IIII)[I

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    move-result-object v11

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->g(Landroidx/compose/runtime/m2;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->k(Landroidx/compose/runtime/m2;)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v11, v12, v5, v6}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->c0()I

    move-result v6

    invoke-static {v9, v10, v6}, Landroidx/compose/runtime/l2;->A([III)V

    sub-int v13, v10, v1

    add-int v14, v10, v3

    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    move-result v15

    sub-int v15, v12, v15

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->m(Landroidx/compose/runtime/m2;)I

    move-result v16

    move/from16 v17, v8

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->l(Landroidx/compose/runtime/m2;)I

    move-result v8

    array-length v11, v11

    move/from16 v18, v12

    move/from16 v12, v16

    move/from16 v16, v5

    move v5, v10

    :goto_0
    const/16 v19, 0x0

    if-ge v5, v14, :cond_5

    if-eq v5, v10, :cond_2

    invoke-static {v9, v5}, Landroidx/compose/runtime/l2;->s([II)I

    move-result v20

    move/from16 v21, v14

    add-int v14, v20, v13

    invoke-static {v9, v5, v14}, Landroidx/compose/runtime/l2;->A([III)V

    goto :goto_1

    :cond_2
    move/from16 v21, v14

    :goto_1
    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/m2;->c(Landroidx/compose/runtime/m2;[II)I

    move-result v14

    add-int/2addr v14, v15

    if-ge v12, v5, :cond_3

    :goto_2
    move/from16 v20, v15

    move/from16 v15, v19

    goto :goto_3

    :cond_3
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->n(Landroidx/compose/runtime/m2;)I

    move-result v19

    goto :goto_2

    :goto_3
    invoke-static {v2, v14, v15, v8, v11}, Landroidx/compose/runtime/m2;->e(Landroidx/compose/runtime/m2;IIII)I

    move-result v14

    invoke-static {v9, v5, v14}, Landroidx/compose/runtime/l2;->w([III)V

    if-ne v5, v12, :cond_4

    add-int/lit8 v12, v12, 0x1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, v20

    move/from16 v14, v21

    goto :goto_0

    :cond_5
    move/from16 v21, v14

    invoke-static {v2, v12}, Landroidx/compose/runtime/m2;->z(Landroidx/compose/runtime/m2;I)V

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->d0()I

    move-result v8

    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/l2;->o(Ljava/util/ArrayList;II)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->d0()I

    move-result v11

    invoke-static {v8, v4, v11}, Landroidx/compose/runtime/l2;->o(Ljava/util/ArrayList;II)I

    move-result v4

    if-ge v5, v4, :cond_7

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v11, Ljava/util/ArrayList;

    sub-int v12, v4, v5

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v5

    :goto_4
    if-ge v12, v4, :cond_6

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/runtime/c;

    invoke-virtual {v14}, Landroidx/compose/runtime/c;->a()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v14, v15}, Landroidx/compose/runtime/c;->c(I)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->a0()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->d0()I

    move-result v14

    invoke-static {v12, v13, v14}, Landroidx/compose/runtime/l2;->o(Ljava/util/ArrayList;II)I

    move-result v12

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->f(Landroidx/compose/runtime/m2;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v12, v11}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v8, v5, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_5

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v11

    :goto_5
    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/m2;->o(Landroidx/compose/runtime/m2;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->o(Landroidx/compose/runtime/m2;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v8, v19

    :goto_6
    if-ge v8, v5, :cond_8

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/c;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/l0;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/runtime/m2;->c0()I

    invoke-static {v2, v6}, Landroidx/compose/runtime/m2;->B(Landroidx/compose/runtime/m2;I)Landroidx/compose/runtime/l0;

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p2}, Landroidx/compose/runtime/m2;->E0(I)I

    move-result v5

    if-nez p6, :cond_9

    goto :goto_7

    :cond_9
    if-eqz p4, :cond_d

    if-ltz v5, :cond_a

    move/from16 v19, v4

    :cond_a
    if-eqz v19, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->g1()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->a0()I

    move-result v3

    sub-int/2addr v5, v3

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/m2;->D(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->g1()V

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->a0()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/m2;->D(I)V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->L0()Z

    move-result v1

    if-eqz v19, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->W0()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->T()I

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->W0()V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/m2;->T()I

    :cond_c
    move/from16 v19, v1

    goto :goto_7

    :cond_d
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/m2;->u(Landroidx/compose/runtime/m2;II)Z

    move-result v19

    sub-int/2addr v1, v4

    move/from16 v3, v16

    invoke-static {v0, v3, v7, v1}, Landroidx/compose/runtime/m2;->v(Landroidx/compose/runtime/m2;III)V

    :goto_7
    if-eqz v19, :cond_e

    const-string v0, "Unexpectedly removed anchors"

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_e
    invoke-static/range {p3 .. p3}, Landroidx/compose/runtime/m2;->j(Landroidx/compose/runtime/m2;)I

    move-result v0

    invoke-static {v9, v10}, Landroidx/compose/runtime/l2;->m([II)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    invoke-static {v9, v10}, Landroidx/compose/runtime/l2;->p([II)I

    move-result v4

    :goto_8
    add-int/2addr v0, v4

    invoke-static {v2, v0}, Landroidx/compose/runtime/m2;->y(Landroidx/compose/runtime/m2;I)V

    if-eqz p5, :cond_10

    move/from16 v10, v21

    invoke-static {v2, v10}, Landroidx/compose/runtime/m2;->w(Landroidx/compose/runtime/m2;I)V

    add-int v12, v18, v7

    invoke-static {v2, v12}, Landroidx/compose/runtime/m2;->x(Landroidx/compose/runtime/m2;I)V

    :cond_10
    if-eqz v17, :cond_11

    invoke-static {v2, v6}, Landroidx/compose/runtime/m2;->C(Landroidx/compose/runtime/m2;I)V

    :cond_11
    return-object v11
.end method

.method static synthetic c(Landroidx/compose/runtime/m2$a;Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/m2$a;->b(Landroidx/compose/runtime/m2;ILandroidx/compose/runtime/m2;ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
