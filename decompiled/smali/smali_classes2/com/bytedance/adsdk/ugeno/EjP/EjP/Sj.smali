.class public abstract Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj$Sj;
    }
.end annotation


# instance fields
.field protected Dq:Ljava/lang/String;

.field protected EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

.field protected HiB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected Jcg:Ljava/lang/String;

.field protected Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

.field protected TEQ:Landroid/content/Context;

.field protected TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

.field protected sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected uA:Ljava/lang/String;

.field protected vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TEQ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->Sj()Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->Sj()Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->TKC()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->sP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Jcg:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->EjP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Dq:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->EjP:Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;->HiB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->uA:Ljava/lang/String;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/EjP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method

.method public varargs abstract Sj([Ljava/lang/Object;)Z
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->uA:Ljava/lang/String;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    return-object v0
.end method
