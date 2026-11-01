.class public Lcom/bytedance/adsdk/ugeno/uA/sP/sP;
.super Lcom/bytedance/adsdk/ugeno/sP/Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/uA/sP/sP$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/Sj<",
        "Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field private AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/Sj;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public synthetic Sj()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->TKC()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    move-result-object v0

    return-object v0
.end method

.method public TEQ()Lcom/bytedance/adsdk/ugeno/sP/Sj$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/sP$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/sP/Sj;)V

    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    return-object v0
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;->AVc:Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->QZ:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;->setEventMap(Ljava/util/Map;)V

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/Sj;->sP()V

    return-void
.end method
