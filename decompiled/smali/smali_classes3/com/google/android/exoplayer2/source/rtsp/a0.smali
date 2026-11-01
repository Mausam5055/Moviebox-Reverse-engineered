.class final Lcom/google/android/exoplayer2/source/rtsp/a0;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/d0;

.field public final c:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/source/rtsp/d0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a0;->a:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/a0;->b:Lcom/google/android/exoplayer2/source/rtsp/d0;

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/a0;->c:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
