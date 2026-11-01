.class public final Lcom/transsion/videofloat/manager/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lsx/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videofloat/manager/i;->u(Lpx/a;ZLsx/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsx/a;

.field final synthetic b:Lcom/transsion/videofloat/manager/i;


# direct methods
.method constructor <init>(Lsx/a;Lcom/transsion/videofloat/manager/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lsx/a;

    iput-object p2, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lpx/a;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lsx/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsx/a;->a(Lpx/a;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Lpx/a;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    invoke-virtual {p1}, Lpx/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lpx/a;->v()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lpx/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lpx/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/videofloat/manager/i;->k(Lcom/transsion/videofloat/manager/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lsx/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lsx/a;->b(Lpx/a;)V

    :cond_2
    return-void
.end method

.method public c(Lpx/a;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/videofloat/manager/i;->l(Lcom/transsion/videofloat/manager/i;Z)V

    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->a:Lsx/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsx/a;->c(Lpx/a;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/videofloat/manager/i$a;->b:Lcom/transsion/videofloat/manager/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/videofloat/manager/i;->m(Lcom/transsion/videofloat/manager/i;Lcom/transsion/videofloat/view/VideoFloatView;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lpx/a;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/manager/a0;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
