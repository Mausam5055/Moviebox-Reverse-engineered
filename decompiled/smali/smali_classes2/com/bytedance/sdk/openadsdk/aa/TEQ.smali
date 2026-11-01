.class public Lcom/bytedance/sdk/openadsdk/aa/TEQ;
.super Ljava/lang/Object;


# instance fields
.field private final Sj:Landroid/media/AudioManager;

.field private TKC:Z

.field private sP:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->TKC:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj:Landroid/media/AudioManager;

    return-void
.end method

.method private Sj(III)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    return v0
.end method

.method public Sj(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj(ZZ)V

    return-void
.end method

.method public Sj(ZZ)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Jcg()I

    move-result p1

    if-eqz p1, :cond_1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj(III)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->TKC:Z

    return-void

    :cond_3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    const/4 v3, -0x1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->uA()I

    move-result p1

    div-int/lit8 p1, p1, 0xf

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-ne p1, v3, :cond_6

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->uA()I

    move-result p1

    div-int/lit8 p1, p1, 0xf

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_2
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->sP:I

    invoke-direct {p0, v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->Sj(III)V

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/aa/TEQ;->TKC:Z

    return-void
.end method
