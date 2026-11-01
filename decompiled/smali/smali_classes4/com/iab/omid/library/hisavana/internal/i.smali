.class public Lcom/iab/omid/library/hisavana/internal/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/hisavana/internal/d$a;
.implements Lge/c;


# static fields
.field private static f:Lcom/iab/omid/library/hisavana/internal/i;


# instance fields
.field private a:F

.field private final b:Lge/e;

.field private final c:Lge/b;

.field private d:Lge/d;

.field private e:Lcom/iab/omid/library/hisavana/internal/c;


# direct methods
.method public constructor <init>(Lge/e;Lge/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->a:F

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/internal/i;->b:Lge/e;

    iput-object p2, p0, Lcom/iab/omid/library/hisavana/internal/i;->c:Lge/b;

    return-void
.end method

.method private a()Lcom/iab/omid/library/hisavana/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->e:Lcom/iab/omid/library/hisavana/internal/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/c;->e()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->e:Lcom/iab/omid/library/hisavana/internal/c;

    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->e:Lcom/iab/omid/library/hisavana/internal/c;

    return-object v0
.end method

.method public static d()Lcom/iab/omid/library/hisavana/internal/i;
    .locals 3

    sget-object v0, Lcom/iab/omid/library/hisavana/internal/i;->f:Lcom/iab/omid/library/hisavana/internal/i;

    if-nez v0, :cond_0

    new-instance v0, Lge/b;

    invoke-direct {v0}, Lge/b;-><init>()V

    new-instance v1, Lge/e;

    invoke-direct {v1}, Lge/e;-><init>()V

    new-instance v2, Lcom/iab/omid/library/hisavana/internal/i;

    invoke-direct {v2, v1, v0}, Lcom/iab/omid/library/hisavana/internal/i;-><init>(Lge/e;Lge/b;)V

    sput-object v2, Lcom/iab/omid/library/hisavana/internal/i;->f:Lcom/iab/omid/library/hisavana/internal/i;

    :cond_0
    sget-object v0, Lcom/iab/omid/library/hisavana/internal/i;->f:Lcom/iab/omid/library/hisavana/internal/i;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iput p1, p0, Lcom/iab/omid/library/hisavana/internal/i;->a:F

    invoke-direct {p0}, Lcom/iab/omid/library/hisavana/internal/i;->a()Lcom/iab/omid/library/hisavana/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/c;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iab/omid/library/hisavana/adsession/h;

    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/adsession/h;->l()Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->q()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->o()V

    :goto_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->c:Lge/b;

    invoke-virtual {v0}, Lge/b;->a()Lge/a;

    move-result-object v0

    iget-object v1, p0, Lcom/iab/omid/library/hisavana/internal/i;->b:Lge/e;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v2, p1, v0, p0}, Lge/e;->a(Landroid/os/Handler;Landroid/content/Context;Lge/a;Lge/c;)Lge/d;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/internal/i;->d:Lge/d;

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->a:F

    return v0
.end method

.method public e()V
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iab/omid/library/hisavana/internal/d;->b(Lcom/iab/omid/library/hisavana/internal/d$a;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/d;->i()V

    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->q()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->d:Lge/d;

    invoke-virtual {v0}, Lge/d;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->p()Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->s()V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/b;->k()Lcom/iab/omid/library/hisavana/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/hisavana/internal/d;->j()V

    iget-object v0, p0, Lcom/iab/omid/library/hisavana/internal/i;->d:Lge/d;

    invoke-virtual {v0}, Lge/d;->e()V

    return-void
.end method
