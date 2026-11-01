.class public final Ly9/c;
.super Ljava/lang/Object;

# interfaces
.implements Ly9/e;


# instance fields
.field private final a:Ly9/e;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ly9/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9/c;->a:Ly9/e;

    iput-object p2, p0, Ly9/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/b0$a;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/offline/d;

    iget-object v1, p0, Ly9/c;->a:Ly9/e;

    invoke-interface {v1}, Ly9/e;->a()Lcom/google/android/exoplayer2/upstream/b0$a;

    move-result-object v1

    iget-object v2, p0, Ly9/c;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/d;)Lcom/google/android/exoplayer2/upstream/b0$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/offline/d;

    iget-object v1, p0, Ly9/c;->a:Ly9/e;

    invoke-interface {v1, p1, p2}, Ly9/e;->b(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/d;)Lcom/google/android/exoplayer2/upstream/b0$a;

    move-result-object p1

    iget-object p2, p0, Ly9/c;->b:Ljava/util/List;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V

    return-object v0
.end method
