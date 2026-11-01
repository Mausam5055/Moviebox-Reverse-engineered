.class Landroidx/media3/exoplayer/mediacodec/p$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/mediacodec/p;->e(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/mediacodec/p;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p$a;->a:Landroidx/media3/exoplayer/mediacodec/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoudnessCodecUpdate(Landroid/media/MediaCodec;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/p$a;->a:Landroidx/media3/exoplayer/mediacodec/p;

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/p;->a(Landroidx/media3/exoplayer/mediacodec/p;)Landroidx/media3/exoplayer/mediacodec/p$b;

    move-result-object p1

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/p$b;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
