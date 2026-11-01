.class public Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

.field private HiB:Z

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sP:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TEQ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onContinue throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTAppOpenVideoManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public EjP()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->vS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public HiB()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AppOpenVideoManager onPause throw Exception :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "open_ad"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "TTAppOpenVideoManager"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Sj(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->aa()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->sef()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Fmk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/sP;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->sP:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/Dq/sP;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    return-void
.end method

.method public Sj(Lu5/b$b;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lu5/b$b;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB:Z

    return-void
.end method

.method public Sj()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lx5/b;

    move-result-object v0

    invoke-interface {v0}, Lx5/b;->sP()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    return v0
.end method

.method public Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj(Lu5/b$b;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "ttAppOpenAd playVideo error: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "open_ad"

    aput-object p3, p2, v0

    const/4 p3, 0x1

    aput-object p1, p2, p3

    const-string p1, "TTAppOpenVideoManager"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public TEQ()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->sP()V

    :cond_0
    return-void
.end method

.method public TKC()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa()Lt5/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa()Lt5/a;

    move-result-object v0

    invoke-interface {v0}, Lt5/a;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Ym()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    return-void
.end method

.method public aa()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoProgress()J
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->aa()J

    move-result-wide v0

    return-wide v0
.end method

.method public sP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->HiB:Z

    return v0
.end method

.method public sef()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public uA()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/Sj;->TKC()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    return-void
.end method

.method public vS()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/component/Dq/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
