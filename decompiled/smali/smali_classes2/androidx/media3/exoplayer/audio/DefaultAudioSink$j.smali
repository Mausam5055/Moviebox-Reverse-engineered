.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/z;

.field public final b:J

.field public final c:J

.field public d:J


# direct methods
.method private constructor <init>(Landroidx/media3/common/z;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->a:Landroidx/media3/common/z;

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->b:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;->c:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/z;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Landroidx/media3/common/z;JJ)V

    return-void
.end method
