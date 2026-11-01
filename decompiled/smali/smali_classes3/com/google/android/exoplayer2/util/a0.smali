.class public abstract synthetic Lcom/google/android/exoplayer2/util/a0;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    return-object p0
.end method
