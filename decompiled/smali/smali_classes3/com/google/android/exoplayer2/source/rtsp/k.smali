.class public abstract Lcom/google/android/exoplayer2/source/rtsp/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/google/android/exoplayer2/upstream/n;
    .locals 4

    new-instance v0, Lcom/google/android/exoplayer2/upstream/n;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "rtp://0.0.0.0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "%s:%d"

    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method
