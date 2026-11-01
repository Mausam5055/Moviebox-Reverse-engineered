.class public final Lcom/transsion/baseui/music/MusicFloatView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baseui/music/MusicFloatView;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baseui/music/MusicFloatView;


# direct methods
.method constructor <init>(Lcom/transsion/baseui/music/MusicFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$a;->a:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    invoke-interface {p1}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$a;->a:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-static {p1}, Lcom/transsion/baseui/music/MusicFloatView;->access$getMHandler(Lcom/transsion/baseui/music/MusicFloatView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$a;->a:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-static {p1}, Lcom/transsion/baseui/music/MusicFloatView;->access$getMHandler(Lcom/transsion/baseui/music/MusicFloatView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/baseui/music/MusicFloatView$a;->a:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-static {v0}, Lcom/transsion/baseui/music/MusicFloatView;->access$getRefreshTimedTask$p(Lcom/transsion/baseui/music/MusicFloatView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    iget-object p1, p0, Lcom/transsion/baseui/music/MusicFloatView$a;->a:Lcom/transsion/baseui/music/MusicFloatView;

    invoke-virtual {p1}, Lcom/transsion/baseui/music/MusicFloatView;->refresh()V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->e(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/u;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/e;->f(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    return-void
.end method
