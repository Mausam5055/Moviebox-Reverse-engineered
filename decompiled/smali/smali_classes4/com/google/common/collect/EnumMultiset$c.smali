.class abstract Lcom/google/common/collect/EnumMultiset$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:Lcom/google/common/collect/EnumMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/EnumMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    return-void
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 2

    :goto_0
    iget v0, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    iget-object v1, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v1}, Lcom/google/common/collect/EnumMultiset;->access$000(Lcom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/EnumMultiset$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/EnumMultiset$c;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/EnumMultiset$c;->a:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    iget v0, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/e2;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    aget v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$210(Lcom/google/common/collect/EnumMultiset;)I

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/EnumMultiset;->access$322(Lcom/google/common/collect/EnumMultiset;J)J

    iget-object v0, p0, Lcom/google/common/collect/EnumMultiset$c;->c:Lcom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lcom/google/common/collect/EnumMultiset;->access$100(Lcom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    aput v1, v0, v2

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/EnumMultiset$c;->b:I

    return-void
.end method
