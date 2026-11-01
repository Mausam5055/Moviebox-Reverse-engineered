.class public Lcom/iab/omid/library/mmadbridge/adsession/h;
.super Lcom/iab/omid/library/mmadbridge/adsession/b;


# instance fields
.field private final a:Lcom/iab/omid/library/mmadbridge/adsession/d;

.field private final b:Lcom/iab/omid/library/mmadbridge/adsession/c;

.field private final c:Lcom/iab/omid/library/mmadbridge/internal/f;

.field private d:Lqe/a;

.field private e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;)V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/c;Lcom/iab/omid/library/mmadbridge/adsession/d;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/b;-><init>()V

    new-instance v0, Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-direct {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->b:Lcom/iab/omid/library/mmadbridge/adsession/c;

    iput-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->a:Lcom/iab/omid/library/mmadbridge/adsession/d;

    iput-object p3, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->m(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->c()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->c()Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/mmadbridge/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/iab/omid/library/mmadbridge/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->g()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, v1, p2}, Lcom/iab/omid/library/mmadbridge/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lcom/iab/omid/library/mmadbridge/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/adsession/d;->j()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/iab/omid/library/mmadbridge/publisher/a;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->y()V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->b(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    iget-object p2, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->e(Lcom/iab/omid/library/mmadbridge/adsession/c;)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/c;->c()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/mmadbridge/adsession/h;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->n()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lqe/a;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lqe/a;

    invoke-direct {v0, p1}, Lqe/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lqe/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/mmadbridge/internal/f;->c(Landroid/view/View;Lcom/iab/omid/library/mmadbridge/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lqe/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->u()V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->d(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->o()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AdView is null"

    invoke-static {p1, v0}, Loe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->n()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->m(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->a()V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->i(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;->f()V

    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/internal/f;->g(Landroid/view/View;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/c;->e()Lcom/iab/omid/library/mmadbridge/internal/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/internal/c;->f(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/i;->d()Lcom/iab/omid/library/mmadbridge/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/i;->c()F

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->b(F)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/a;->a()Lcom/iab/omid/library/mmadbridge/internal/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/mmadbridge/internal/a;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->l(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    iget-object v1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->a:Lcom/iab/omid/library/mmadbridge/adsession/d;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->f(Lcom/iab/omid/library/mmadbridge/adsession/h;Lcom/iab/omid/library/mmadbridge/adsession/d;)V

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqe/a;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method k(Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->l()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->m(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->j:Z

    return-void
.end method

.method public n()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->d:Lqe/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->c:Lcom/iab/omid/library/mmadbridge/internal/f;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/internal/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->g:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->e:Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->b:Lcom/iab/omid/library/mmadbridge/adsession/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/c;->b()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->b:Lcom/iab/omid/library/mmadbridge/adsession/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/c;->c()Z

    move-result v0

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->f:Z

    return v0
.end method

.method x()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->h()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->i:Z

    return-void
.end method

.method y()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->l()V

    invoke-virtual {p0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->x()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/h;->j:Z

    return-void
.end method
