.class public final Lq9/d0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:[Lg9/e0;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/d0;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lg9/e0;

    iput-object p1, p0, Lq9/d0;->b:[Lg9/e0;

    return-void
.end method


# virtual methods
.method public a(JLcom/google/android/exoplayer2/util/d0;)V
    .locals 1

    iget-object v0, p0, Lq9/d0;->b:[Lg9/e0;

    invoke-static {p1, p2, p3, v0}, Lg9/c;->a(JLcom/google/android/exoplayer2/util/d0;[Lg9/e0;)V

    return-void
.end method

.method public b(Lg9/n;Lq9/i0$d;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lq9/d0;->b:[Lg9/e0;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Lq9/i0$d;->a()V

    invoke-virtual {p2}, Lq9/i0$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lg9/n;->track(II)Lg9/e0;

    move-result-object v2

    iget-object v3, p0, Lq9/d0;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/o1;

    iget-object v4, v3, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    const-string v5, "application/cea-608"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/a;->b(ZLjava/lang/Object;)V

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lq9/i0$d;->b()Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/o1$b;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/o1$b;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/o1$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/o1$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/o1;->d:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->g0(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/o1;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/o1;->D:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/o1$b;->F(I)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/exoplayer2/o1;->n:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/o1$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/o1$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/o1$b;->E()Lcom/google/android/exoplayer2/o1;

    move-result-object v3

    invoke-interface {v2, v3}, Lg9/e0;->e(Lcom/google/android/exoplayer2/o1;)V

    iget-object v3, p0, Lq9/d0;->b:[Lg9/e0;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
