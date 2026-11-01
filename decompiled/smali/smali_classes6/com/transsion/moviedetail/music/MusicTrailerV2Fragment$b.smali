.class public final Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->initListener()V
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

    iput-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->r0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    sub-long v2, v0, v2

    const-wide/16 v6, 0x1f4

    cmp-long p1, v2, v6

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v4, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->a:J

    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->s0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)V

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->a:J

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment$b;->b:Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;

    invoke-static {p1}, Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;->t0(Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;)V

    :goto_1
    return-void
.end method
