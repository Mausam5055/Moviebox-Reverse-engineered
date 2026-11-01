.class public final Lcom/google/android/exoplayer2/source/hls/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/hls/playlist/c;

.field public final b:Lcom/google/android/exoplayer2/source/hls/playlist/e;

.field public final c:Lcom/google/android/exoplayer2/source/hls/playlist/d;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/hls/playlist/e;Lcom/google/android/exoplayer2/source/hls/playlist/d;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/h;->b:Lcom/google/android/exoplayer2/source/hls/playlist/e;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/h;->c:Lcom/google/android/exoplayer2/source/hls/playlist/d;

    new-instance p2, Lcom/google/android/exoplayer2/source/hls/playlist/c;

    iget-object v1, p1, Ly9/d;->a:Ljava/lang/String;

    iget-object v2, p1, Ly9/d;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->e:Ljava/util/List;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->f:Ljava/util/List;

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->g:Ljava/util/List;

    iget-object v6, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->h:Ljava/util/List;

    iget-object v7, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->i:Ljava/util/List;

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->j:Lcom/google/android/exoplayer2/o1;

    iget-object v9, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->k:Ljava/util/List;

    iget-boolean v10, p1, Ly9/d;->c:Z

    iget-object v11, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->l:Ljava/util/Map;

    iget-object v12, p1, Lcom/google/android/exoplayer2/source/hls/playlist/e;->m:Ljava/util/List;

    move-object v0, p2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/exoplayer2/source/hls/playlist/c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/o1;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/h;->a:Lcom/google/android/exoplayer2/source/hls/playlist/c;

    return-void
.end method
