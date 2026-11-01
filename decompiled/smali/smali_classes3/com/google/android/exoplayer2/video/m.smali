.class public final synthetic Lcom/google/android/exoplayer2/video/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/video/w$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/video/y;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/video/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/m;->a:Lcom/google/android/exoplayer2/video/w$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/m;->b:Lcom/google/android/exoplayer2/video/y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/m;->a:Lcom/google/android/exoplayer2/video/w$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/m;->b:Lcom/google/android/exoplayer2/video/y;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/w$a;->f(Lcom/google/android/exoplayer2/video/w$a;Lcom/google/android/exoplayer2/video/y;)V

    return-void
.end method
