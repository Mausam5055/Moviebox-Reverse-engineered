.class Lcom/bytedance/sdk/openadsdk/common/Sj$3;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/common/Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/Sj;Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/common/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 8

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;->Sj(ZLjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/common/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/common/Sj;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;->Sj(ZLjava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/common/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->sP()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/common/Sj;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/common/Sj$Sj;->Sj(ZLjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->TKC:Lcom/bytedance/sdk/openadsdk/common/Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/common/Sj$3;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-wide/16 v5, -0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/common/Sj;ZLcom/bytedance/sdk/openadsdk/core/model/sU;JLjava/lang/String;)V

    return-void
.end method
