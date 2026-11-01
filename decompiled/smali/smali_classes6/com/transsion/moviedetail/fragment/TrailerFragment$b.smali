.class public final Lcom/transsion/moviedetail/fragment/TrailerFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/view/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/TrailerFragment;->r0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/moviedetail/fragment/TrailerFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/TrailerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 4

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->m0(Lcom/transsion/moviedetail/fragment/TrailerFragment;Z)V

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->i0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object p1

    iget-wide v0, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->a:J

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    invoke-static {v2}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->h0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    const/16 v2, 0x64

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->i0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->i0(Lcom/transsion/moviedetail/fragment/TrailerFragment;)Lcom/transsion/player/orplayer/g;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_0
    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iput-wide p2, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->a:J

    :cond_0
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/TrailerFragment$b;->b:Lcom/transsion/moviedetail/fragment/TrailerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/moviedetail/fragment/TrailerFragment;->m0(Lcom/transsion/moviedetail/fragment/TrailerFragment;Z)V

    return-void
.end method
