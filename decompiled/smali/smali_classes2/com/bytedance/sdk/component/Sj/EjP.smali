.class public abstract Lcom/bytedance/sdk/component/Sj/EjP;
.super Lcom/bytedance/sdk/component/Sj/sP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Sj/EjP$Sj;,
        Lcom/bytedance/sdk/component/Sj/EjP$sP;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/Sj/sP<",
        "TP;TR;>;"
    }
.end annotation


# instance fields
.field private Sj:Z

.field private TKC:Lcom/bytedance/sdk/component/Sj/vS;

.field private sP:Lcom/bytedance/sdk/component/Sj/EjP$Sj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/sP;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/EjP;->Sj:Z

    return-void
.end method

.method private vS()Z
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/EjP;->Sj:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Jsb async call already finished: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hashcode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/uA;->Sj(Ljava/lang/RuntimeException;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected EjP()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Sj/EjP;->Sj:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj/EjP;->TKC:Lcom/bytedance/sdk/component/Sj/vS;

    return-void
.end method

.method HiB()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->EjP()V

    return-void
.end method

.method public bridge synthetic Sj()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/bytedance/sdk/component/Sj/sP;->Sj()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final Sj(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/EjP;->sP:Lcom/bytedance/sdk/component/Sj/EjP$Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Sj/EjP$Sj;->Sj(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->EjP()V

    :cond_0
    return-void
.end method

.method protected abstract Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/Sj/vS;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;Lcom/bytedance/sdk/component/Sj/EjP$Sj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/bytedance/sdk/component/Sj/vS;",
            "Lcom/bytedance/sdk/component/Sj/EjP$Sj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/EjP;->TKC:Lcom/bytedance/sdk/component/Sj/vS;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Sj/EjP;->sP:Lcom/bytedance/sdk/component/Sj/EjP$Sj;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj/EjP;->Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)V

    return-void
.end method

.method protected final Sj(Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/EjP;->sP:Lcom/bytedance/sdk/component/Sj/EjP$Sj;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Sj/EjP$Sj;->Sj(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->EjP()V

    :cond_0
    return-void
.end method

.method protected final TKC()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Sj/EjP;->Sj(Ljava/lang/Throwable;)V

    return-void
.end method
