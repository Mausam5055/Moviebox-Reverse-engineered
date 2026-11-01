.class public final Ls/c;
.super Ls/h;


# instance fields
.field private final a:Ls/g;

.field private final b:Ls/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ls/h;-><init>()V

    new-instance v0, Ls/g;

    invoke-direct {v0}, Ls/g;-><init>()V

    iput-object v0, p0, Ls/c;->a:Ls/g;

    new-instance v0, Ls/g;

    invoke-direct {v0}, Ls/g;-><init>()V

    iput-object v0, p0, Ls/c;->b:Ls/g;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ls/c;->b:Ls/g;

    invoke-virtual {v0}, Ls/g;->m()V

    iget-object v0, p0, Ls/c;->a:Ls/g;

    invoke-virtual {v0}, Ls/g;->m()V

    return-void
.end method

.method public final b(Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/c;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Ls/c;->a:Ls/g;

    sget-object v4, Ls/d$n;->c:Ls/d$n;

    invoke-virtual {v3, v4}, Ls/g;->y(Ls/d;)V

    invoke-static {v3}, Ls/g$c;->a(Ls/g;)Ls/g;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ls/d$t;->a(I)I

    move-result v7

    move-object/from16 v8, p1

    invoke-static {v5, v7, v8}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    invoke-static {v6}, Ls/d$q;->a(I)I

    move-result v7

    invoke-static {v5, v7, v1}, Ls/g$c;->c(Ls/g;II)V

    const/4 v7, 0x1

    invoke-static {v7}, Ls/d$t;->a(I)I

    move-result v8

    invoke-static {v5, v8, v2}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    invoke-static {v3}, Ls/g;->f(Ls/g;)I

    move-result v5

    invoke-virtual {v4}, Ls/d;->b()I

    move-result v8

    invoke-static {v3, v8}, Ls/g;->a(Ls/g;I)I

    move-result v8

    if-ne v5, v8, :cond_0

    invoke-static {v3}, Ls/g;->g(Ls/g;)I

    move-result v5

    invoke-virtual {v4}, Ls/d;->d()I

    move-result v8

    invoke-static {v3, v8}, Ls/g;->a(Ls/g;I)I

    move-result v8

    if-ne v5, v8, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const-string v8, ")."

    const-string v9, " object arguments ("

    const-string v10, ") and "

    const-string v11, " int arguments ("

    const-string v12, ". Not all arguments were provided. Missing "

    const-string v13, "Error while pushing "

    const-string v14, "StringBuilder().apply(builderAction).toString()"

    const-string v15, ", "

    if-nez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ls/d;->b()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_3

    shl-int v17, v7, v2

    invoke-static {v3}, Ls/g;->f(Ls/g;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_2

    if-lez v1, :cond_1

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v2}, Ls/d$q;->a(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ls/d;->e(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ls/d;->d()I

    move-result v6

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    const/16 v17, 0x1

    shl-int v18, v17, v7

    invoke-static {v3}, Ls/g;->g(Ls/g;)I

    move-result v17

    and-int v17, v18, v17

    if-eqz v17, :cond_5

    if-lez v1, :cond_4

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    move-object/from16 v17, v3

    invoke-static {v7}, Ls/d$t;->a(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v17, v3

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Ls/c;->b:Ls/g;

    sget-object v2, Ls/d$u;->c:Ls/d$u;

    invoke-virtual {v1, v2}, Ls/g;->y(Ls/d;)V

    invoke-static {v1}, Ls/g$c;->a(Ls/g;)Ls/g;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ls/d$q;->a(I)I

    move-result v5

    move/from16 v6, p2

    invoke-static {v3, v5, v6}, Ls/g$c;->c(Ls/g;II)V

    invoke-static {v4}, Ls/d$t;->a(I)I

    move-result v5

    move-object/from16 v6, p3

    invoke-static {v3, v5, v6}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    invoke-static {v1}, Ls/g;->f(Ls/g;)I

    move-result v3

    invoke-virtual {v2}, Ls/d;->b()I

    move-result v5

    invoke-static {v1, v5}, Ls/g;->a(Ls/g;I)I

    move-result v5

    if-ne v3, v5, :cond_8

    invoke-static {v1}, Ls/g;->g(Ls/g;)I

    move-result v3

    invoke-virtual {v2}, Ls/d;->d()I

    move-result v5

    invoke-static {v1, v5}, Ls/g;->a(Ls/g;I)I

    move-result v5

    if-ne v3, v5, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    move v3, v4

    :goto_4
    if-nez v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ls/d;->b()I

    move-result v5

    move v6, v4

    move v7, v6

    :goto_5
    if-ge v6, v5, :cond_b

    const/16 v16, 0x1

    shl-int v17, v16, v6

    invoke-static {v1}, Ls/g;->f(Ls/g;)I

    move-result v16

    and-int v16, v17, v16

    if-eqz v16, :cond_a

    if-lez v7, :cond_9

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-static {v6}, Ls/d$q;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ls/d;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :cond_a
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ls/d;->d()I

    move-result v5

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_e

    const/16 v16, 0x1

    shl-int v17, v16, v6

    invoke-static {v1}, Ls/g;->g(Ls/g;)I

    move-result v18

    and-int v17, v17, v18

    if-eqz v17, :cond_d

    if-lez v7, :cond_c

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    move-object/from16 v17, v1

    invoke-static {v6}, Ls/d$t;->a(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v17, v1

    :goto_7
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v17

    goto :goto_6

    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Ls/c;->b:Ls/g;

    invoke-virtual {v0}, Ls/g;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Cannot end node insertion, there are no pending operations that can be realized."

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ls/c;->b:Ls/g;

    iget-object v1, p0, Ls/c;->a:Ls/g;

    invoke-virtual {v0, v1}, Ls/g;->w(Ls/g;)V

    return-void
.end method

.method public final d(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 1

    iget-object v0, p0, Ls/c;->b:Ls/g;

    invoke-virtual {v0}, Ls/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?"

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ls/c;->a:Ls/g;

    invoke-virtual {v0, p1, p2, p3}, Ls/g;->r(Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Ls/c;->a:Ls/g;

    invoke-virtual {v0}, Ls/g;->t()Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 11

    iget-object v0, p0, Ls/c;->a:Ls/g;

    sget-object v1, Ls/d$e0;->c:Ls/d$e0;

    invoke-virtual {v0, v1}, Ls/g;->y(Ls/d;)V

    invoke-static {v0}, Ls/g$c;->a(Ls/g;)Ls/g;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ls/d$t;->a(I)I

    move-result v4

    invoke-static {v2, v4, p1}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-static {p1}, Ls/d$t;->a(I)I

    move-result v4

    const-string v5, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/TypeIntrinsics;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, p2}, Ls/g$c;->d(Ls/g;ILjava/lang/Object;)V

    invoke-static {v0}, Ls/g;->f(Ls/g;)I

    move-result p2

    invoke-virtual {v1}, Ls/d;->b()I

    move-result v2

    invoke-static {v0, v2}, Ls/g;->a(Ls/g;I)I

    move-result v2

    if-ne p2, v2, :cond_0

    invoke-static {v0}, Ls/g;->g(Ls/g;)I

    move-result p2

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v2

    invoke-static {v0, v2}, Ls/g;->a(Ls/g;I)I

    move-result v2

    if-ne p2, v2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v3

    :goto_0
    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ls/d;->b()I

    move-result v2

    move v4, v3

    move v5, v4

    :goto_1
    const-string v6, ", "

    if-ge v4, v2, :cond_3

    shl-int v7, p1, v4

    invoke-static {v0}, Ls/g;->f(Ls/g;)I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    if-lez v5, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v4}, Ls/d$q;->a(I)I

    move-result v6

    invoke-virtual {v1, v6}, Ls/d;->e(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ls/d;->d()I

    move-result v7

    move v8, v3

    :goto_2
    if-ge v3, v7, :cond_6

    shl-int v9, p1, v3

    invoke-static {v0}, Ls/g;->g(Ls/g;)I

    move-result v10

    and-int/2addr v9, v10

    if-eqz v9, :cond_5

    if-lez v5, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v3}, Ls/d$t;->a(I)I

    move-result v9

    invoke-virtual {v1, v9}, Ls/d;->f(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while pushing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Not all arguments were provided. Missing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " int arguments ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") and "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " object arguments ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
