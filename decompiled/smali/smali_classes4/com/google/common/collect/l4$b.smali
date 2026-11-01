.class final Lcom/google/common/collect/l4$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/List;

.field final b:Lcom/google/common/collect/c4;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/l4$b;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l4$b;->b:Lcom/google/common/collect/c4;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/l4$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/l4$b;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/l4$b;Ljava/util/function/BinaryOperator;)Lcom/google/common/collect/l4$b;
    .locals 3

    iget-object p1, p1, Lcom/google/common/collect/l4$b;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l4$c;

    invoke-virtual {v0}, Lcom/google/common/collect/l4$c;->getRowKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/l4$c;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/l4$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, p2}, Lcom/google/common/collect/l4$b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l4$b;->b:Lcom/google/common/collect/c4;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/c4;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/l4$c;

    if-nez v0, :cond_0

    new-instance p4, Lcom/google/common/collect/l4$c;

    invoke-direct {p4, p1, p2, p3}, Lcom/google/common/collect/l4$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/common/collect/l4$b;->a:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/google/common/collect/l4$b;->b:Lcom/google/common/collect/c4;

    invoke-interface {p3, p1, p2, p4}, Lcom/google/common/collect/c4;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/l4$c;->a(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)V

    :goto_0
    return-void
.end method

.method c()Lcom/google/common/collect/ImmutableTable;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l4$b;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableTable;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method
