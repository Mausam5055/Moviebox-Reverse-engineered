.class Lcom/transsion/ga/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/transsion/ga/AthenaAnalytics;


# direct methods
.method constructor <init>(Lcom/transsion/ga/AthenaAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    :try_start_0
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    invoke-static {p2}, Lcom/transsion/athena/athena$athena;->a(Landroid/os/IBinder;)Lcom/transsion/athena/athena;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/ga/AthenaAnalytics;->h(Lcom/transsion/ga/AthenaAnalytics;Lcom/transsion/athena/athena;)Lcom/transsion/athena/athena;

    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/ga/AthenaAnalytics;->q(Lcom/transsion/ga/AthenaAnalytics;Z)Z

    const-string p1, "AthenaTrackService onServiceConnected"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->j(Lcom/transsion/ga/AthenaAnalytics;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/athena/data/TrackDataWrapper;

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->c()Lcom/transsion/athena/data/TrackData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/athena/data/TrackData;->c()I

    move-result v0

    const/high16 v1, 0x80000

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->c()Lcom/transsion/athena/data/TrackData;

    move-result-object v2

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackDataWrapper;->b()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/ga/AthenaAnalytics;->o(Lcom/transsion/ga/AthenaAnalytics;Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p2, "TrackData size is too large, ignored !!"

    invoke-static {p2}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->j(Lcom/transsion/ga/AthenaAnalytics;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/ga/g;->a:Lcom/transsion/ga/AthenaAnalytics;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/ga/AthenaAnalytics;->q(Lcom/transsion/ga/AthenaAnalytics;Z)Z

    const-string p1, "AthenaTrackService onServiceDisconnected"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    return-void
.end method
