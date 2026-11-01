.class public abstract Lcom/google/android/exoplayer2/offline/DownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/DownloadService$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/util/HashMap;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private d:Lcom/google/android/exoplayer2/offline/DownloadService$a;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/DownloadService;->j:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/google/android/exoplayer2/offline/DownloadManager;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->b:I

    iget v2, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->c:I

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/util/b0;->a(Landroid/content/Context;Ljava/lang/String;III)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/offline/DownloadService;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$a;

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/offline/DownloadService;->a()Lcom/google/android/exoplayer2/offline/DownloadManager;

    const/4 v0, 0x0

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->i:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->d:Lcom/google/android/exoplayer2/offline/DownloadService$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/DownloadService$a;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/offline/DownloadService$a;->c(Lcom/google/android/exoplayer2/offline/DownloadService;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    const-string p2, "com.google.android.exoplayer.downloadService.action.INIT"

    const/4 v0, 0x1

    const-string v1, "com.google.android.exoplayer.downloadService.action.RESTART"

    iput p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->e:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->g:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->f:Z

    const-string v6, "foreground"

    invoke-virtual {p1, v6, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, p3

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v0

    :goto_1
    or-int/2addr v5, v6

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->f:Z

    goto :goto_2

    :cond_2
    move-object v3, v2

    move-object v4, v3

    :goto_2
    if-nez v3, :cond_3

    move-object v3, p2

    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->d:Lcom/google/android/exoplayer2/offline/DownloadService$a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/offline/DownloadService$a;

    invoke-static {v5}, Lcom/google/android/exoplayer2/offline/DownloadService$a;->a(Lcom/google/android/exoplayer2/offline/DownloadService$a;)Lcom/google/android/exoplayer2/offline/DownloadManager;

    const-string v5, "stop_reason"

    const-string v6, "DownloadService"

    const/4 v7, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_3
    move v0, v7

    goto/16 :goto_4

    :sswitch_0
    const-string p2, "com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    const/16 v0, 0x8

    goto :goto_4

    :sswitch_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x7

    goto :goto_4

    :sswitch_2
    const-string p2, "com.google.android.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x6

    goto :goto_4

    :sswitch_3
    const-string p2, "com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x5

    goto :goto_4

    :sswitch_4
    const-string p2, "com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_5
    const-string p2, "com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x3

    goto :goto_4

    :sswitch_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_7
    const-string p2, "com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_3

    :sswitch_8
    const-string p2, "com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    :cond_b
    move v0, p3

    :cond_c
    :goto_4
    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignored unrecognized action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_0
    if-nez v4, :cond_d

    const-string p1, "Ignored REMOVE_DOWNLOAD: Missing content_id extra"

    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    throw v2

    :pswitch_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p1, "Ignored SET_STOP_REASON: Missing stop_reason extra"

    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    throw v2

    :pswitch_2
    throw v2

    :pswitch_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p2, "requirements"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/scheduler/Requirements;

    if-nez p1, :cond_f

    const-string p1, "Ignored SET_REQUIREMENTS: Missing requirements extra"

    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    throw v2

    :pswitch_4
    throw v2

    :pswitch_5
    throw v2

    :pswitch_6
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const-string v0, "download_request"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/offline/DownloadRequest;

    if-nez p2, :cond_10

    const-string p1, "Ignored ADD_DOWNLOAD: Missing download_request extra"

    invoke-static {v6, p1}, Lcom/google/android/exoplayer2/util/s;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :pswitch_7
    sget p1, Lcom/google/android/exoplayer2/util/p0;->a:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->h:Z

    throw v2

    :cond_10
    invoke-virtual {p1, v5, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x731c5e7b -> :sswitch_8
        -0x378de948 -> :sswitch_7
        -0x33ed2c70 -> :sswitch_6
        -0x26c690ef -> :sswitch_5
        -0x718ab14 -> :sswitch_4
        0xb642643 -> :sswitch_3
        0x2806a145 -> :sswitch_2
        0x3c89ff0f -> :sswitch_1
        0x5c3d4a84 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/offline/DownloadService;->g:Z

    return-void
.end method
