.class public final Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tn/lib/view/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 4

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->u0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;Z)V

    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lcn/j;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcn/j;->b:Landroidx/constraintlayout/widget/Group;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->q0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)Lcom/transsion/player/orplayer/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->a:J

    iget-object v2, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-static {v2}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->p0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    const/16 v2, 0x64

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_1
    return-void
.end method

.method public b(Lcom/tn/lib/view/SecondariesSeekBar;JZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iput-wide p2, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->a:J

    :cond_0
    return-void
.end method

.method public c(Lcom/tn/lib/view/SecondariesSeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$c;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->u0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;Z)V

    return-void
.end method
