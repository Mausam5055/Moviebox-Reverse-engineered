.class public Lcom/transsion/athena/enatha/aethna;
.super Lcom/transsion/athena/enatha/athena;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static volatile c:Lcom/transsion/athena/enatha/aethna;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:I

.field private e:I

.field private f:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/athena;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/athena/enatha/aethna;->f:J

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Athena-LiteWorker"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    const/16 p1, 0x12f

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/transsion/athena/enatha/aethna;
    .locals 2

    sget-object v0, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/enatha/aethna;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/enatha/aethna;

    invoke-direct {v1, p0}, Lcom/transsion/athena/enatha/aethna;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/athena/enatha/aethna;->c:Lcom/transsion/athena/enatha/aethna;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "baseInfo"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/athena/data/AppIdData;->a(Landroid/content/Context;I)Lcom/transsion/athena/data/AppIdData;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/athena/data/AppIdData;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "content://com.transsion.dataservice.provider/bind"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    :cond_1
    const-string p1, "Failed to connect to DCS service"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/transsion/athena/data/aethna;)V
    .locals 7

    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.transsion.dataservice.provider/property"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p1, Lcom/transsion/athena/data/aethna;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "prop_key = ?"

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/athena/data/aethna;->b:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const-string p1, "Failed to connect to DCS service"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "trackObject"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://com.transsion.dataservice.provider/track"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const-string p1, "Failed to connect to DCS service"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/athena/enatha/aethna;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/athena/enatha/aethna;->f:J

    const/16 p1, 0x14

    int-to-long v2, p1

    rem-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    div-long/2addr v0, v2

    const-wide/16 v2, 0x5

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/athena/taaneh/anehat;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/athena/enatha/aethna;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-void
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://com.transsion.dataservice.provider/authorize"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "pkg = ?"

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCS authorize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "enable"

    goto :goto_0

    :cond_0
    const-string v2, "disable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    iput v3, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/transsion/athena/enatha/aethna;->d:I

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "tid"

    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "type"

    :try_start_1
    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->d()I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/transsion/athena/data/TrackData;->a()Lorg/json/JSONObject;

    move-result-object p1

    sget-object p2, Lcom/transsion/athena/config/data/model/ehanat;->h:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "_apkg"

    :try_start_2
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "_avn"

    :try_start_3
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p2, "_avc"

    :try_start_4
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->i(Landroid/content/Context;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p2, "_atutp"

    :try_start_5
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->c()S

    move-result p3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p2, "_atuid"

    :try_start_6
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->b()Ljava/lang/String;

    move-result-object p3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    :try_start_7
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string p2, "_achannel"

    :try_start_8
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->g()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string p2, "_ainstallchnl"

    :try_start_9
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz p3, :cond_1

    const-string p3, " "

    goto :goto_0

    :cond_1
    :try_start_a
    iget-object p3, p0, Lcom/transsion/athena/enatha/athena;->a:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/athena/taaneh/athena;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/athena/enatha/aethna;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "_eparam"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    const/16 p3, 0x1388

    if-ge p2, p3, :cond_2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    iget-object p2, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    const/16 p3, 0x12e

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/athena/enatha/athena;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 v1, 0x195

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/athena/data/aethna;

    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/aethna;->a(Lcom/transsion/athena/data/aethna;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/transsion/athena/enatha/aethna;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object p1

    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->q()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    const-string p1, "Athena SDK Version is 3.1.1.4"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    const-string p1, "Athena is in Lite mode"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/athena/data/athena;->b()I

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "HostAppId must be set up in LiteMode"

    invoke-static {p1}, Lcom/transsion/athena/taaneh/anehat;->a(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/athena/enatha/aethna;->f()V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/athena/enatha/aethna;->e:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/transsion/athena/enatha/aethna;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_1
    const/4 p1, 0x0

    return p1
.end method
