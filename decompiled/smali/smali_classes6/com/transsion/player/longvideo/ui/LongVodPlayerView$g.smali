.class public final Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/player/longvideo/helper/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->a1(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;


# direct methods
.method constructor <init>(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0, p1, p2}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$bottomControllerVisibility(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZZ)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$showToast(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/postdetail/layer/local/c0;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/layer/local/c0;->r(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$setSubSelectId$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetSelectId, selectId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "LongVodPlayerView"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/LongVodPlayerView$g;->a:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    invoke-static {v0}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->access$getVideoDot$p(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)Lcom/transsion/postdetail/layer/local/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/c0;->s(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
