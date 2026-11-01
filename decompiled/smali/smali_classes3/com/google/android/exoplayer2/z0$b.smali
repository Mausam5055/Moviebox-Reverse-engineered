.class abstract Lcom/google/android/exoplayer2/z0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/exoplayer2/z0;Z)Le9/u1;
    .locals 0

    invoke-static {p0}, Le9/s1;->B0(Landroid/content/Context;)Le9/s1;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/s;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Le9/u1;

    invoke-static {}, Ly1/d4;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-direct {p0, p1}, Le9/u1;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/z0;->O0(Le9/c;)V

    :cond_1
    new-instance p1, Le9/u1;

    invoke-virtual {p0}, Le9/s1;->I0()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Le9/u1;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
