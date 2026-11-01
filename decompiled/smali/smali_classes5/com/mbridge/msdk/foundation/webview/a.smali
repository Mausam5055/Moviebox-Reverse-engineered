.class public Lcom/mbridge/msdk/foundation/webview/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/webview/BrowserView$e;


# static fields
.field private static o:Ljava/lang/String; = "a"


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/mbridge/msdk/out/BaseTrackingListener;

.field private f:Lcom/mbridge/msdk/foundation/webview/BrowserView;

.field private g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private h:Lcom/mbridge/msdk/click/a;

.field private i:Landroid/content/Context;

.field private j:Landroid/os/Handler;

.field private k:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

.field private l:Z

.field private final m:Ljava/lang/Runnable;

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/click/a;Lcom/mbridge/msdk/foundation/webview/BrowserView;Lcom/mbridge/msdk/out/BaseTrackingListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->k:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    new-instance v0, Lcom/mbridge/msdk/foundation/webview/a$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/webview/a$a;-><init>(Lcom/mbridge/msdk/foundation/webview/a;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->m:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/a;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/webview/a;->f:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    iput-object p5, p0, Lcom/mbridge/msdk/foundation/webview/a;->e:Lcom/mbridge/msdk/out/BaseTrackingListener;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->j:Landroid/os/Handler;

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object p1

    :cond_0
    iput-object p3, p0, Lcom/mbridge/msdk/foundation/webview/a;->h:Lcom/mbridge/msdk/click/a;

    new-instance p2, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {p2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/a;->k:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/b;->o0()J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->a:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/webview/a;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->a:I

    return p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 4

    const-string v0, "url"

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    :cond_1
    :try_start_0
    sget v1, Lcom/mbridge/msdk/activity/MBCommonActivity;->e:I

    const-class v1, Lcom/mbridge/msdk/activity/MBCommonActivity;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/mbridge/msdk/foundation/webview/b;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/webview/a;->f:Lcom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/s0$a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "market://details?id="

    const-string v3, ""

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "webview url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x30000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "mvcommon"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->e:Lcom/mbridge/msdk/out/BaseTrackingListener;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2, v0, p3, v1}, Lcom/mbridge/msdk/foundation/tools/s0;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/out/BaseTrackingListener;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/webview/a;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/foundation/webview/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/webview/a;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/foundation/webview/a;->d(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/webview/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/webview/a;)Lcom/mbridge/msdk/out/BaseTrackingListener;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->e:Lcom/mbridge/msdk/out/BaseTrackingListener;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/mbridge/msdk/foundation/webview/a;)Lcom/mbridge/msdk/click/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->h:Lcom/mbridge/msdk/click/a;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/a;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/foundation/webview/a;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->k:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/a;->m:Ljava/lang/Runnable;

    iget v2, p0, Lcom/mbridge/msdk/foundation/webview/a;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const-string p1, "https"

    const-string v0, "http"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    return v3

    :catchall_0
    move-exception v4

    :try_start_2
    sget-object v5, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :try_start_3
    const-string v4, "browser_fallback_url"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_4
    :goto_0
    return v1

    :goto_1
    :try_start_4
    sget-object v0, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/click/c;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    const-string p2, "openDeepLink"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v3

    :cond_6
    :goto_3
    return v1

    :goto_4
    sget-object p2, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic e(Lcom/mbridge/msdk/foundation/webview/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private e(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "https"

    const-string v1, "http"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-static {p2, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    :catchall_0
    move-exception v5

    :try_start_2
    sget-object v6, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :try_start_3
    const-string v5, "browser_fallback_url"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v2

    :goto_1
    :try_start_4
    sget-object v0, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/click/c;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    const-string p2, "openDeepLink"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v4

    :cond_6
    :goto_3
    return v2

    :goto_4
    sget-object p2, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static synthetic f(Lcom/mbridge/msdk/foundation/webview/a;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/foundation/webview/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/foundation/webview/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p2, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/mbridge/msdk/foundation/tools/o0;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/a;->c()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p2

    new-instance v0, Lcom/mbridge/msdk/foundation/webview/a$d;

    invoke-direct {v0, p0, p4, p3}, Lcom/mbridge/msdk/foundation/webview/a$d;-><init>(Lcom/mbridge/msdk/foundation/webview/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, p4}, Lcom/mbridge/msdk/foundation/webview/a;->d(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/webview/a;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p1, p4, p2}, Lcom/mbridge/msdk/foundation/webview/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    sget-object p1, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished1  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->n:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/mbridge/msdk/foundation/webview/a$c;

    invoke-direct {v0, p0, p2}, Lcom/mbridge/msdk/foundation/webview/a$c;-><init>(Lcom/mbridge/msdk/foundation/webview/a;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/a;->c()V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->g:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/foundation/webview/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->n:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 p3, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->n:J

    iget-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->d:Z

    if-nez p1, :cond_0

    iput-boolean p3, p0, Lcom/mbridge/msdk/foundation/webview/a;->d:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/a;->d()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    :cond_1
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/a;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    return-void
.end method

.method public b(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/mbridge/msdk/foundation/webview/a;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldOverrideUrlLoading1  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    invoke-static {p2}, Lcom/mbridge/msdk/foundation/tools/s0$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/a;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Lcom/mbridge/msdk/foundation/tools/s0$a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/webview/a;->l:Z

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/foundation/webview/a;->e(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mbridge/msdk/foundation/webview/a;->n:J

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/a;->c()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/webview/a$b;

    invoke-direct {v1, p0, p2}, Lcom/mbridge/msdk/foundation/webview/a$b;-><init>(Lcom/mbridge/msdk/foundation/webview/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return p1
.end method

.method public c(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->n:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mbridge/msdk/foundation/webview/a;->n:J

    iget-boolean p1, p0, Lcom/mbridge/msdk/foundation/webview/a;->d:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->d:Z

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/a;->d()V

    :cond_0
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/a;->c:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/webview/a;->b:Z

    return-void
.end method
