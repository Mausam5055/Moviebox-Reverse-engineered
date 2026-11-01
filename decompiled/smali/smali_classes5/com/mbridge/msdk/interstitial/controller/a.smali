.class public Lcom/mbridge/msdk/interstitial/controller/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/interstitial/controller/a$c;,
        Lcom/mbridge/msdk/interstitial/controller/a$b;,
        Lcom/mbridge/msdk/interstitial/controller/a$d;
    }
.end annotation


# static fields
.field public static o:Ljava/lang/String;

.field public static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/interstitial/controller/a$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/out/MBridgeIds;

.field private g:Landroid/os/Handler;

.field private h:Lcom/mbridge/msdk/setting/l;

.field private i:Lcom/mbridge/msdk/out/InterstitialListener;

.field public j:Z

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->p:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "InterstitialController"

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->j:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->m:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z

    :try_start_0
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->p:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->i:Lcom/mbridge/msdk/out/InterstitialListener;

    return-object p0
.end method

.method private a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/interstitial/controller/a$d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/interstitial/controller/a$d;-><init>(Lcom/mbridge/msdk/interstitial/controller/a;)V

    sget-object v1, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/mbridge/msdk/interstitial/controller/a;->r:Ljava/util/Map;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    const-class v2, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    const-string v2, "unitId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->m:Ljava/lang/String;

    const-string v1, "campaign"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/interstitial/controller/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->p:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/MBridgeIds;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->f:Lcom/mbridge/msdk/out/MBridgeIds;

    return-object p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/mbridge/msdk/interstitial/adapter/a;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/controller/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/interstitial/controller/a;->e:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/interstitial/adapter/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/mbridge/msdk/interstitial/adapter/a;->d()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Z)V

    goto :goto_1

    :cond_1
    const-string p1, "no ads available can show"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->i:Lcom/mbridge/msdk/out/InterstitialListener;

    if-eqz p1, :cond_2

    const-string p1, "can\'t show because unknow error"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->k:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/interstitial/controller/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/interstitial/controller/a$a;-><init>(Lcom/mbridge/msdk/interstitial/controller/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/interstitial/controller/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->i()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/interstitial/controller/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->l:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->h:Lcom/mbridge/msdk/setting/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/c;->e()I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->h:Lcom/mbridge/msdk/setting/l;

    invoke-virtual {v1}, Lcom/mbridge/msdk/setting/c;->y()I

    move-result v1

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    :cond_0
    if-gtz v1, :cond_1

    move v1, v2

    :cond_1
    mul-int/2addr v1, v0

    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->q:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/mbridge/msdk/interstitial/controller/a;->q:Ljava/util/Map;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/mbridge/msdk/interstitial/controller/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->g()V

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/setting/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->h:Lcom/mbridge/msdk/setting/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/setting/l;->h(Ljava/lang/String;)Lcom/mbridge/msdk/setting/l;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->h:Lcom/mbridge/msdk/setting/l;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic f(Lcom/mbridge/msdk/interstitial/controller/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/mbridge/msdk/out/InterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->i:Lcom/mbridge/msdk/out/InterstitialListener;

    return-void
.end method

.method public a(Z)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/mbridge/msdk/interstitial/adapter/a;

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/interstitial/controller/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/interstitial/controller/a;->e:Ljava/lang/String;

    move-object v0, v6

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/interstitial/adapter/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/mbridge/msdk/interstitial/controller/a$c;

    invoke-direct {v0, p0, v6}, Lcom/mbridge/msdk/interstitial/controller/a$c;-><init>(Lcom/mbridge/msdk/interstitial/controller/a;Lcom/mbridge/msdk/interstitial/adapter/a;)V

    new-instance v1, Lcom/mbridge/msdk/interstitial/controller/a$b;

    invoke-direct {v1, p0, v6, v0}, Lcom/mbridge/msdk/interstitial/controller/a$b;-><init>(Lcom/mbridge/msdk/interstitial/controller/a;Lcom/mbridge/msdk/interstitial/adapter/a;Lcom/mbridge/msdk/interstitial/controller/a$c;)V

    invoke-virtual {v6, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/controller/a$b;)V

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->g:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v6}, Lcom/mbridge/msdk/interstitial/adapter/a;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez p1, :cond_1

    const-string p1, "can\'t show because unknow error"

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "catetory"

    const-string v1, "unit_id"

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z

    if-nez p2, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->e:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    sget-object p1, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->d:Ljava/lang/String;

    :cond_4
    new-instance p1, Lcom/mbridge/msdk/out/MBridgeIds;

    iget-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->f:Lcom/mbridge/msdk/out/MBridgeIds;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :goto_1
    return v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z

    :goto_3
    iget-boolean p1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->m:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z

    if-nez v0, :cond_2

    const-string v0, "init error"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->e()V

    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->d()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public g()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/setting/j;

    invoke-direct {v0}, Lcom/mbridge/msdk/setting/j;-><init>()V

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/mbridge/msdk/setting/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context is null"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "unitid is null"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/interstitial/controller/a;->n:Z

    if-nez v0, :cond_2

    const-string v0, "init error"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/interstitial/controller/a;->e()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "can\'t show because unknow error"

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/interstitial/controller/a;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
