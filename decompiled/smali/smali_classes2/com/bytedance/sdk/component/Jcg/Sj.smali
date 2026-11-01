.class public Lcom/bytedance/sdk/component/Jcg/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Jcg/Sj$Sj;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;-><init>()V

    iget v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->TKC:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->TKC(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->sP(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->EjP:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->EjP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/sP/Sj/Dq;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Dq;)Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Landroid/os/Bundle;

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/Jcg/Sj$Sj;->sP(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)Ljava/util/Set;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;Lcom/bytedance/sdk/component/Jcg/Sj$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Jcg/Sj;-><init>(Lcom/bytedance/sdk/component/Jcg/Sj$Sj;)V

    return-void
.end method

.method public static Sj()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;->Sj:Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Jcg/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/Jcg/TKC/TKC$Sj;)V

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/component/Jcg/sP/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/Sj;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/component/sP/Sj/Ym;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/sP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/component/Jcg/sP/EjP;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/Jcg/sP/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Jcg/Sj;->Sj:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/EjP;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Ym;)V

    return-object v0
.end method
