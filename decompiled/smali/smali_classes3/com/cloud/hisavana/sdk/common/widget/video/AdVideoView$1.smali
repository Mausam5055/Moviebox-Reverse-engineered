.class Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->getDuration()J

    move-result-wide v2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->getCurrentPosition()J

    move-result-wide v7

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v7

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->c(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/q4;

    move-result-object v1

    move-wide v4, v7

    invoke-interface/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/q4;->c(JJI)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->b(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Lcom/cloud/hisavana/sdk/m4;

    move-result-object v0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m4;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView$1;->this$0:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->d(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    rem-long/2addr v7, v2

    sub-long/2addr v2, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_2
    return-void
.end method
