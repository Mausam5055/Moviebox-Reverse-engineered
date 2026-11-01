.class public final synthetic Lcom/google/android/exoplayer2/audio/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/audio/r$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/o1;

.field public final synthetic c:Lcom/google/android/exoplayer2/decoder/g;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/n;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/n;->b:Lcom/google/android/exoplayer2/o1;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/n;->c:Lcom/google/android/exoplayer2/decoder/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/n;->a:Lcom/google/android/exoplayer2/audio/r$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/n;->b:Lcom/google/android/exoplayer2/o1;

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/n;->c:Lcom/google/android/exoplayer2/decoder/g;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/audio/r$a;->d(Lcom/google/android/exoplayer2/audio/r$a;Lcom/google/android/exoplayer2/o1;Lcom/google/android/exoplayer2/decoder/g;)V

    return-void
.end method
