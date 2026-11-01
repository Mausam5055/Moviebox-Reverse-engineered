.class final Lcom/google/android/exoplayer2/video/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/l$c;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/android/exoplayer2/video/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/video/g;Lcom/google/android/exoplayer2/mediacodec/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/g$b;->b:Lcom/google/android/exoplayer2/video/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/p0;->x(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/g$b;->a:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/l;->m(Lcom/google/android/exoplayer2/mediacodec/l$c;Landroid/os/Handler;)V

    return-void
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/g$b;->b:Lcom/google/android/exoplayer2/video/g;

    iget-object v1, v0, Lcom/google/android/exoplayer2/video/g;->E1:Lcom/google/android/exoplayer2/video/g$b;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/exoplayer2/video/g;->X0(Lcom/google/android/exoplayer2/video/g;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/video/g;->w1(J)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/g$b;->b:Lcom/google/android/exoplayer2/video/g;

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/video/g;->Y0(Lcom/google/android/exoplayer2/video/g;Lcom/google/android/exoplayer2/ExoPlaybackException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/mediacodec/l;JJ)V
    .locals 0

    sget p1, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 p4, 0x1e

    if-ge p1, p4, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/g$b;->a:Landroid/os/Handler;

    const/16 p4, 0x20

    shr-long p4, p2, p4

    long-to-int p4, p4

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-static {p1, p3, p4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/g$b;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/video/g$b;->b(J)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/p0;->a1(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/g$b;->b(J)V

    const/4 p1, 0x1

    return p1
.end method
