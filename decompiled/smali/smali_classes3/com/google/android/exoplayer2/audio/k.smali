.class public final synthetic Lcom/google/android/exoplayer2/audio/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/k;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/audio/k;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/k;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/audio/k;->b:J

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->a(Lcom/google/android/exoplayer2/audio/r$a;J)V

    return-void
.end method
