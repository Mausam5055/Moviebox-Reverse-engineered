.class public Lz6/d;
.super Lz6/a;


# instance fields
.field private m:Z

.field private n:I

.field private o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lz6/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private x(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/J0;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    invoke-static {v0, p2, p1, p3}, Lcom/cloud/hisavana/sdk/m0;->a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string p3, "NativeApi"

    const-string v0, "onOmidRegister"

    invoke-virtual {p2, p3, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private z()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lz6/d;->o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lz6/d;->n:I

    return-void
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Lz6/d;->m:Z

    return-void
.end method

.method public C(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)V
    .locals 1

    :try_start_0
    invoke-static {}, La7/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lz6/d;->o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->E(Lcom/cloud/hisavana/sdk/q3;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public E(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->I(Lcom/cloud/hisavana/sdk/q3;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "NativeApi"

    const-string v1, "infos is empty, return"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 2

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/u3;->G(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string v0, "NativeApi"

    const-string v1, "getAdChoicesView"

    invoke-virtual {p2, v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public t(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 2

    iget-object v0, p0, Lz6/a;->a:Lcom/cloud/hisavana/sdk/G;

    instance-of v1, v0, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u3;->H(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/u3;->V(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x45c

    return p1
.end method

.method public v(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v1

    instance-of v1, v1, Lcom/cloud/hisavana/sdk/u3;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/u3;->V(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "s_err_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_OUTER_INVALID:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, v1}, Lz6/a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_1
    return v0
.end method

.method public w()V
    .locals 2

    invoke-virtual {p0}, Lz6/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>()V

    iget-boolean v1, p0, Lz6/d;->m:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
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

    iget v1, p0, Lz6/d;->n:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->a(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lz6/a;->g:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->o(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lz6/a;->h:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->v(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lz6/d;->o:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->d(Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lz6/a;->i:Lb7/a;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->b(Lb7/a;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3$b;->g()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    invoke-direct {p0}, Lz6/d;->z()V

    new-instance v1, Lcom/cloud/hisavana/sdk/u3;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/u3;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    new-instance v0, Lz6/a$a;

    invoke-direct {v0, p0}, Lz6/a$a;-><init>(Lz6/a;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public y(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    instance-of v0, v0, Lcom/cloud/hisavana/sdk/u3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lz6/a;->l:Landroidx/collection/b;

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0, v1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/z3;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/u3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/u3;->Q(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->getMarkViews(Ljava/util/List;)V

    :cond_0
    invoke-direct {p0, p1, p3, p2}, Lz6/d;->x(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :cond_1
    return-void
.end method
