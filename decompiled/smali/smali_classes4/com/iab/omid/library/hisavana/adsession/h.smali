.class public Lcom/iab/omid/library/hisavana/adsession/h;
.super Lcom/iab/omid/library/hisavana/adsession/b;


# instance fields
.field private final a:Lcom/iab/omid/library/hisavana/adsession/d;

.field private final b:Lcom/iab/omid/library/hisavana/adsession/c;

.field private final c:Lcom/iab/omid/library/hisavana/internal/f;

.field private d:Lke/a;

.field private e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method constructor <init>(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;)V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/iab/omid/library/hisavana/adsession/h;-><init>(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/hisavana/adsession/c;Lcom/iab/omid/library/hisavana/adsession/d;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/adsession/b;-><init>()V

    new-instance v0, Lcom/iab/omid/library/hisavana/internal/f;

    invoke-direct {v0}, Lcom/iab/omid/library/hisavana/internal/f;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/adsession/h;->b:Lcom/iab/omid/library/hisavana/adsession/c;

    iput-object p2, p0, Lcom/iab/omid/library/hisavana/adsession/h;->a:Lcom/iab/omid/library/hisavana/adsession/d;

    iput-object p3, p0, Lcom/iab/omid/library/hisavana/adsession/h;->h:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/iab/omid/library/hisavana/adsession/h;->j(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object v0

    sget-object v1, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/b;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->e()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->f()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p3, v1, p2}, Lcom/iab/omid/library/hisavana/publisher/b;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    goto :goto_2

    :cond_1
    :goto_1
    new-instance v0, Lcom/iab/omid/library/hisavana/publisher/a;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->i()Landroid/webkit/WebView;

    move-result-object p2

    invoke-direct {v0, p3, p2}, Lcom/iab/omid/library/hisavana/publisher/a;-><init>(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->u()V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/iab/omid/library/hisavana/internal/c;->b(Lcom/iab/omid/library/hisavana/adsession/h;)V

    iget-object p2, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {p2, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->e(Lcom/iab/omid/library/hisavana/adsession/c;)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impression event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->c()Ljava/util/Collection;

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

    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->m()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v1, v1, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lke/a;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Loaded event can only be sent once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lke/a;

    invoke-direct {v0, p1}, Lke/a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lke/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iab/omid/library/hisavana/internal/f;->c(Landroid/view/View;Lcom/iab/omid/library/hisavana/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lke/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->v()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->q()V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/internal/c;->d(Lcom/iab/omid/library/hisavana/adsession/h;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->l()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->m()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/hisavana/adsession/h;->j(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a()V

    invoke-direct {p0, p1}, Lcom/iab/omid/library/hisavana/adsession/h;->g(Landroid/view/View;)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/internal/c;->f(Lcom/iab/omid/library/hisavana/adsession/h;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/i;->d()Lcom/iab/omid/library/hisavana/internal/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/i;->c()F

    move-result v0

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-virtual {v1, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b(F)V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/a;->a()Lcom/iab/omid/library/hisavana/internal/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/internal/a;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->i(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/adsession/h;->a:Lcom/iab/omid/library/hisavana/adsession/d;

    invoke-virtual {v0, p0, v1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->f(Lcom/iab/omid/library/hisavana/adsession/h;Lcom/iab/omid/library/hisavana/adsession/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->o()Z

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

    check-cast v1, Lke/a;

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

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->e:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    return-object v0
.end method

.method public m()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->d:Lke/a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->b:Lcom/iab/omid/library/hisavana/adsession/c;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/adsession/c;->b()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->f:Z

    return v0
.end method

.method t()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->f()V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->r()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->i:Z

    return-void
.end method

.method u()V
    .locals 1

    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->i()V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->j:Z

    return-void
.end method

.method public v()V
    .locals 1

    iget-boolean v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/adsession/h;->c:Lcom/iab/omid/library/hisavana/internal/f;

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/f;->f()V

    return-void
.end method
