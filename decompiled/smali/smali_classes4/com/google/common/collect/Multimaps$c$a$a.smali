.class Lcom/google/common/collect/Multimaps$c$a$a;
.super Lcom/google/common/collect/Multisets$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$c$a;->b(Ljava/util/Map$Entry;)Lcom/google/common/collect/l3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/Multimaps$c$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$c$a;Ljava/util/Map$Entry;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/Multimaps$c$a$a;->a:Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$c$a$a;->b:Lcom/google/common/collect/Multimaps$c$a;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$c$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$c$a$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
