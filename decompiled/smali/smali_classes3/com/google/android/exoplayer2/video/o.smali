.class public final synthetic Lcom/google/android/exoplayer2/video/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/w$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/o;->a:Lcom/google/android/exoplayer2/video/w$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/o;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/video/o;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/o;->a:Lcom/google/android/exoplayer2/video/w$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/o;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/o;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/video/w$a;->d(Lcom/google/android/exoplayer2/video/w$a;Ljava/lang/Object;J)V

    return-void
.end method
