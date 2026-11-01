.class final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/n2;

.field public final b:Z

.field public final c:J

.field public final d:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/n2;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->a:Lcom/google/android/exoplayer2/n2;

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->b:Z

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->c:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;->d:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/n2;ZJJLcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$g;-><init>(Lcom/google/android/exoplayer2/n2;ZJJ)V

    return-void
.end method
