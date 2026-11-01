.class public final Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field final synthetic b:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->b:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$f;->b:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->N0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;J)V

    :cond_1
    :goto_0
    return-void
.end method
