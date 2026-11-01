.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;
.super Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener$Stub;


# instance fields
.field private Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IAppOpenAdInteractionListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    return-object p0
.end method

.method private Sj()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$2;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdSkip()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$3;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdTimeOver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/EjP/sP;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj$4;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/Sj;->Sj()V

    return-void
.end method
