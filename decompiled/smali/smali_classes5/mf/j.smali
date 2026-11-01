.class public abstract Lmf/j;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lnf/a;

.field protected final b:Lcom/tencent/tinker/android/dex/j;

.field private final c:Lof/c;


# direct methods
.method public constructor <init>(Lnf/a;Lcom/tencent/tinker/android/dex/j;Lof/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/j;->a:Lnf/a;

    iput-object p2, p0, Lmf/j;->b:Lcom/tencent/tinker/android/dex/j;

    iput-object p3, p0, Lmf/j;->c:Lof/c;

    return-void
.end method

.method private b(Lcom/tencent/tinker/android/dex/j$h;I[I[I[I)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v11, 0x1

    array-length v12, v8

    array-length v13, v9

    array-length v14, v10

    add-int v0, v7, v13

    sub-int v15, v0, v12

    const/16 v16, 0x0

    move/from16 v1, v16

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-lt v5, v7, :cond_2

    if-ge v4, v15, :cond_0

    goto :goto_1

    :cond_0
    if-ne v3, v13, :cond_1

    if-ne v1, v12, :cond_1

    if-ne v2, v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmf/j;->h()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v16

    aput-object v4, v8, v11

    const/4 v3, 0x2

    aput-object v1, v8, v3

    const/4 v1, 0x3

    aput-object v5, v8, v1

    const/4 v1, 0x4

    aput-object v2, v8, v1

    const/4 v1, 0x5

    aput-object v7, v8, v1

    const-string v1, "bad patch operation sequence. addCounter: %d, addCount: %d, delCounter: %d, delCount: %d, replaceCounter: %d, replaceCount:%d"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-ge v3, v13, :cond_3

    aget v0, v9, v3

    if-ne v0, v4, :cond_3

    iget-object v0, v6, Lmf/j;->a:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->a()Lff/a;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/j;->g(Lff/a;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/j;->k(Ljava/lang/Comparable;)I

    add-int/2addr v3, v11

    :goto_2
    add-int/2addr v4, v11

    goto :goto_0

    :cond_3
    if-ge v2, v14, :cond_4

    aget v0, v10, v2

    if-ne v0, v4, :cond_4

    iget-object v0, v6, Lmf/j;->a:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->a()Lff/a;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/j;->g(Lff/a;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/j;->k(Ljava/lang/Comparable;)I

    add-int/2addr v2, v11

    goto :goto_2

    :cond_4
    invoke-static {v8, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_5

    invoke-virtual/range {p0 .. p1}, Lmf/j;->g(Lff/a;)Ljava/lang/Comparable;

    move-result-object v0

    iget-object v11, v6, Lmf/j;->c:Lof/c;

    invoke-direct {v6, v5, v0}, Lmf/j;->d(ILjava/lang/Comparable;)I

    move-result v0

    invoke-virtual {v6, v11, v5, v0}, Lmf/j;->f(Lof/c;II)V

    const/4 v0, 0x1

    add-int/2addr v5, v0

    add-int/2addr v1, v0

    :goto_3
    move v11, v0

    goto/16 :goto_0

    :cond_5
    move v0, v11

    invoke-static {v10, v5}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v11

    if-ltz v11, :cond_6

    invoke-virtual/range {p0 .. p1}, Lmf/j;->g(Lff/a;)Ljava/lang/Comparable;

    move-result-object v11

    iget-object v0, v6, Lmf/j;->c:Lof/c;

    invoke-direct {v6, v5, v11}, Lmf/j;->d(ILjava/lang/Comparable;)I

    move-result v11

    invoke-virtual {v6, v0, v5, v11}, Lmf/j;->f(Lof/c;II)V

    const/4 v0, 0x1

    add-int/2addr v5, v0

    goto :goto_3

    :cond_6
    if-ge v5, v7, :cond_7

    iget-object v0, v6, Lmf/j;->c:Lof/c;

    invoke-virtual/range {p0 .. p1}, Lmf/j;->g(Lff/a;)Ljava/lang/Comparable;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Lmf/j;->a(Lof/a;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/j;->k(Ljava/lang/Comparable;)I

    move-result v11

    move/from16 v17, v1

    iget-object v1, v6, Lmf/j;->c:Lof/c;

    invoke-direct {v6, v5, v0}, Lmf/j;->d(ILjava/lang/Comparable;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v19, v2

    move v2, v5

    move/from16 v20, v3

    move/from16 v3, v18

    move/from16 v18, v4

    move/from16 v21, v5

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lmf/j;->j(Lof/c;IIII)V

    const/4 v0, 0x1

    add-int/lit8 v5, v21, 0x1

    add-int/lit8 v4, v18, 0x1

    move v11, v0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_0

    :cond_7
    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v18, v4

    move/from16 v21, v5

    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private d(ILjava/lang/Comparable;)I
    .locals 1

    instance-of v0, p2, Lcom/tencent/tinker/android/dex/v$a$a;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/tencent/tinker/android/dex/v$a$a;

    iget p1, p2, Lcom/tencent/tinker/android/dex/v$a$a;->a:I

    :cond_0
    return p1
.end method

.method private i(I)[I
    .locals 4

    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v3, p0, Lmf/j;->a:Lnf/a;

    invoke-virtual {v3}, Lnf/a;->a()Lff/a;

    move-result-object v3

    invoke-virtual {v3}, Lff/a;->D()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a(Lof/a;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    return-object p2
.end method

.method public c()V
    .locals 7

    iget-object v0, p0, Lmf/j;->a:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->a()Lff/a;

    move-result-object v0

    invoke-virtual {v0}, Lff/a;->H()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/j;->i(I)[I

    move-result-object v4

    iget-object v0, p0, Lmf/j;->a:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->a()Lff/a;

    move-result-object v0

    invoke-virtual {v0}, Lff/a;->H()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/j;->i(I)[I

    move-result-object v5

    iget-object v0, p0, Lmf/j;->a:Lnf/a;

    invoke-virtual {v0}, Lnf/a;->a()Lff/a;

    move-result-object v0

    invoke-virtual {v0}, Lff/a;->H()I

    move-result v0

    invoke-direct {p0, v0}, Lmf/j;->i(I)[I

    move-result-object v6

    iget-object v0, p0, Lmf/j;->b:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {p0, v0}, Lmf/j;->e(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/v$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/j;->b:Lcom/tencent/tinker/android/dex/j;

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/android/dex/j;->m(Lcom/tencent/tinker/android/dex/v$a;)Lcom/tencent/tinker/android/dex/j$h;

    move-result-object v1

    iget v0, v0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    move v3, v0

    move-object v2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move v3, v1

    :goto_0
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lmf/j;->b(Lcom/tencent/tinker/android/dex/j$h;I[I[I[I)V

    return-void
.end method

.method protected abstract e(Lcom/tencent/tinker/android/dex/j;)Lcom/tencent/tinker/android/dex/v$a;
.end method

.method protected f(Lof/c;II)V
    .locals 0

    return-void
.end method

.method protected abstract g(Lff/a;)Ljava/lang/Comparable;
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected j(Lof/c;IIII)V
    .locals 0

    return-void
.end method

.method protected abstract k(Ljava/lang/Comparable;)I
.end method
