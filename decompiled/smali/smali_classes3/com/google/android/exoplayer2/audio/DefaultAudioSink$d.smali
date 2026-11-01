.class public final Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/audio/f;

.field private b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

.field private c:Z

.field private d:Z

.field private e:I

.field f:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/exoplayer2/audio/f;->c:Lcom/google/android/exoplayer2/audio/f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Lcom/google/android/exoplayer2/audio/f;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->e:I

    sget-object v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;->a:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->f:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Lcom/google/android/exoplayer2/audio/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Lcom/google/android/exoplayer2/audio/f;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->e:I

    return p0
.end method


# virtual methods
.method public f()Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$f;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->b:Lcom/google/android/exoplayer2/audio/DefaultAudioSink$b;

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;Lcom/google/android/exoplayer2/audio/DefaultAudioSink$1;)V

    return-object v0
.end method

.method public g(Lcom/google/android/exoplayer2/audio/f;)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->a:Lcom/google/android/exoplayer2/audio/f;

    return-object p0
.end method

.method public h(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->d:Z

    return-object p0
.end method

.method public i(Z)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->c:Z

    return-object p0
.end method

.method public j(I)Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$d;->e:I

    return-object p0
.end method
