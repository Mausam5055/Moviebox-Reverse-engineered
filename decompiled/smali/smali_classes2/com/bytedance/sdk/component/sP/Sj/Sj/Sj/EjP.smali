.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;
.super Lcom/bytedance/sdk/component/sP/Sj/Ym;


# instance fields
.field public Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

.field public uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;)V

    new-instance p1, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->sP()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/sP/Sj/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;
    .locals 2

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP()Lcom/bytedance/sdk/component/sP/Sj/Jcg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Jcg;->Sj()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/uA;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setting"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->vS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;Lcom/bytedance/sdk/component/sP/Sj/EjP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->uA:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Sj;->TKC()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Fmk;Lcom/bytedance/sdk/component/sP/Sj/EjP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/EjP;->Dq:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/HiB;->TKC()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
