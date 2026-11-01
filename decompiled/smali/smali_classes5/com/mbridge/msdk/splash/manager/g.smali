.class public Lcom/mbridge/msdk/splash/manager/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/splash/manager/g$b;,
        Lcom/mbridge/msdk/splash/manager/g$d;,
        Lcom/mbridge/msdk/splash/manager/g$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/g;->a:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/g;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/splash/manager/g$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/manager/g;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/splash/manager/g;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/splash/manager/g$b;->a()Lcom/mbridge/msdk/splash/manager/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/manager/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/manager/g;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/manager/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/manager/g;->b:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/splash/manager/g$d;Lcom/mbridge/msdk/splash/manager/g$c;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p3

    if-eqz v9, :cond_6

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/splash/manager/g$d;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/splash/manager/g$d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/splash/manager/g$d;->a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/splash/manager/g$d;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/splash/manager/g$d;->f()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lcom/mbridge/msdk/splash/manager/g$d;->b()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/mbridge/msdk/splash/view/MBSplashView;->getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    move-result-object v13

    if-nez v13, :cond_0

    return-void

    :cond_0
    new-instance v4, Lcom/mbridge/msdk/splash/signal/b;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0, v10}, Lcom/mbridge/msdk/splash/signal/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/splash/signal/a;->a(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/splash/signal/a;->a(I)V

    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/splash/signal/a;->b(I)V

    invoke-virtual {v9, v4}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setSplashSignalCommunicationImpl(Lcom/mbridge/msdk/splash/signal/b;)V

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v13}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->getRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CampaignEx RequestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " WebView RequestId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebViewRenderManager"

    invoke-static {v4, v3}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, v8, Lcom/mbridge/msdk/splash/manager/g;->a:Z

    if-nez v1, :cond_2

    iget-boolean v1, v8, Lcom/mbridge/msdk/splash/manager/g;->b:Z

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lcom/mbridge/msdk/splash/manager/g$c;->a(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mbridge/msdk/splash/manager/g;->b()V

    invoke-virtual {v13, v0}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->setRequestId(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/mbridge/msdk/splash/report/a;->b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v6, Lcom/mbridge/msdk/splash/manager/g$a;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v10

    move-object v8, v6

    move-wide v6, v14

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/splash/manager/g$a;-><init>(Lcom/mbridge/msdk/splash/manager/g;Lcom/mbridge/msdk/splash/manager/g$c;Lcom/mbridge/msdk/splash/view/MBSplashView;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;J)V

    invoke-virtual {v13, v8}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    invoke-virtual {v13}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13, v12}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->setH5Ready(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const-string v3, "webview had destory"

    const/4 v6, 0x3

    move-object v1, v11

    move-object v2, v10

    move-wide v4, v14

    invoke-static/range {v0 .. v6}, Lcom/mbridge/msdk/splash/report/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_6
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/g;->a:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/manager/g;->b:Z

    return-void
.end method
