.class public final synthetic Lcom/google/android/exoplayer2/drm/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/i;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/d;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/d;->a:Ljava/lang/Exception;

    check-cast p1, Lcom/google/android/exoplayer2/drm/s$a;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->g(Ljava/lang/Exception;Lcom/google/android/exoplayer2/drm/s$a;)V

    return-void
.end method
