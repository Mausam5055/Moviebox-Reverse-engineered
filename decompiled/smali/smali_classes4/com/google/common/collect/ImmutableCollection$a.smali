.class abstract Lcom/google/common/collect/ImmutableCollection$a;
.super Lcom/google/common/collect/ImmutableCollection$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lcom/google/common/collect/e2;->b(ILjava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    return-void
.end method

.method private i(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableCollection$b;->f(II)I

    move-result p1

    array-length v0, v0

    if-gt p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableCollection$a;->h([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 2

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableCollection$a;->i(I)V

    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iget-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 3

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->i(I)V

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method final h([Ljava/lang/Object;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/common/collect/n3;->c([Ljava/lang/Object;I)[Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableCollection$a;->i(I)V

    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    return-void
.end method
