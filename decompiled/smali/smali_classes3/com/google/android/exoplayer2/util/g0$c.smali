.class final Lcom/google/android/exoplayer2/util/g0$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/g0$b;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/g0$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/g0$c;->a:Lcom/google/android/exoplayer2/util/g0$b;

    return-void
.end method


# virtual methods
.method public j(Lcom/google/android/exoplayer2/upstream/Loader$d;JJZ)V
    .locals 0

    return-void
.end method

.method public l(Lcom/google/android/exoplayer2/upstream/Loader$d;JJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/g0$c;->a:Lcom/google/android/exoplayer2/util/g0$b;

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/exoplayer2/util/g0;->k()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/g0$c;->a:Lcom/google/android/exoplayer2/util/g0$b;

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/util/g0$b;->a(Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/g0$c;->a:Lcom/google/android/exoplayer2/util/g0$b;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/g0$b;->onInitialized()V

    :cond_1
    :goto_0
    return-void
.end method

.method public n(Lcom/google/android/exoplayer2/upstream/Loader$d;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$c;
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/g0$c;->a:Lcom/google/android/exoplayer2/util/g0$b;

    if-eqz p1, :cond_0

    invoke-interface {p1, p6}, Lcom/google/android/exoplayer2/util/g0$b;->a(Ljava/io/IOException;)V

    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/upstream/Loader;->f:Lcom/google/android/exoplayer2/upstream/Loader$c;

    return-object p1
.end method
