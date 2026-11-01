.class public final synthetic Lcom/google/android/exoplayer2/drm/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/s$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/s;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/r;->a:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/r;->b:Lcom/google/android/exoplayer2/drm/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/r;->a:Lcom/google/android/exoplayer2/drm/s$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/r;->b:Lcom/google/android/exoplayer2/drm/s;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/s$a;->a(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method
