.class public Lcom/mbridge/msdk/video/bt/module/orglistener/c;
.super Lcom/mbridge/msdk/video/bt/module/orglistener/b;


# instance fields
.field private c:Lcom/mbridge/msdk/video/bt/module/listener/b;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/bt/module/listener/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/video/bt/module/orglistener/b;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz v0, :cond_0

    const-string v0, "H5ShowRewardListener"

    const-string v1, "onAutoLoad"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz p1, :cond_0

    const-string p1, "H5ShowRewardListener"

    const-string v0, "onAdShow"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz p1, :cond_0

    const-string p1, "H5ShowRewardListener"

    const-string v0, "onShowFail"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;ZLcom/mbridge/msdk/videocommon/entity/c;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz p1, :cond_0

    const-string p1, "H5ShowRewardListener"

    const-string v0, "onAdClose"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;ZLcom/mbridge/msdk/videocommon/entity/c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz v0, :cond_0

    const-string v0, "H5ShowRewardListener"

    const-string v1, "onEndcardShow"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/mbridge/msdk/video/bt/module/listener/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz p1, :cond_0

    const-string p1, "H5ShowRewardListener"

    const-string v0, "onVideoAdClicked"

    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Lcom/mbridge/msdk/video/bt/module/listener/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    if-eqz v0, :cond_0

    const-string v0, "H5ShowRewardListener"

    const-string v1, "onVideoComplete"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->c:Lcom/mbridge/msdk/video/bt/module/listener/b;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/orglistener/c;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/mbridge/msdk/video/bt/module/listener/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
