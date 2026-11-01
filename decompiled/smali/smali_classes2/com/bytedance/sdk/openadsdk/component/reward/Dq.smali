.class Lcom/bytedance/sdk/openadsdk/component/reward/Dq;
.super Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;


# instance fields
.field private Dq:Z

.field private EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

.field private HiB:Z

.field private final Jcg:Ljava/lang/String;

.field private final Sj:Landroid/content/Context;

.field private final TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private final sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

.field private uA:Z

.field private final vS:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAd;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Jcg:Ljava/lang/String;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;)Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    return-object p0
.end method

.method private Sj(I)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$3;

    const-string v1, "Reward_registerMultiProcessListener"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tR()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    :try_start_0
    const-string v1, "rviv_new_arch"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v0

    :cond_4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_6
    return v0
.end method

.method private static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    const/4 p0, 0x5

    if-eq v1, p0, :cond_1

    const/16 p0, 0x21

    if-eq v1, p0, :cond_1

    const/4 p0, 0x6

    if-eq v1, p0, :cond_1

    const/16 p0, 0x13

    if-eq v1, p0, :cond_1

    const/16 p0, 0xc

    if-eq v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Jcg:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->HiB:Z

    return-void
.end method

.method public getExtraInfo(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "TTRewardVideoAdImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->QZ()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loss(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->uA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->uA:Z

    :cond_0
    return-void
.end method

.method public setAdInteractionCallback(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionCallback;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/uA;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/uA;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionCallback;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(I)V

    return-void
.end method

.method public setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/uA;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/uA;-><init>(Lcom/bytedance/sdk/openadsdk/api/reward/PAGRewardedAdInteractionListener;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(I)V

    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 11
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->HiB()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->Jcg()Z

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v8

    invoke-static {}, Lf6/a;->x()Z

    move-result v2

    const-string v3, "fullscreen_interstitial_ad"

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->EjP()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()Ly5/b;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_6

    :cond_4
    if-nez p1, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj:Landroid/content/Context;

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    if-nez v2, :cond_6

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->eI()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/Sj;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTAdActivity;

    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    move-object v10, v3

    goto :goto_4

    :cond_7
    const-class v3, Lcom/bytedance/sdk/openadsdk/activity/TTRewardExpressVideoActivity;

    if-eqz v1, :cond_8

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_3
    move-object v10, v5

    goto :goto_4

    :cond_8
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_3

    :cond_9
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/bytedance/sdk/openadsdk/activity/TTRewardVideoActivity;

    invoke-direct {v3, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :goto_4
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->HiB:Z

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Jcg:Ljava/lang/String;

    invoke-static {v10, p1, v3, v5, v6}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sP;->Sj(Landroid/content/Intent;Landroid/app/Activity;ZLcom/bytedance/sdk/openadsdk/core/model/Sj;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getMediaExtra()Ljava/lang/String;

    move-result-object p1

    const-string v3, "media_extra"

    invoke-virtual {v10, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->TKC:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getUserID()Ljava/lang/String;

    move-result-object p1

    const-string v3, "user_id"

    invoke-virtual {v10, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "start_show_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v10, p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj()Lcom/bytedance/sdk/openadsdk/core/kF;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/core/kF;->Sj(Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->EjP:Lcom/bytedance/sdk/openadsdk/Sj/HiB/Sj;

    :cond_a
    const-string p1, "start_activity_async"

    invoke-static {p1, v4}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v9, :cond_b

    move v5, v9

    goto :goto_5

    :cond_b
    move v5, v4

    :goto_5
    if-eqz v5, :cond_c

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$2;

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Dq;ZJLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    invoke-static {v2, v10, p1, v9}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/sP$sP;Z)Z

    if-nez v1, :cond_d

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->HiB:Z

    invoke-static {p1, v0, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZZ)V

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-string p1, "materialMeta error "

    invoke-static {v8, v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    const-string p1, "showFullScreenVideoAd error2: not main looper"

    invoke-static {v8, v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called in a child thread \u2014\u2014 TTRewardVideoAd.showRewardVideoAd"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    :goto_7
    return-void
.end method

.method public win(Ljava/lang/Double;)V
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Dq:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->sP:Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/LqL;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/Double;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Dq;->Dq:Z

    :cond_0
    return-void
.end method
