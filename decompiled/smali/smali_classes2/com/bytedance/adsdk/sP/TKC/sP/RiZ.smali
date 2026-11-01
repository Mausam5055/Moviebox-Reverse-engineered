.class public Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
    }
.end annotation


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

.field private final HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

.field private final Sj:Ljava/lang/String;

.field private final TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

.field private final vS:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-object p5, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-boolean p6, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->vS:Z

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-object v0
.end method

.method public HiB()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;

    invoke-direct {p1, p3, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dx;-><init>(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;)V

    return-object p1
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/RiZ$Sj;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trim Path: {start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->HiB:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/RiZ;->vS:Z

    return v0
.end method
