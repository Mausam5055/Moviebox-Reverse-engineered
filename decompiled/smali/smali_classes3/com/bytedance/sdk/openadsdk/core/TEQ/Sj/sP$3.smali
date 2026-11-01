.class Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Ljava/lang/String;

.field final synthetic vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->sP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->TKC:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->EjP:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->HiB:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result p1

    const/4 v0, 0x3

    const-string v1, "net"

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    if-eqz p1, :cond_1

    const-string p2, "net data is null"

    invoke-interface {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->sP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->TKC:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->EjP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->HiB:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;->Sj(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;

    move-result-object p2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/Sj;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    if-eqz p2, :cond_3

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    invoke-interface {v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "parse json exception data is"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p2, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    if-eqz p1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net code error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "net error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "net"

    const/4 v1, 0x3

    invoke-interface {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
