.class public Lcom/bytedance/adsdk/ugeno/EjP/EjP/sP;
.super Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/EjP/Sj/EjP;


# instance fields
.field private Ym:Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public Sj(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public varargs Sj([Ljava/lang/Object;)Z
    .locals 2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Fm()Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/sP;->Ym:Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Sj/EjP;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj/sP;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/sP;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/EjP/Sj/Sj;->Sj(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/Sj/TKC;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
