.class public final Lcom/iab/omid/library/mmadbridge/adsession/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/mmadbridge/adsession/h;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/a;
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/mmadbridge/adsession/h;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Loe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Loe/g;->l(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    invoke-static {v0}, Loe/g;->g(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    new-instance p0, Lcom/iab/omid/library/mmadbridge/adsession/a;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mmadbridge/adsession/a;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->d(Lcom/iab/omid/library/mmadbridge/adsession/a;)V

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-static {v0}, Loe/g;->g(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-static {v0}, Loe/g;->j(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->q()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->x()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-static {v0}, Loe/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-static {v0}, Loe/g;->j(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->y()V

    return-void
.end method

.method public d(Lcom/iab/omid/library/mmadbridge/adsession/media/b;)V
    .locals 1

    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Loe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-static {v0}, Loe/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-static {v0}, Loe/g;->j(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/b;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->k(Lorg/json/JSONObject;)V

    return-void
.end method
