.class public abstract Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/Sj/sP/sP/Sj;


# instance fields
.field protected Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

.field protected TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

.field protected sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;


# direct methods
.method protected constructor <init>(Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/adsdk/Sj/sP/EjP/HiB;
    .locals 1

    sget-object v0, Lcom/bytedance/adsdk/Sj/sP/EjP/vS;->Sj:Lcom/bytedance/adsdk/Sj/sP/EjP/vS;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/Sj/sP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    return-void
.end method

.method public sP()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->Sj:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->TKC:Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/Sj/sP/EjP/TKC;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    invoke-interface {v1}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sP(Lcom/bytedance/adsdk/Sj/sP/sP/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->sP:Lcom/bytedance/adsdk/Sj/sP/sP/Sj;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/Sj/sP/sP/Sj/dNu;->sP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
