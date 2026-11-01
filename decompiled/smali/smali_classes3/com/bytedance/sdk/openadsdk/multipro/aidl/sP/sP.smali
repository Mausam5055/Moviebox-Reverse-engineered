.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;
.super Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

.field private final sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/IDislikeClosedListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->sP:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;->sP:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onItemClickClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/multipro/aidl/sP/sP;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    return-void
.end method
