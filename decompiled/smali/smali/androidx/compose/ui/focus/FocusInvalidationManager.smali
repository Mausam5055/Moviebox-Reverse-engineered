.class public final Landroidx/compose/ui/focus/FocusInvalidationManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkotlin/jvm/functions/Function1;

.field private final b:Lkotlin/jvm/functions/Function0;

.field private final c:Landroidx/collection/MutableScatterSet;

.field private final d:Landroidx/collection/MutableScatterSet;

.field private final e:Landroidx/collection/MutableScatterSet;

.field private final f:Landroidx/collection/MutableScatterSet;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->b:Lkotlin/jvm/functions/Function0;

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    invoke-static {}, Landroidx/collection/w0;->a()Landroidx/collection/MutableScatterSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->f:Landroidx/collection/MutableScatterSet;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/focus/FocusInvalidationManager;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/focus/FocusInvalidationManager;->c()V

    return-void
.end method

.method private final c()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    const-string v4, "visitChildren called on an unattached node"

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v15, 0x8

    const/4 v14, 0x1

    if-ltz v3, :cond_1a

    const/4 v11, 0x0

    :goto_0
    aget-wide v5, v1, v11

    not-long v8, v5

    shl-long v7, v8, v10

    and-long/2addr v7, v5

    and-long/2addr v7, v12

    cmp-long v7, v7, v12

    if-eqz v7, :cond_19

    sub-int v7, v11, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_18

    const-wide/16 v22, 0xff

    and-long v24, v5, v22

    const-wide/16 v20, 0x80

    cmp-long v9, v24, v20

    if-gez v9, :cond_17

    shl-int/lit8 v9, v11, 0x3

    add-int/2addr v9, v8

    aget-object v9, v2, v9

    check-cast v9, Landroidx/compose/ui/focus/m;

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v19, 0x400

    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v24

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v25

    move-object/from16 v12, v25

    const/4 v13, 0x0

    :goto_2
    if-eqz v12, :cond_8

    instance-of v10, v12, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v10, :cond_1

    check-cast v12, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v10, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v10, v12}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v27, v1

    goto :goto_7

    :cond_1
    invoke-virtual {v12}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int v10, v10, v24

    if-eqz v10, :cond_0

    instance-of v10, v12, Landroidx/compose/ui/node/i;

    if-eqz v10, :cond_0

    move-object v10, v12

    check-cast v10, Landroidx/compose/ui/node/i;

    invoke-virtual {v10}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v10

    const/4 v15, 0x0

    :goto_3
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->f1()I

    move-result v26

    and-int v26, v26, v24

    if-eqz v26, :cond_5

    add-int/lit8 v15, v15, 0x1

    if-ne v15, v14, :cond_2

    move-object/from16 v27, v1

    move-object v12, v10

    goto :goto_5

    :cond_2
    if-nez v13, :cond_3

    new-instance v13, Landroidx/compose/runtime/collection/b;

    move-object/from16 v27, v1

    const/16 v14, 0x10

    new-array v1, v14, [Landroidx/compose/ui/f$c;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    goto :goto_4

    :cond_3
    move-object/from16 v27, v1

    :goto_4
    if-eqz v12, :cond_4

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    :cond_4
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    move-object/from16 v27, v1

    :goto_5
    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v10

    move-object/from16 v1, v27

    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v27, v1

    move v1, v14

    if-ne v15, v1, :cond_7

    move v14, v1

    move-object/from16 v1, v27

    const/4 v10, 0x7

    :goto_6
    const/16 v15, 0x8

    goto :goto_2

    :cond_7
    :goto_7
    invoke-static {v13}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v12

    move-object/from16 v1, v27

    const/4 v10, 0x7

    const/4 v14, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v27, v1

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Landroidx/compose/runtime/collection/b;

    const/16 v10, 0x10

    new-array v12, v10, [Landroidx/compose/ui/f$c;

    const/4 v10, 0x0

    invoke-direct {v1, v12, v10}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v10

    if-nez v10, :cond_9

    invoke-interface {v9}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_a
    :goto_8
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v1, v9}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/f$c;

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->a1()I

    move-result v10

    and-int v10, v10, v24

    if-nez v10, :cond_b

    invoke-static {v1, v9}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_8

    :cond_b
    :goto_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int v10, v10, v24

    if-eqz v10, :cond_13

    const/4 v10, 0x0

    :goto_a
    if-eqz v9, :cond_a

    instance-of v12, v9, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v12, :cond_c

    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-object v12, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v12, v9}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_c
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v12

    and-int v12, v12, v24

    if-eqz v12, :cond_12

    instance-of v12, v9, Landroidx/compose/ui/node/i;

    if-eqz v12, :cond_12

    move-object v12, v9

    check-cast v12, Landroidx/compose/ui/node/i;

    invoke-virtual {v12}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v12

    const/4 v13, 0x0

    :goto_b
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Landroidx/compose/ui/f$c;->f1()I

    move-result v14

    and-int v14, v14, v24

    if-eqz v14, :cond_10

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    move-object v9, v12

    goto :goto_c

    :cond_d
    if-nez v10, :cond_e

    new-instance v10, Landroidx/compose/runtime/collection/b;

    const/16 v14, 0x10

    new-array v15, v14, [Landroidx/compose/ui/f$c;

    const/4 v14, 0x0

    invoke-direct {v10, v15, v14}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v10, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    :cond_f
    invoke-virtual {v10, v12}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_10
    :goto_c
    invoke-virtual {v12}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v12

    goto :goto_b

    :cond_11
    const/4 v12, 0x1

    if-ne v13, v12, :cond_12

    goto :goto_a

    :cond_12
    :goto_d
    invoke-static {v10}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_a

    :cond_13
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v9

    goto :goto_9

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    move-object/from16 v27, v1

    :cond_16
    const/16 v1, 0x8

    goto :goto_e

    :cond_17
    move-object/from16 v27, v1

    move v1, v15

    :goto_e
    shr-long/2addr v5, v1

    add-int/lit8 v8, v8, 0x1

    move v15, v1

    move-object/from16 v1, v27

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_18
    move-object/from16 v27, v1

    move v1, v15

    if-ne v7, v1, :cond_1a

    goto :goto_f

    :cond_19
    move-object/from16 v27, v1

    :goto_f
    if-eq v11, v3, :cond_1a

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v27

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x1

    const/16 v15, 0x8

    goto/16 :goto_0

    :cond_1a
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->m()V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_3f

    const/4 v14, 0x0

    :goto_10
    aget-wide v5, v1, v14

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3e

    sub-int v7, v14, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v15, v7, 0x8

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v15, :cond_3d

    const-wide/16 v8, 0xff

    and-long v10, v5, v8

    const-wide/16 v8, 0x80

    cmp-long v10, v10, v8

    if-gez v10, :cond_3c

    shl-int/lit8 v8, v14, 0x3

    add-int/2addr v8, v7

    aget-object v8, v2, v8

    check-cast v8, Landroidx/compose/ui/focus/c;

    invoke-interface {v8}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v9

    if-nez v9, :cond_1b

    sget-object v9, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    invoke-interface {v8, v9}, Landroidx/compose/ui/focus/c;->S0(Landroidx/compose/ui/focus/r;)V

    goto/16 :goto_28

    :cond_1b
    const/16 v9, 0x400

    invoke-static {v9}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v10

    invoke-interface {v8}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v19, 0x0

    const/16 v24, 0x0

    :goto_12
    if-eqz v11, :cond_26

    instance-of v9, v11, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v9, :cond_1e

    check-cast v11, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v19, :cond_1c

    const/4 v12, 0x1

    :cond_1c
    iget-object v9, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v9, v11}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-object v9, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v9, v11}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :cond_1d
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move-object/from16 v19, v11

    goto/16 :goto_19

    :cond_1e
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v10

    if-eqz v9, :cond_25

    instance-of v9, v11, Landroidx/compose/ui/node/i;

    if-eqz v9, :cond_25

    move-object v9, v11

    check-cast v9, Landroidx/compose/ui/node/i;

    invoke-virtual {v9}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v9

    move-object/from16 v28, v1

    const/4 v1, 0x0

    :goto_13
    if-eqz v9, :cond_23

    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->f1()I

    move-result v29

    and-int v29, v29, v10

    if-eqz v29, :cond_22

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v29, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    move-object v11, v9

    :goto_14
    move/from16 v31, v12

    goto :goto_16

    :cond_1f
    if-nez v24, :cond_20

    new-instance v2, Landroidx/compose/runtime/collection/b;

    move/from16 v30, v1

    move/from16 v31, v12

    const/16 v1, 0x10

    new-array v12, v1, [Landroidx/compose/ui/f$c;

    const/4 v1, 0x0

    invoke-direct {v2, v12, v1}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    goto :goto_15

    :cond_20
    move/from16 v30, v1

    move/from16 v31, v12

    move-object/from16 v2, v24

    :goto_15
    if-eqz v11, :cond_21

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    :cond_21
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object/from16 v24, v2

    move/from16 v1, v30

    goto :goto_16

    :cond_22
    move-object/from16 v29, v2

    goto :goto_14

    :goto_16
    invoke-virtual {v9}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v9

    move-object/from16 v2, v29

    move/from16 v12, v31

    goto :goto_13

    :cond_23
    move-object/from16 v29, v2

    move/from16 v31, v12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v12, v31

    :goto_17
    const/16 v9, 0x400

    goto/16 :goto_12

    :cond_24
    :goto_18
    move/from16 v12, v31

    goto :goto_19

    :cond_25
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v31, v12

    goto :goto_18

    :goto_19
    invoke-static/range {v24 .. v24}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v11

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto :goto_17

    :cond_26
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move/from16 v31, v12

    invoke-interface {v8}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_3b

    new-instance v1, Landroidx/compose/runtime/collection/b;

    const/16 v2, 0x10

    new-array v9, v2, [Landroidx/compose/ui/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, v9, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-interface {v8}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v2

    if-nez v2, :cond_27

    invoke-interface {v8}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    goto :goto_1a

    :cond_27
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :goto_1a
    move/from16 v12, v31

    :cond_28
    :goto_1b
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    const/4 v9, 0x1

    sub-int/2addr v2, v9

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/b;->v(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/f$c;

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->a1()I

    move-result v9

    and-int/2addr v9, v10

    if-nez v9, :cond_2a

    invoke-static {v1, v2}, Landroidx/compose/ui/node/g;->a(Landroidx/compose/runtime/collection/b;Landroidx/compose/ui/f$c;)V

    :cond_29
    move-object/from16 v24, v1

    move/from16 v30, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_25

    :cond_2a
    :goto_1c
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v10

    if-eqz v9, :cond_35

    const/4 v9, 0x0

    :goto_1d
    if-eqz v2, :cond_28

    instance-of v11, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_2d

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v19, :cond_2b

    const/4 v12, 0x1

    :cond_2b
    iget-object v11, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v11, v2}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-object v11, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v11, v2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :cond_2c
    move-object/from16 v24, v1

    move-object/from16 v19, v2

    :goto_1e
    move/from16 v30, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_24

    :cond_2d
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v11

    and-int/2addr v11, v10

    if-eqz v11, :cond_33

    instance-of v11, v2, Landroidx/compose/ui/node/i;

    if-eqz v11, :cond_33

    move-object v11, v2

    check-cast v11, Landroidx/compose/ui/node/i;

    invoke-virtual {v11}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v11

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :goto_1f
    if-eqz v11, :cond_32

    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->f1()I

    move-result v30

    and-int v30, v30, v10

    if-eqz v30, :cond_31

    add-int/lit8 v1, v1, 0x1

    move/from16 v30, v10

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2e

    move-object v2, v11

    :goto_20
    const/4 v10, 0x0

    goto :goto_22

    :cond_2e
    if-nez v9, :cond_2f

    new-instance v9, Landroidx/compose/runtime/collection/b;

    move/from16 v17, v1

    const/16 v10, 0x10

    new-array v1, v10, [Landroidx/compose/ui/f$c;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    goto :goto_21

    :cond_2f
    move/from16 v17, v1

    const/4 v10, 0x0

    :goto_21
    if-eqz v2, :cond_30

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :cond_30
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move/from16 v1, v17

    goto :goto_22

    :cond_31
    move/from16 v30, v10

    goto :goto_20

    :goto_22
    invoke-virtual {v11}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v11

    move/from16 v10, v30

    goto :goto_1f

    :cond_32
    move/from16 v30, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v1, v11, :cond_34

    :goto_23
    move-object/from16 v1, v24

    move/from16 v10, v30

    goto :goto_1d

    :cond_33
    move-object/from16 v24, v1

    goto :goto_1e

    :cond_34
    :goto_24
    invoke-static {v9}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_23

    :cond_35
    move-object/from16 v24, v1

    move/from16 v30, v10

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v2

    move/from16 v10, v30

    goto/16 :goto_1c

    :goto_25
    move-object/from16 v1, v24

    move/from16 v10, v30

    goto/16 :goto_1b

    :cond_36
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v13, :cond_3a

    if-eqz v12, :cond_37

    invoke-static {v8}, Landroidx/compose/ui/focus/d;->a(Landroidx/compose/ui/focus/c;)Landroidx/compose/ui/focus/r;

    move-result-object v1

    goto :goto_26

    :cond_37
    if-eqz v19, :cond_38

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    if-nez v1, :cond_39

    :cond_38
    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    :cond_39
    :goto_26
    invoke-interface {v8, v1}, Landroidx/compose/ui/focus/c;->S0(Landroidx/compose/ui/focus/r;)V

    :cond_3a
    :goto_27
    const/16 v1, 0x8

    goto :goto_29

    :cond_3b
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    :goto_28
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_27

    :goto_29
    shr-long/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_11

    :cond_3d
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/16 v1, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne v15, v1, :cond_40

    goto :goto_2a

    :cond_3e
    move-object/from16 v28, v1

    move-object/from16 v29, v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_2a
    if-eq v14, v3, :cond_40

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    goto/16 :goto_10

    :cond_3f
    const/4 v10, 0x0

    :cond_40
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->m()V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->a:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_45

    move v14, v10

    :goto_2b
    aget-wide v4, v1, v14

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v11

    cmp-long v6, v6, v11

    if-eqz v6, :cond_44

    sub-int v6, v14, v3

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v15, v6, 0x8

    move v6, v10

    :goto_2c
    if-ge v6, v15, :cond_43

    const-wide/16 v16, 0xff

    and-long v18, v4, v16

    const-wide/16 v20, 0x80

    cmp-long v7, v18, v20

    if-gez v7, :cond_42

    shl-int/lit8 v7, v14, 0x3

    add-int/2addr v7, v6

    aget-object v7, v2, v7

    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v7}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusTargetNode;->P1()V

    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusTargetNode;->K1()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v13

    if-ne v9, v13, :cond_41

    iget-object v9, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v9, v7}, Landroidx/collection/ScatterSet;->a(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    :cond_41
    invoke-static {v7}, Landroidx/compose/ui/focus/d;->c(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_42
    const/16 v7, 0x8

    shr-long/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_43
    const/16 v7, 0x8

    const-wide/16 v16, 0xff

    const-wide/16 v20, 0x80

    if-ne v15, v7, :cond_45

    goto :goto_2d

    :cond_44
    const/16 v7, 0x8

    const-wide/16 v16, 0xff

    const-wide/16 v20, 0x80

    :goto_2d
    if-eq v14, v3, :cond_45

    add-int/lit8 v14, v14, 0x1

    goto :goto_2b

    :cond_45
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->m()V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->f:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->m()V

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->d()Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "Unprocessed FocusProperties nodes"

    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_46
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->d()Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "Unprocessed FocusEvent nodes"

    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_47
    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->d()Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "Unprocessed FocusTarget nodes"

    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_48
    return-void
.end method

.method private final d(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->h(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p1}, Landroidx/collection/ScatterSet;->c()I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p2}, Landroidx/collection/ScatterSet;->c()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    invoke-virtual {p2}, Landroidx/collection/ScatterSet;->c()I

    move-result p2

    add-int/2addr p1, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->a:Lkotlin/jvm/functions/Function1;

    new-instance p2, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e(Landroidx/compose/ui/focus/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->d:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->d(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Landroidx/compose/ui/focus/m;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->e:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->d(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/focus/FocusInvalidationManager;->c:Landroidx/collection/MutableScatterSet;

    invoke-direct {p0, v0, p1}, Landroidx/compose/ui/focus/FocusInvalidationManager;->d(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)V

    return-void
.end method
