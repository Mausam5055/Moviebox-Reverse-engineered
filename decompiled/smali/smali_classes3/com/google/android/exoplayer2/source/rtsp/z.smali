.class final Lcom/google/android/exoplayer2/source/rtsp/z;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/z;->a:I

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/z;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
