.class public final synthetic Lcom/google/android/exoplayer2/video/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/w$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/decoder/e;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/decoder/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/q;->a:Lcom/google/android/exoplayer2/video/w$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/q;->b:Lcom/google/android/exoplayer2/decoder/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/q;->a:Lcom/google/android/exoplayer2/video/w$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/q;->b:Lcom/google/android/exoplayer2/decoder/e;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/w$a;->c(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method
