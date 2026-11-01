.class public Lcom/transsion/athena/enatha/anehat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/enatha/anehat;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "%s"

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lk4/a;->a(Landroid/content/Context;)Lk4/a;

    move-result-object v4

    const-string v5, "athena_id"

    invoke-virtual {v4, v5}, Lk4/a;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-static {v3}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;)Lcom/transsion/athena/taaneh/athena$aethna;

    move-result-object v7

    invoke-virtual {v7}, Lcom/transsion/athena/taaneh/athena$aethna;->a()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v7, v8, v0

    invoke-static {v2, v8}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v4, v5, v7}, Lk4/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    :try_start_1
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-static {v3, v4}, Lcom/transsion/athena/taaneh/anehat;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->S()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lcom/transsion/athena/taaneh/anehat;->c(Landroid/content/Context;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v4, v1

    goto :goto_3

    :catch_1
    :goto_2
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "device_id_transfer"

    const/16 v8, 0x270f

    if-eqz v4, :cond_3

    new-instance v4, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v4}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v6, "en"

    const/4 v9, 0x2

    invoke-virtual {v4, v6, v5, v9}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    move-result-object v4

    const-string v5, "cnt"

    invoke-virtual {v4, v5, v1, v1}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;II)Lcom/transsion/athena/data/TrackData;

    move-result-object v4

    invoke-static {v8}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v5

    const-string v6, "data_discard"

    invoke-virtual {v5, v6, v4, v8}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    goto :goto_4

    :cond_3
    new-instance v4, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v4}, Lcom/transsion/athena/data/TrackData;-><init>()V

    const-string v9, "pre_gaid"

    invoke-virtual {v4, v9, v6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v4

    invoke-static {}, Lcom/transsion/athena/taaneh/athena;->c()Ljava/lang/String;

    move-result-object v6

    const-string v9, "sn"

    invoke-virtual {v4, v9, v6}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    move-result-object v4

    invoke-static {v8}, Lcom/transsion/ga/AthenaAnalytics;->K(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object v6

    invoke-virtual {v6, v5, v4, v8}, Lcom/transsion/ga/AthenaAnalytics;->g0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;I)V

    :cond_4
    :goto_4
    move-object v6, v7

    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v6}, Lcom/transsion/athena/taaneh/anehat;->b(Ljava/lang/String;)V

    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3, v0}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    move v3, v0

    goto :goto_6

    :cond_8
    :goto_5
    move v3, v1

    :goto_6
    if-nez v3, :cond_9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "device gaid and iid are null"

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/transsion/athena/taaneh/aethna;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/transsion/athena/enatha/anehat;->a:Landroid/os/Handler;

    const-wide/32 v1, 0x6ddd00

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
