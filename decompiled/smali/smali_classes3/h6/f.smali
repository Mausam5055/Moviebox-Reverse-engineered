.class public Lh6/f;
.super Lh6/c;


# instance fields
.field private c:Lcom/bytedance/sdk/component/sP/Sj/Zq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Zq;Lh6/b;)V
    .locals 5

    invoke-direct {p0}, Lh6/c;-><init>()V

    iput-object p1, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh6/c;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lh6/c;->a:Ljava/util/List;

    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lh6/c;->b:Lh6/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->TKC()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Dq()Lcom/bytedance/sdk/component/sP/Sj/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Dq()Lcom/bytedance/sdk/component/sP/Sj/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/aa;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "http/1.1"

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lh6/c;->e(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lh6/c;->e(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;

    move-result-object p1

    iget-object p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$c;->b:Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lh6/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh6/f;->c:Lcom/bytedance/sdk/component/sP/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    move-result v0

    invoke-virtual {p0, v0}, Lh6/c;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
