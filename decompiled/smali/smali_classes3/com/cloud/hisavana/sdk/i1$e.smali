.class public Lcom/cloud/hisavana/sdk/i1$e;
.super Lcom/cloud/hisavana/sdk/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field final synthetic e:Lcom/cloud/hisavana/sdk/i1;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/i1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/i1$e;->e:Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/f4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/p;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->a(Lcom/cloud/hisavana/sdk/p;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$e;->e:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->w0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$e;->e:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/i1$e;->e:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/i1;->n0(Lcom/cloud/hisavana/sdk/i1;)Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1$e;->e:Lcom/cloud/hisavana/sdk/i1;

    invoke-static {v1, p1}, Lcom/cloud/hisavana/sdk/i1;->U(Lcom/cloud/hisavana/sdk/i1;Lcom/cloud/hisavana/sdk/p;)Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    move-result-object p1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/i1$e;->e:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/f4;->e()V

    return-void
.end method

.method public f(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->f(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "TranSplash"

    const-string v1, "onCompanion"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIsPlayingChanged isPLaying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranSplash"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/f4;->onIsPlayingChanged(Z)V

    return-void
.end method
