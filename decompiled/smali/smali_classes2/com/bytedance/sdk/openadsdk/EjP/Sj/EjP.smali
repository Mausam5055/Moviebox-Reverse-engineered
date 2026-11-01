.class public Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;
.super Ljava/lang/Object;


# static fields
.field public static Sj:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sP:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC/sP;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/aa;

    return-object v0
.end method

.method public static Sj(Landroid/content/Context;Z)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->sP:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;-><init>()V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->TKC()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->HiB()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->TKC(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->EjP()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(Z)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Ym;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Ym;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/HiB;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/Dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/HiB;)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fmk()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->sP(I)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(I)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->cX()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj(J)Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj$Sj;->Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/vS/Sj/sP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj;Landroid/content/Context;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->sP()V

    :cond_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj;->EjP()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/sP;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj;->HiB()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->sP(B)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj/Sj;->Sj(B)V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP;->sP()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Landroid/content/Context;Z)V

    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/vS/Sj/sP;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void
.end method

.method public static Sj(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Sj(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/vS/Sj/sP;->Sj(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Sj(Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;

    const-string v1, "track"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP$1;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static TKC()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP;->EjP()V

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP;->HiB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AdLogSwitchUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sP()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP;->TKC()V

    return-void
.end method
