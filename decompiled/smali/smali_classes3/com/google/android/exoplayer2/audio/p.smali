.class public final synthetic Lcom/google/android/exoplayer2/audio/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/p;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/p;->b:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/audio/p;->c:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/audio/p;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/p;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/p;->b:I

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/p;->c:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/audio/p;->d:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/r$a;->f(Lcom/google/android/exoplayer2/audio/r$a;IJJ)V

    return-void
.end method
