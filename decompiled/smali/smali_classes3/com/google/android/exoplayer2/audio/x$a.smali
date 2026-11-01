.class public Lcom/google/android/exoplayer2/audio/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3d090

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x$a;->a:I

    const v1, 0xb71b0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/x$a;->b:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/exoplayer2/audio/x$a;->c:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x$a;->d:I

    const v0, 0x2faf080

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x$a;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/x$a;->f:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/audio/x$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/x$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/audio/x$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/x$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/audio/x$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/x$a;->c:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/audio/x$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/x$a;->d:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/audio/x$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/x$a;->e:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/audio/x$a;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/audio/x$a;->f:I

    return p0
.end method


# virtual methods
.method public g()Lcom/google/android/exoplayer2/audio/x;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/audio/x;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/audio/x;-><init>(Lcom/google/android/exoplayer2/audio/x$a;)V

    return-object v0
.end method
