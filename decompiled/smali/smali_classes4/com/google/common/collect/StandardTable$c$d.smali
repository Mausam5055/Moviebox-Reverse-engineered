.class Lcom/google/common/collect/StandardTable$c$d;
.super Lcom/google/common/collect/Maps$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/StandardTable$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/StandardTable$c$d;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$p;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$d;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->f(Ljava/lang/Object;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->F(Lcom/google/common/base/n;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$c;->e(Lcom/google/common/base/n;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$d;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->g(Ljava/util/Collection;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->F(Lcom/google/common/base/n;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$c;->e(Lcom/google/common/base/n;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$c$d;->b:Lcom/google/common/collect/StandardTable$c;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->g(Ljava/util/Collection;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->i(Lcom/google/common/base/n;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->F(Lcom/google/common/base/n;)Lcom/google/common/base/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/StandardTable$c;->e(Lcom/google/common/base/n;)Z

    move-result p1

    return p1
.end method
