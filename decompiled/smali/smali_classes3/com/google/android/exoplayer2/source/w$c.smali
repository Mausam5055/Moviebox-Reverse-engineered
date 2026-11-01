.class final Lcom/google/android/exoplayer2/source/w$c;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/w;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/w;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/source/w$c;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    return p0
.end method


# virtual methods
.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w;->R(ILcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w;->D(I)Z

    move-result v0

    return v0
.end method

.method public maybeThrowError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/w;->L(I)V

    return-void
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/w$c;->b:Lcom/google/android/exoplayer2/source/w;

    iget v1, p0, Lcom/google/android/exoplayer2/source/w$c;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/w;->V(IJ)I

    move-result p1

    return p1
.end method
