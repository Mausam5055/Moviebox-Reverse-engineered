.class public Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/uA;
.super Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Sj/sP/sP/Sj;",
            ">;",
            "Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;",
            ")I"
        }
    .end annotation

    const/16 v0, 0x29

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;->Sj(ILjava/lang/String;)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;->Sj(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1

    :cond_0
    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {p3}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;

    move-result-object v1

    sget-object v2, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;

    move-result-object v1

    sget-object v2, Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;

    if-eq v1, v2, :cond_1

    invoke-interface {p4, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;

    move-result-object v1

    sget-object v2, Lcom/bytedance/adsdk/Sj/sP/EjP/sP;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/sP;

    if-ne v1, v2, :cond_5

    check-cast v0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/TEQ;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v3}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;

    move-result-object v4

    sget-object v5, Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;->HiB:Lcom/bytedance/adsdk/Sj/sP/EjP/EjP;

    if-ne v4, v5, :cond_2

    invoke-static {v2, p1, p2}, Lcom/bytedance/adsdk/Sj/sP/HiB/sP;->Sj(Ljava/util/List;Ljava/lang/String;I)Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    invoke-static {v2, p1, p2}, Lcom/bytedance/adsdk/Sj/sP/HiB/sP;->Sj(Ljava/util/List;Ljava/lang/String;I)Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/TEQ;->Sj([Lcom/bytedance/adsdk/Sj/sP/sP/Sj;)V

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p4, p1, p2}, Lcom/bytedance/adsdk/Sj/sP/HiB/sP;->Sj(Ljava/util/List;Ljava/lang/String;I)Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    :goto_2
    return p2

    :cond_6
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method
