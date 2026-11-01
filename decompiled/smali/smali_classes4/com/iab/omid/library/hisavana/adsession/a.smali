.class public final Lcom/iab/omid/library/hisavana/adsession/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/hisavana/adsession/h;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/hisavana/adsession/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    return-void
.end method

.method public static a(Lcom/iab/omid/library/hisavana/adsession/b;)Lcom/iab/omid/library/hisavana/adsession/a;
    .locals 2

    move-object v0, p0

    check-cast v0, Lcom/iab/omid/library/hisavana/adsession/h;

    const-string v1, "AdSession is null"

    invoke-static {p0, v1}, Lie/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lie/g;->j(Lcom/iab/omid/library/hisavana/adsession/h;)V

    invoke-static {v0}, Lie/g;->g(Lcom/iab/omid/library/hisavana/adsession/h;)V

    new-instance p0, Lcom/iab/omid/library/hisavana/adsession/a;

    invoke-direct {p0, v0}, Lcom/iab/omid/library/hisavana/adsession/a;-><init>(Lcom/iab/omid/library/hisavana/adsession/h;)V

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->d(Lcom/iab/omid/library/hisavana/adsession/a;)V

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-static {v0}, Lie/g;->g(Lcom/iab/omid/library/hisavana/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-static {v0}, Lie/g;->i(Lcom/iab/omid/library/hisavana/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/h;->p()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/h;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/h;->t()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-static {v0}, Lie/g;->c(Lcom/iab/omid/library/hisavana/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-static {v0}, Lie/g;->i(Lcom/iab/omid/library/hisavana/adsession/h;)V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/h;->u()V

    return-void
.end method
