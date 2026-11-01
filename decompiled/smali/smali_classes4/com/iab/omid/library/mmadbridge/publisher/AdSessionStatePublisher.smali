.class public abstract Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lqe/b;

.field private c:Lcom/iab/omid/library/mmadbridge/adsession/a;

.field private d:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

.field private e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a()V

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    new-instance p1, Lqe/b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lqe/b;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lqe/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Loe/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f:J

    sget-object v0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    return-void
.end method

.method public b(F)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->c(Landroid/webkit/WebView;Ljava/lang/String;F)V

    return-void
.end method

.method c(Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, Lqe/b;

    invoke-direct {v0, p1}, Lqe/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lqe/b;

    return-void
.end method

.method public d(Lcom/iab/omid/library/mmadbridge/adsession/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-void
.end method

.method public e(Lcom/iab/omid/library/mmadbridge/adsession/c;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/c;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->f(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->g(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected g(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;Lorg/json/JSONObject;)V
    .locals 6

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->s()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "environment"

    const-string v0, "app"

    invoke-static {v3, p1, v0}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->c()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object p1

    const-string v1, "adSessionType"

    invoke-static {v3, v1, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Loe/b;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "deviceInfo"

    invoke-static {v3, v1, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Loe/a;->a()Lcom/iab/omid/library/mmadbridge/adsession/DeviceCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/DeviceCategory;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deviceCategory"

    invoke-static {v3, v1, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    invoke-static {v3, v1, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->h()Lcom/iab/omid/library/mmadbridge/adsession/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    invoke-static {p1, v4, v1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->h()Lcom/iab/omid/library/mmadbridge/adsession/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/f;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    invoke-static {p1, v4, v1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    invoke-static {v3, v1, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.4.13-Mmadbridge"

    invoke-static {p1, v1, v4}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/g;->c()Lcom/iab/omid/library/mmadbridge/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/internal/g;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {p1, v4, v1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v0, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    invoke-static {v3, v0, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->e()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    invoke-static {v3, v0, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/mmadbridge/adsession/g;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/g;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v0, p2}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iab/omid/library/mmadbridge/internal/h;->g(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public h(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public j(Ljava/lang/String;J)V
    .locals 2

    iget-wide v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    sget-object p3, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    if-eq p2, p3, :cond_0

    iput-object p3, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object p3

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->m(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iab/omid/library/mmadbridge/internal/h;->e(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public l(Ljava/util/Date;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-static {v0, v1, p1}, Loe/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mmadbridge/internal/h;->j(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public m(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->n(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public n(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "foregrounded"

    goto :goto_0

    :cond_0
    const-string p1, "backgrounded"

    :goto_0
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->o(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lqe/b;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public p(Ljava/lang/String;J)V
    .locals 2

    iget-wide v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    sget-object p2, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    iput-object p2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object p3

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->m(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public q(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "locked"

    goto :goto_0

    :cond_0
    const-string p1, "unlocked"

    :goto_0
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/iab/omid/library/mmadbridge/internal/h;->d(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public r()Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/mmadbridge/adsession/a;

    return-object v0
.end method

.method public s()Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    return-object v0
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lqe/b;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u()V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/h;->a()Lcom/iab/omid/library/mmadbridge/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->w()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/mmadbridge/internal/h;->l(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public w()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b:Lqe/b;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->m(Lorg/json/JSONObject;)V

    return-void
.end method

.method public y()V
    .locals 0

    return-void
.end method
