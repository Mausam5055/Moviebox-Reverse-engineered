.class public final Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;
.super Ljava/lang/Object;

# interfaces
.implements Leo/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:F

.field final synthetic e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getGestureListener$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/ui/longvideo/a$b;->a()V

    :cond_0
    return-void
.end method

.method public b(FF)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getGestureListener$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/ui/longvideo/a$b;->b(FF)V

    :cond_0
    return-void
.end method

.method public c(FF)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->b:Z

    const/4 v1, 0x0

    const-string v2, "volumeControl"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Leo/n;->f(Z)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Leo/n;->b()F

    move-result v0

    iput v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->b:Z

    :cond_2
    sub-float/2addr p1, p2

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {p2}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    iget p2, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->d:F

    invoke-interface {v1, p2, p1}, Leo/n;->a(FF)V

    return-void
.end method

.method public d(FF)V
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->a:Z

    const/4 v1, 0x0

    const-string v2, "volumeControl"

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Leo/n;->f(Z)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Leo/n;->c()I

    move-result v0

    iput v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->a:Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getVolumeControl$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Leo/n;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-interface {v1, p1, p2, v0}, Leo/n;->d(FFI)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getGestureListener$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/ui/longvideo/a$b;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->a:Z

    iput-boolean v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->b:Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getGestureListener$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/ui/longvideo/a$b;->onDoubleTap(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView$a;->e:Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;->access$getGestureListener$p(Lcom/transsion/player/ui/longvideo/ORLongVodPlayerView;)Lcom/transsion/player/ui/longvideo/a$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/transsion/player/ui/longvideo/a$b;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
