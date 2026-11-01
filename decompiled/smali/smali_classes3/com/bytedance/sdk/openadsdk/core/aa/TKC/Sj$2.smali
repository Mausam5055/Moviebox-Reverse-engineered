.class Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;

.field final synthetic HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Ljava/io/File;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->Sj:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->TKC:Ljava/io/File;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->Sj:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->Sj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->vS(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;->sP(J)Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;

    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->vS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->HiB()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;

    const-string v1, "downloadZip"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$sP;Lcom/bytedance/sdk/component/Jcg/sP;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/Jcg/sP;->Sj()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, -0x2bc

    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;Z)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->Sj:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->HiB(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->Sj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->vS(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 v0, -0x2bc

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->HiB:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$2;->EjP:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$Sj;Z)V

    return-void
.end method
