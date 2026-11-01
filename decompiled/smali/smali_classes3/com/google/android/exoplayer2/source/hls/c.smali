.class public final Lcom/google/android/exoplayer2/source/hls/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/f;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/k$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/upstream/k;
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/c;->a:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object p1

    return-object p1
.end method
