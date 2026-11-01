.class Lcom/google/common/collect/ImmutableMultiset$a;
.super Lcom/google/common/collect/r4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/Iterator;

.field final synthetic d:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->d:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Ljava/util/Iterator;

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

    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l3$a;

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/l3$a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    :cond_0
    iget v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:I

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
