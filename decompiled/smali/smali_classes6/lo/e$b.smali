.class public final Llo/e$b;
.super Landroidx/media3/exoplayer/util/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llo/e;->v(Lcom/transsion/player/exo/ORExoDecoderType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic f:Llo/e;


# direct methods
.method constructor <init>(Llo/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Llo/e$b;->f:Llo/e;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/util/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public R(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoderName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/util/a;->R(Ly1/c$a;Ljava/lang/String;JJ)V

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object p3, p0, Llo/e$b;->f:Llo/e;

    invoke-static {p3}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onExoAudioDecoderInitialize, decoderName:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Loo/e;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public q(Ly1/c$a;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decoderName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Landroidx/media3/exoplayer/util/a;->q(Ly1/c$a;Ljava/lang/String;JJ)V

    sget-object p1, Loo/e;->a:Loo/e;

    iget-object p3, p0, Llo/e$b;->f:Llo/e;

    invoke-static {p3}, Llo/e;->l(Llo/e;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onExoVideoDecoderInitialize, decoderName:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Loo/e;->h(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public y(Ly1/c$a;Landroidx/media3/common/i0;)V
    .locals 1

    const-string v0, "eventTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/util/a;->y(Ly1/c$a;Landroidx/media3/common/i0;)V

    iget-object v0, p0, Llo/e$b;->f:Llo/e;

    invoke-static {v0, p1, p2}, Llo/e;->p(Llo/e;Ly1/c$a;Landroidx/media3/common/i0;)V

    return-void
.end method
