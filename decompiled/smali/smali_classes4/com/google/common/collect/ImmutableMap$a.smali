.class Lcom/google/common/collect/ImmutableMap$a;
.super Lcom/google/common/collect/r4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap;->keyIterator()Lcom/google/common/collect/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/r4;

.field final synthetic b:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/r4;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/ImmutableMap$a;->a:Lcom/google/common/collect/r4;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$a;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/r4;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$a;->a:Lcom/google/common/collect/r4;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$a;->a:Lcom/google/common/collect/r4;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
