.class public abstract synthetic Lcom/google/firebase/perf/metrics/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a()J
    .locals 2

    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
