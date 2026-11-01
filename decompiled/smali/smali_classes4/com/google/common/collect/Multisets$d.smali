.class abstract Lcom/google/common/collect/Multisets$d;
.super Lcom/google/common/collect/Sets$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/Sets$e;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/l3;
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/common/collect/l3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/l3$a;

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->a()Lcom/google/common/collect/l3;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/l3;->count(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/common/collect/l3$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/l3$a;

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$d;->a()Lcom/google/common/collect/l3;

    move-result-object v2

    invoke-interface {v2, v0, p1, v1}, Lcom/google/common/collect/l3;->setCount(Ljava/lang/Object;II)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method
