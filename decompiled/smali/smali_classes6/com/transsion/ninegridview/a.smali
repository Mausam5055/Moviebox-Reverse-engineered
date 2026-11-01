.class public final Lcom/transsion/ninegridview/a;
.super Ljava/lang/Object;

# interfaces
.implements Lpn/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ninegridview/a$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/ninegridview/a$a;

.field private static final i:Lbo/d;


# instance fields
.field private a:Lcom/transsion/player/orplayer/g;

.field private b:Lqn/a;

.field private c:Lpn/c;

.field private d:Lnh/n;

.field private e:Z

.field private f:Lpn/a;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v0, Lcom/transsion/ninegridview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ninegridview/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ninegridview/a;->h:Lcom/transsion/ninegridview/a$a;

    new-instance v0, Lbo/d;

    move-object v2, v0

    sget-object v3, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    const v21, 0x1ff86

    const/16 v22, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    const/16 v7, 0x3e8

    const/16 v8, 0xc8

    const/16 v9, 0xa

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v22}, Lbo/d;-><init>(Lcom/transsion/player/config/RenderType;ZIIIIIIJIIZZZZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ninegridview/a;->i:Lbo/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lcom/transsion/ninegridview/a;)Lpn/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ninegridview/a;->f:Lpn/a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ninegridview/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/ninegridview/a;->e:Z

    return p0
.end method

.method public static final synthetic d()Lbo/d;
    .locals 1

    sget-object v0, Lcom/transsion/ninegridview/a;->i:Lbo/d;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/ninegridview/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ninegridview/a;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/ninegridview/a;->j(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/g;

    iget-object v1, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lqn/a;->a()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    iget-object v1, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lpn/c;->e()V

    :cond_2
    iput-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    sget-object v1, Lnh/m;->a:Lnh/m;

    iget-object v2, p0, Lcom/transsion/ninegridview/a;->d:Lnh/n;

    invoke-virtual {v1, v2}, Lnh/m;->m(Lnh/n;)V

    iput-object v0, p0, Lcom/transsion/ninegridview/a;->d:Lnh/n;

    return-void
.end method

.method public final g()Lqn/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    return-object v0
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    if-nez v0, :cond_0

    new-instance v0, Lpn/c;

    invoke-direct {v0}, Lpn/c;-><init>()V

    iput-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    :cond_0
    iget-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lpn/c;->e()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->d:Lnh/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/ninegridview/a$b;

    invoke-direct {v0, p0}, Lcom/transsion/ninegridview/a$b;-><init>(Lcom/transsion/ninegridview/a;)V

    iput-object v0, p0, Lcom/transsion/ninegridview/a;->d:Lnh/n;

    sget-object v1, Lnh/m;->a:Lnh/m;

    invoke-virtual {v1, v0}, Lnh/m;->l(Lnh/n;)V

    :cond_0
    return-void
.end method

.method public final j(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/player/ui/ORPlayerView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/transsion/player/config/RenderType;->TEXTURE_VIEW:Lcom/transsion/player/config/RenderType;

    invoke-direct {v0, v1, v3}, Lcom/transsion/player/ui/ORPlayerView;-><init>(Landroid/content/Context;Lcom/transsion/player/config/RenderType;)V

    new-instance v1, Lcom/transsion/player/orplayer/g$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lcom/transsion/player/orplayer/g$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/transsion/player/orplayer/g$a;->a()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    sget-object v1, Lcom/transsion/ninegridview/a;->i:Lbo/d;

    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/g;->setPlayerConfig(Lbo/d;)V

    invoke-virtual {v0}, Lcom/transsion/player/ui/ORPlayerView;->getTextureView()Landroid/view/TextureView;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/g;->setTextureView(Landroid/view/TextureView;)V

    sget-object v1, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/transsion/player/orplayer/g;->setMute(Z)V

    new-instance v1, Lqn/a;

    invoke-direct {v1, p1, v0}, Lqn/a;-><init>(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;)V

    iput-object v1, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    new-instance v0, Lpn/a;

    invoke-direct {v0}, Lpn/a;-><init>()V

    iget-object v1, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    invoke-virtual {v0, v1}, Lpn/a;->b(Lqn/a;)V

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iput-object v0, p0, Lcom/transsion/ninegridview/a;->f:Lpn/a;

    iput-object p1, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/g;

    iget-object p1, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    invoke-virtual {p1, v0}, Lpn/c;->k(Lqn/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ninegridview/a;->i()V

    sget-object v1, Llg/a;->a:Llg/a$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "GifPlayerManager"

    const-string v3, "initPlayer"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->a:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->b:Lqn/a;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lqn/a;->x(I)V

    :cond_0
    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ninegridview/a;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/transsion/ninegridview/a;->h()V

    iget-object v0, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lpn/c;->j(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/ninegridview/a;->c:Lpn/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lpn/c;->l(Lpn/d;)V

    :cond_1
    return-void
.end method
