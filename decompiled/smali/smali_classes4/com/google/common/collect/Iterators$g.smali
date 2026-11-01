.class Lcom/google/common/collect/Iterators$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/collect/q3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;

.field private b:Z

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/Iterators$g;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$g;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/Iterators$g;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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

.method public next()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Iterators$g;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$g;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/m3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/Iterators$g;->b:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/Iterators$g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$g;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Iterators$g;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Iterators$g;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Iterators$g;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$g;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/m3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/common/collect/Iterators$g;->b:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Can\'t remove after you\'ve peeked at next"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/Iterators$g;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
