.class public Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;,
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;,
        Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;
    }
.end annotation


# instance fields
.field private Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

.field private EjP:Ljava/lang/String;

.field private Fmk:Z

.field private HiB:Ljava/lang/String;

.field private Jcg:Landroidx/browser/customtabs/j;

.field public Sj:Landroidx/browser/customtabs/l;

.field private TEQ:Z

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TzV:Landroidx/browser/customtabs/c;

.field private Ym:Z

.field private Zq:Ljava/lang/Long;

.field private aa:Z

.field private dNu:Lcom/bytedance/sdk/openadsdk/core/act/sP;

.field private sP:Landroid/content/Context;

.field private sef:J

.field private uA:Z

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

.field private vS:Landroidx/browser/customtabs/CustomTabsClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->aa:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Fmk:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sef:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->dNu:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj:Landroidx/browser/customtabs/l;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TzV:Landroidx/browser/customtabs/c;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB:Ljava/lang/String;

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Zq:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sef:J

    return-wide v0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym:Z

    return p1
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ:Z

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sef:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/j;)Landroidx/browser/customtabs/j;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    return-object p1
.end method

.method private Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->Sj(Z)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->sP(I)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;)Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Zq:Ljava/lang/Long;

    return-object p1
.end method

.method private Sj()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "AdActAction"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Sj(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 4

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TzV:Landroidx/browser/customtabs/c;

    invoke-virtual {p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->c(Landroidx/browser/customtabs/c;)Landroidx/browser/customtabs/j;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    const/16 p1, 0x9

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/j;->g(Landroid/os/Bundle;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj:Landroidx/browser/customtabs/l;

    invoke-virtual {v0, v3, v1}, Landroidx/browser/customtabs/j;->j(Landroidx/browser/customtabs/l;Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC(I)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(I)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->EjP(I)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->sP(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->sP(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;->TKC(I)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(I)V

    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg:Landroidx/browser/customtabs/j;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindSuccess(Landroidx/browser/customtabs/j;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz v0, :cond_3

    const/16 v1, 0xb

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindFail(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Landroidx/browser/customtabs/CustomTabsClient;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private Sj(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$2;

    invoke-direct {v6, p0, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Lorg/json/JSONObject;J)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj()V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ:Z

    return p1
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Fmk:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)Landroidx/browser/customtabs/CustomTabsClient;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS:Landroidx/browser/customtabs/CustomTabsClient;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->aa:Z

    return p1
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym:Z

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->aa:Z

    return p0
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(I)Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/Zq/Sj/sP;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/Sj;->Sj(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->dNu:Lcom/bytedance/sdk/openadsdk/core/act/sP;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;-><init>(Lcom/bytedance/sdk/openadsdk/core/act/sP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq:Lcom/bytedance/sdk/openadsdk/core/act/ActServiceConnection;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/f;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdActAction"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uvD:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;

    if-eqz v0, :cond_2

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$BindCustomTabsServiceCallback;->onBindFail(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
