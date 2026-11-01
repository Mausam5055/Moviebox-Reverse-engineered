.class public final Lcom/transsion/videodetail/StreamDetailFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/StreamDetailFragment;->l2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/StreamDetailFragment$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iput-object p2, p0, Lcom/transsion/videodetail/StreamDetailFragment$g;->b:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$g;->b:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/videodetail/StreamDetailFragment;->V0(Lcom/transsion/videodetail/StreamDetailFragment;J)V

    :cond_1
    :goto_0
    return-void
.end method
