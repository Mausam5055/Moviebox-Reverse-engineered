.class public final Lcom/transsnet/downloader/adapter/DownloadedHolder$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/adapter/DownloadedHolder;->z(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$a;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsnet/downloader/adapter/DownloadedHolder$a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/a0;->x()V

    :cond_0
    return-void
.end method

.method public onGranted()V
    .locals 0

    return-void
.end method
