.class Lcom/google/common/collect/g3$c;
.super Lcom/google/common/collect/j2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/g3;->n(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Iterable;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/Iterable;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g3$c;->b:Ljava/lang/Iterable;

    iput p2, p0, Lcom/google/common/collect/g3$c;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/j2;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/g3$c;->b:Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/google/common/collect/g3$c;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/g3$c;->c:I

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;I)I

    new-instance v1, Lcom/google/common/collect/g3$c$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/g3$c$a;-><init>(Lcom/google/common/collect/g3$c;Ljava/util/Iterator;)V

    return-object v1
.end method
