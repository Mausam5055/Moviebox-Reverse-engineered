.class public Lcom/bytedance/sdk/component/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Sj$TKC;,
        Lcom/bytedance/sdk/component/Sj$sP;,
        Lcom/bytedance/sdk/component/Sj$Sj;
    }
.end annotation


# static fields
.field private static Fmk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Lcom/bytedance/sdk/component/Sj;",
            ">;"
        }
    .end annotation
.end field

.field protected static Sj:Lcom/bytedance/sdk/component/Sj$Sj;

.field private static aa:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static sP:Z


# instance fields
.field private Dq:J

.field private final EjP:Ljava/lang/Object;

.field private HiB:Ljava/util/Properties;

.field private Jcg:I

.field private final TEQ:Ljava/io/File;

.field private final TKC:Ljava/lang/Object;

.field private final Ym:Ljava/io/File;

.field private uA:J

.field private volatile vS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj;->EjP:Ljava/lang/Object;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/Sj;->vS:Z

    iput v1, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Sj;->Sj(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    monitor-enter v0

    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/Sj;->vS:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/bytedance/sdk/component/Sj;->Sj:Lcom/bytedance/sdk/component/Sj$Sj;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Sj$Sj;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bytedance/sdk/component/Sj;->Sj:Lcom/bytedance/sdk/component/Sj$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Sj$Sj;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/component/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Sj$2;-><init>(Lcom/bytedance/sdk/component/Sj;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/component/Sj$1;

    const-string v0, "TTPropHelper"

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/component/Sj$1;-><init>(Lcom/bytedance/sdk/component/Sj;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/component/Sj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj;->EjP:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/Sj;)Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    return-object p0
.end method

.method private EjP()V
    .locals 1

    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Sj;->vS:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/Sj;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    return v0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/component/Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Sj;->Dq:J

    return-wide v0
.end method

.method public static Sj(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/Sj;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "tt_prop"

    :cond_0
    const-class v0, Lcom/bytedance/sdk/component/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Sj;->aa:Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/Sj;->aa:Landroid/util/ArrayMap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/component/Sj;->aa:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p0, Lcom/bytedance/sdk/component/Sj;->aa:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lcom/bytedance/sdk/component/Sj;->Fmk:Landroid/util/ArrayMap;

    if-nez p0, :cond_3

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    sput-object p0, Lcom/bytedance/sdk/component/Sj;->Fmk:Landroid/util/ArrayMap;

    :cond_3
    sget-object p0, Lcom/bytedance/sdk/component/Sj;->Fmk:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/component/Sj;

    if-nez p0, :cond_4

    new-instance p0, Lcom/bytedance/sdk/component/Sj;

    invoke-direct {p0, v1}, Lcom/bytedance/sdk/component/Sj;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/bytedance/sdk/component/Sj;->Fmk:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_4
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Sj;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    return-object p0
.end method

.method static Sj(Ljava/io/File;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".bak"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Sj;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    return-object p1
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj$Sj;)V
    .locals 0

    sput-object p0, Lcom/bytedance/sdk/component/Sj;->Sj:Lcom/bytedance/sdk/component/Sj$Sj;

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/Sj$sP;Z)V
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/Sj$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/Sj$3;-><init>(Lcom/bytedance/sdk/component/Sj;Lcom/bytedance/sdk/component/Sj$sP;Z)V

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    if-ne v2, p1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    :cond_1
    xor-int/2addr p1, p2

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/sP;->Sj(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/Sj;Lcom/bytedance/sdk/component/Sj$sP;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj;->Sj(Lcom/bytedance/sdk/component/Sj$sP;Z)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    return p0
.end method

.method static synthetic TKC()Z
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    return v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/Sj;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    return-object p0
.end method

.method private sP(Lcom/bytedance/sdk/component/Sj$sP;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sget-boolean v7, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v7, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v9, v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    :goto_1
    if-eqz v0, :cond_8

    iget-wide v13, v1, Lcom/bytedance/sdk/component/Sj;->uA:J

    iget-wide v3, v2, Lcom/bytedance/sdk/component/Sj$sP;->Sj:J

    cmp-long v0, v13, v3

    if-gez v0, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v3, v1, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-wide v13, v1, Lcom/bytedance/sdk/component/Sj;->Dq:J

    iget-wide v11, v2, Lcom/bytedance/sdk/component/Sj$sP;->Sj:J

    cmp-long v0, v13, v11

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/bytedance/sdk/component/Sj$sP;->Sj(ZZ)V

    return-void

    :cond_5
    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sget-boolean v3, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    :cond_6
    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    iget-object v3, v1, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "TTPropHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t rename file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to backup file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/bytedance/sdk/component/Sj$sP;->Sj(ZZ)V

    return-void

    :cond_7
    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_8
    :try_start_1
    iget-object v3, v1, Lcom/bytedance/sdk/component/Sj;->EjP:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    const/4 v11, 0x0

    :try_start_2
    new-instance v12, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v11, v12

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object v11, v12

    :goto_4
    const-wide/16 v13, 0x0

    goto :goto_7

    :cond_9
    const-wide/16 v13, 0x0

    :goto_5
    :try_start_4
    iget-object v0, v2, Lcom/bytedance/sdk/component/Sj$sP;->sP:Ljava/util/Properties;

    invoke-virtual {v0, v12, v11}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "save: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Lcom/bytedance/sdk/component/Sj$sP;->sP:Ljava/util/Properties;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "saveToLocal: save to"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "success"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v11, v12

    goto :goto_7

    :cond_a
    :goto_6
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v11, v0

    :try_start_6
    const-string v0, "TTPropHelper"

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_d

    :catchall_4
    move-exception v0

    move-object v4, v0

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto :goto_4

    :goto_7
    :try_start_7
    const-string v12, "TTPropHelper"

    const-string v4, "saveToLocal: "

    invoke-static {v12, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4}, Lcom/bytedance/sdk/component/Sj$sP;->Sj(ZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v11, :cond_b

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_9
    const-string v0, "TTPropHelper"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_8
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_e

    :cond_c
    const-wide/16 v3, 0x0

    :goto_9
    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-wide v15, v11

    goto :goto_a

    :cond_d
    const-wide/16 v15, 0x0

    :goto_a
    iget-wide v11, v2, Lcom/bytedance/sdk/component/Sj$sP;->Sj:J

    iput-wide v11, v1, Lcom/bytedance/sdk/component/Sj;->uA:J

    const/4 v11, 0x1

    invoke-virtual {v2, v11, v11}, Lcom/bytedance/sdk/component/Sj$sP;->Sj(ZZ)V

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "write: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v13, v5

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v15, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_e
    return-void

    :goto_b
    if-eqz v11, :cond_f

    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_c
    const-string v0, "TTPropHelper"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_c
    throw v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_d
    :try_start_d
    monitor-exit v3

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :goto_e
    const-string v3, "TTPropHelper"

    const-string v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "TTPropHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t clean up partially-written file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/bytedance/sdk/component/Sj$sP;->Sj(ZZ)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/Sj;Lcom/bytedance/sdk/component/Sj$sP;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Sj;->sP(Lcom/bytedance/sdk/component/Sj$sP;Z)V

    return-void
.end method

.method static synthetic uA(Lcom/bytedance/sdk/component/Sj;)I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bytedance/sdk/component/Sj;->Jcg:I

    return v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/component/Sj;)J
    .locals 4

    iget-wide v0, p0, Lcom/bytedance/sdk/component/Sj;->Dq:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/component/Sj;->Dq:J

    return-wide v0
.end method


# virtual methods
.method public Sj(Ljava/lang/String;F)F
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p2

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;I)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p2

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;J)J
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide p2

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public Sj()V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/Sj;->vS:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_7

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->Ym:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exist? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-boolean v1, Lcom/bytedance/sdk/component/Sj;->sP:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "reload: find "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,items from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bytedance/sdk/component/Sj;->TEQ:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    const-string v2, "TTPropHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    :try_start_4
    const-string v3, "TTPropHelper"

    const-string v4, "reload: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    :goto_2
    move-object v1, v0

    goto :goto_4

    :catchall_4
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v1

    const-string v2, "TTPropHelper"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    throw v0

    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/util/Properties;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iput-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    goto :goto_5

    :catchall_6
    move-exception v1

    goto :goto_6

    :cond_7
    :goto_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bytedance/sdk/component/Sj;->vS:Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    return-void

    :goto_6
    monitor-exit v0

    throw v1

    :goto_7
    monitor-exit v0

    throw v1
.end method

.method public Sj(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    return p1

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public Sj(Ljava/lang/String;Z)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj;->TKC:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj;->EjP()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj;->HiB:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "TTPropHelper"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p2

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public sP()Lcom/bytedance/sdk/component/Sj$TKC;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/Sj$TKC;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Sj$TKC;-><init>(Lcom/bytedance/sdk/component/Sj;)V

    return-object v0
.end method
