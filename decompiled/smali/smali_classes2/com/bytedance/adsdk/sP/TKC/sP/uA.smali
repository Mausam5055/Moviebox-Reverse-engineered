.class public Lcom/bytedance/adsdk/sP/TKC/sP/uA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    }
.end annotation


# instance fields
.field private final Sj:Ljava/lang/String;

.field private final TKC:Z

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    iput-boolean p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->TKC:Z

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    new-instance p1, Lcom/bytedance/adsdk/sP/Sj/Sj/aa;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/aa;-><init>(Lcom/bytedance/adsdk/sP/TKC/sP/uA;)V

    return-object p1
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->TKC:Z

    return v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MergePaths{mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/uA;->sP:Lcom/bytedance/adsdk/sP/TKC/sP/uA$Sj;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
