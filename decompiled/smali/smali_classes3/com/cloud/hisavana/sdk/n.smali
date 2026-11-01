.class public final Lcom/cloud/hisavana/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/m4;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/cloud/hisavana/sdk/q4;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NoOpVideoPlayer"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/n;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/n;->c:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/n;->d:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/widget/video/MediaTextureView;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/n;->e:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    const-string p1, "path"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/n;->a:Ljava/lang/String;

    const-string p3, "ExoPlayer unavailable, notifying error via listener"

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/n;->b:Lcom/cloud/hisavana/sdk/q4;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/cloud/hisavana/sdk/p;->e:Lcom/cloud/hisavana/sdk/p$d;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/p$d;->a()Lcom/cloud/hisavana/sdk/p;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/q4;->a(Lcom/cloud/hisavana/sdk/p;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lcom/cloud/hisavana/sdk/q4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n;->b:Lcom/cloud/hisavana/sdk/q4;

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/n;->c:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/n;->b:Lcom/cloud/hisavana/sdk/q4;

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/n;->c:Z

    return-void
.end method
