.class Lcom/google/common/collect/Multimaps$a$a;
.super Lcom/google/common/collect/Maps$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$i;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/Multimaps$a$a;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$a$a;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps$a;->e(Lcom/google/common/collect/Multimaps$a;)Lcom/google/common/collect/j3;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/j3;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-static {v0}, Lcom/google/common/collect/Multimaps$a;->e(Lcom/google/common/collect/Multimaps$a;)Lcom/google/common/collect/j3;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/j3;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/k3;

    invoke-direct {v1, p0}, Lcom/google/common/collect/k3;-><init>(Lcom/google/common/collect/Multimaps$a$a;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->c(Ljava/util/Set;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$i;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Multimaps$a;->i(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
