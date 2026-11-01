.class Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/e5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->g(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->pause()V

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;->a()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->k(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->l(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$d;->b()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$c;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->play()V

    :cond_4
    :goto_0
    return-void
.end method
