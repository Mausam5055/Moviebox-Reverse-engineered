.class public final Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/intercept/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->onShowResolutionRatio(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

.field final synthetic b:Lcom/transsion/player/longvideo/intercept/d;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;->a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    iput-object p2, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;->b:Lcom/transsion/player/longvideo/intercept/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->d(Lcom/transsion/player/longvideo/intercept/d;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ad not ready, please try again later"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->b(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public c()Lgo/b;
    .locals 1

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->a(Lcom/transsion/player/longvideo/intercept/d;)Lgo/b;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->e(Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;->a:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView$a;->b:Lcom/transsion/player/longvideo/intercept/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/longvideo/intercept/d;->d()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->g(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->f(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/d$a;->c(Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method
