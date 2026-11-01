.class Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

.field final synthetic sP:Lcom/bytedance/sdk/component/Jcg/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;->TKC(J)Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->TKC:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/LD;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;->EjP(J)Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;->Sj()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;->sP()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;JJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->TKC:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->TKC:Ljava/io/File;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->TKC:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 v2, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;)V

    const/4 v0, 0x0

    :catchall_1
    :goto_3
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->sP:Lcom/bytedance/sdk/component/Jcg/sP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;Z)V

    return-void
.end method
