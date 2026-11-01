.class public final Lz6/b;
.super Lz6/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz6/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public s()V
    .locals 2

    invoke-virtual {p0}, Lz6/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>()V

    const/4 v1, 0x3

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

    new-instance v1, Lcom/cloud/hisavana/sdk/s3;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/s3;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    new-instance v0, Lz6/a$a;

    invoke-direct {v0, p0}, Lz6/a$a;-><init>(Lz6/a;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/s3;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {v1, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/s3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/s3;->M()V

    :cond_0
    return-void
.end method
