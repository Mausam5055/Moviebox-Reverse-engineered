.class public Lcom/cloud/hisavana/sdk/c5;
.super Lcom/cloud/hisavana/sdk/n2;

# interfaces
.implements Ljava/util/Map;


# instance fields
.field h:Lcom/cloud/hisavana/sdk/t4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n2;-><init>()V

    return-void
.end method

.method private o()Lcom/cloud/hisavana/sdk/t4;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c5;->h:Lcom/cloud/hisavana/sdk/t4;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/c5$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/c5$a;-><init>(Lcom/cloud/hisavana/sdk/c5;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/c5;->h:Lcom/cloud/hisavana/sdk/t4;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c5;->h:Lcom/cloud/hisavana/sdk/t4;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c5;->o()Lcom/cloud/hisavana/sdk/t4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/t4;->p()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c5;->o()Lcom/cloud/hisavana/sdk/t4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/t4;->q()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Lcom/cloud/hisavana/sdk/n2;->c:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/n2;->k(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/sdk/n2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c5;->o()Lcom/cloud/hisavana/sdk/t4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/t4;->r()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
