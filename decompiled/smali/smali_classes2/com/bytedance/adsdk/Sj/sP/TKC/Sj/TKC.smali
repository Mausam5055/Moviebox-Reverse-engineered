.class public Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/TKC;
.super Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;-><init>()V

    return-void
.end method

.method private Sj(Ljava/lang/String;ILjava/util/Deque;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Sj/sP/sP/Sj;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    add-int v1, v0, p2

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;->Sj(ILjava/lang/String;)C

    move-result v2

    invoke-static {v2}, Lcom/bytedance/adsdk/Sj/sP/HiB/Sj;->sP(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lcom/bytedance/adsdk/Sj/sP/HiB/Sj;->TKC(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2e

    if-eq v3, v2, :cond_2

    const/16 v3, 0x5b

    if-eq v3, v2, :cond_2

    const/16 v3, 0x5d

    if-eq v3, v2, :cond_2

    const/16 v3, 0x5f

    if-eq v3, v2, :cond_2

    const/16 v3, 0x2d

    if-eq v3, v2, :cond_2

    const/16 v3, 0x24

    if-ne v3, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/Sj/sP/EjP/Sj;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/Jcg;

    invoke-direct {p2, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/Jcg;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p2, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/zR;

    invoke-direct {p2, p1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/zR;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_1
    return v1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;)I
    .locals 2
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

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/vS;->Sj(ILjava/lang/String;)C

    move-result v0

    invoke-static {v0}, Lcom/bytedance/adsdk/Sj/sP/HiB/Sj;->sP(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj;->Sj(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/Sj/sP/TKC/Sj/TKC;->Sj(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1
.end method
