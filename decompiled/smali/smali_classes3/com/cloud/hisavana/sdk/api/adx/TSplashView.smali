.class public Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;
    }
.end annotation


# instance fields
.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/view/View;

.field private o:Lcom/cloud/hisavana/sdk/api/listener/g;

.field private p:Landroid/content/Context;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Z

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->s:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Z

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->s:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/content/Context;

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)Lcom/cloud/hisavana/sdk/api/listener/g;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->o:Lcom/cloud/hisavana/sdk/api/listener/g;

    return-object p0
.end method

.method private d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->m:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->d()V

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->n:Landroid/view/View;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->m:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public loadAd()V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->q:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->s:Z

    invoke-static {v0, v1, v2}, La7/c;->s(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/cloud/hisavana/sdk/q3$b;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/q3$b;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->i(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->r(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:I

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->l(I)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->j(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Lb7/b;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->c(Lb7/b;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->o(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->v(Z)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Lb7/a;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/q3$b;->b(Lb7/a;)Lcom/cloud/hisavana/sdk/q3$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3$b;->g()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/i1;

    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/i1;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/TSplashView;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->E()V

    return-void
.end method

.method public setLiteInit(Ljava/lang/String;Z)Lcom/cloud/hisavana/sdk/api/adx/TSplashView;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->r:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->q:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->s:Z

    return-object p0
.end method

.method public setLogoLayout(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->n:Landroid/view/View;

    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->t:Ljava/lang/Float;

    return-void
.end method

.method public setSkipListener(Lcom/cloud/hisavana/sdk/api/listener/g;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->o:Lcom/cloud/hisavana/sdk/api/listener/g;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->d()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->m:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->l0(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->t:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->g0(Ljava/lang/Float;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->k0(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

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

    const-string v3, "TSplashView show error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssp"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TSplashView;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/i1;->j0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
