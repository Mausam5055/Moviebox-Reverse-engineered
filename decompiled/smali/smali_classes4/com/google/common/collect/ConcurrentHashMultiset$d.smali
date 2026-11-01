.class Lcom/google/common/collect/ConcurrentHashMultiset$d;
.super Lcom/google/common/collect/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$d;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lcom/google/common/collect/d$b;-><init>(Lcom/google/common/collect/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$d;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private c()Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/d$b;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->n(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/d$b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method bridge synthetic a()Lcom/google/common/collect/l3;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$d;->b()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$d;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$d;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
