.class final Landroidx/media3/exoplayer/source/MergingMediaSource$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/source/r$b;

.field private final b:Landroidx/media3/exoplayer/source/q;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->a:Landroidx/media3/exoplayer/source/r$b;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->b:Landroidx/media3/exoplayer/source/q;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/source/q;Landroidx/media3/exoplayer/source/MergingMediaSource$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource$c;-><init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/source/q;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/q;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->b:Landroidx/media3/exoplayer/source/q;

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/exoplayer/source/MergingMediaSource$c;)Landroidx/media3/exoplayer/source/r$b;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$c;->a:Landroidx/media3/exoplayer/source/r$b;

    return-object p0
.end method
