.class public Lz6/f;
.super Lz6/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/f$a;
    }
.end annotation


# instance fields
.field private m:Landroid/view/View;

.field private n:Lcom/cloud/hisavana/sdk/api/listener/g;

.field private o:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lz6/a;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lz6/f;->q:Z

    iput-boolean p2, p0, Lz6/f;->r:Z

    iput-boolean p2, p0, Lz6/f;->s:Z

    iput-object p1, p0, Lz6/f;->o:Landroid/content/Context;

    return-void
.end method

.method static synthetic s(Lz6/f;)Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 0

    iget-object p0, p0, Lz6/f;->n:Lcom/cloud/hisavana/sdk/api/listener/g;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    invoke-super {p0}, Lz6/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lz6/f;->m:Landroid/view/View;

    return-void
.end method

.method public t()V
    .locals 3

    iget-boolean v0, p0, Lz6/f;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz6/f;->o:Landroid/content/Context;

    iget-object v1, p0, Lz6/f;->p:Ljava/lang/String;

    iget-boolean v2, p0, Lz6/f;->r:Z

    invoke-static {v0, v1, v2}, La7/c;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lz6/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->i(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lz6/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lz6/a;->c:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->r(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget v1, p0, Lz6/a;->d:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->l(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lz6/a;->e:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->j(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lz6/a;->j:Lb7/b;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->c(Lb7/b;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lz6/a;->g:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->o(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lz6/a;->h:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->v(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lz6/a;->i:Lb7/a;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->b(Lb7/a;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3$b;->g()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/i1;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    new-instance v0, Lz6/f$a;

    invoke-direct {v0, p0}, Lz6/f$a;-><init>(Lz6/f;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public u(Ljava/lang/String;Z)Lz6/f;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz6/f;->q:Z

    iput-object p1, p0, Lz6/f;->p:Ljava/lang/String;

    iput-boolean p2, p0, Lz6/f;->r:Z

    return-object p0
.end method

.method public v(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lz6/f;->m:Landroid/view/View;

    return-void
.end method

.method public w(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lz6/f;->t:Ljava/lang/Float;

    return-void
.end method

.method public x(Lcom/cloud/hisavana/sdk/api/listener/g;)V
    .locals 0

    iput-object p1, p0, Lz6/f;->n:Lcom/cloud/hisavana/sdk/api/listener/g;

    return-void
.end method

.method public y()V
    .locals 4

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/i1;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-boolean v1, p0, Lz6/f;->s:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->p0(Z)V

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lz6/f;->t:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->g0(Ljava/lang/Float;)V

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lz6/f;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->k0(Landroid/view/View;)V

    iget-object v0, p0, Lz6/a;->l:Landroidx/collection/b;

    iget-object v1, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSplash show error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lz6/f;->o:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->o0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
