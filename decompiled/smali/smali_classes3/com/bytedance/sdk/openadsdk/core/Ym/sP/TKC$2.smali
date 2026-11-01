.class final Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->sP:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->TKC:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 10

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    move-object v5, p1

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->sP:Z

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v1

    const/16 v2, 0x12c

    if-le v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->TKC:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->TKC:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->sP:Z

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Jcg()V

    :cond_3
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->TKC:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->sP:Z

    const/4 v0, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V

    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->sP:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS()Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->TKC:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
