.class public final synthetic Lcom/google/android/exoplayer2/drm/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/drm/s$a;

.field public final synthetic b:Lcom/google/android/exoplayer2/drm/s;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/m;->a:Lcom/google/android/exoplayer2/drm/s$a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/m;->b:Lcom/google/android/exoplayer2/drm/s;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/m;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/m;->a:Lcom/google/android/exoplayer2/drm/s$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/m;->b:Lcom/google/android/exoplayer2/drm/s;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/m;->c:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/drm/s$a;->e(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/drm/s;Ljava/lang/Exception;)V

    return-void
.end method
