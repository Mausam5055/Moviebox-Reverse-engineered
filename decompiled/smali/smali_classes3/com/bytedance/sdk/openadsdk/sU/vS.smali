.class public Lcom/bytedance/sdk/openadsdk/sU/vS;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/sU/vS$Sj;
    }
.end annotation


# instance fields
.field private EjP:Landroid/hardware/SensorEventListener;

.field private HiB:Landroid/hardware/SensorEventListener;

.field private Jcg:Landroid/hardware/SensorEventListener;

.field private Sj:Landroid/content/Context;

.field private TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/sU/vS$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/sU/Dq;",
            ">;"
        }
    .end annotation
.end field

.field private vS:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/vS$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->EjP:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/vS$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$12;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->HiB:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/vS$23;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$23;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->vS:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/vS$34;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$34;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Jcg:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Sj()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->sP:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/sU/vS;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->EjP:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->sP:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/sU/Dq;

    return-object v0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/sU/vS;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->HiB:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method private HiB()Lcom/bytedance/sdk/openadsdk/sU/Sj;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->dNu()Lcom/bytedance/sdk/openadsdk/sU/Sj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/sU/vS;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Jcg:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/sU/vS;)Lcom/bytedance/sdk/openadsdk/sU/Dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object p0

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/sU/vS;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj:Landroid/content/Context;

    return-object p0
.end method

.method private TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$45;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$45;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "adInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$56;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$56;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "appInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$61;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$61;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playableSDKInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$62;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$62;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "subscribe_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$63;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$63;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "download_app_ad"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "isViewable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "getVolume"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$4;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "getScreenSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$5;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "start_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$6;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "close_accelerometer_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$7;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "start_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$8;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$8;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "close_gyro_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$9;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "start_accelerometer_grativityless_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$10;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "close_accelerometer_grativityless_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$11;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "start_rotation_vector_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$13;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$13;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "close_rotation_vector_observer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$14;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$14;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "device_shake"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$15;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "device_shake_short"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$16;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_style"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$17;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$17;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "sendReward"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$18;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$18;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "webview_time_track"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$19;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$19;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$20;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$20;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "reportAd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$21;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$21;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "close"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$22;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$22;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "openAdLandPageLinks"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$24;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$24;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "get_viewport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$25;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$25;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "jssdk_load_finish"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$26;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$26;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_material_render_result"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$27;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$27;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "detect_change_playable_click"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$28;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$28;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "check_camera_permission"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$29;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$29;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "check_external_storage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$30;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$30;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_open_camera"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$31;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$31;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_pick_photo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$32;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$32;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_download_media_in_photos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$33;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$33;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_preventTouchEvent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$35;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$35;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_settings_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$36;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$36;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_load_main_scene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$37;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$37;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_enter_section"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$38;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$38;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_end"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$39;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$39;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_finish_play_playable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$40;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$40;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_transfrom_module_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$41;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$41;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_transfrom_module_change_color"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$42;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$42;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_set_scroll_rect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$43;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$43;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_click_area"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$44;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$44;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_real_play_start"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$46;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$46;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_material_first_frame_show"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$47;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$47;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_stuck_check_pong"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$48;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$48;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_material_adnormal_mask"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$49;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$49;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_long_press_panel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$50;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$50;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_alpha_player_play"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$51;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$51;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_transfrom_module_highlight"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$52;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$52;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_send_click_event"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$53;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$53;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_query_media_permission_declare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$54;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$54;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_query_media_permission_enable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$55;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$55;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_apply_media_permission"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$57;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$57;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_start_kws"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$58;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$58;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_close_kws"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$59;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$59;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_video_preload_task_add"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/vS$60;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/sU/vS$60;-><init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V

    const-string v2, "playable_video_preload_task_cancel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/sU/vS;)Lcom/bytedance/sdk/openadsdk/sU/Sj;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->HiB()Lcom/bytedance/sdk/openadsdk/sU/Sj;

    move-result-object p0

    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/sU/vS;)Landroid/hardware/SensorEventListener;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->vS:Landroid/hardware/SensorEventListener;

    return-object p0
.end method


# virtual methods
.method public Sj()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/sU/vS$Sj;

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "code"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/sU/vS$Sj;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_0
    const-string p2, "PlayableJsBridge"

    const-string v0, "invoke error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Jcg;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->EjP:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->HiB:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->vS:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/vS;->Jcg:Landroid/hardware/SensorEventListener;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/TEQ;->Sj(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V

    return-void
.end method
