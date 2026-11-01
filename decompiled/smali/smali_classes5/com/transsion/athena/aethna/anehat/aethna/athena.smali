.class public Lcom/transsion/athena/aethna/anehat/aethna/athena;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/transsion/athena/aethna/anehat/aethna/athena;


# instance fields
.field private b:[B

.field public c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->c:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->c:Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->c:Z

    return v0
.end method

.method public static b()Lcom/transsion/athena/aethna/anehat/aethna/athena;
    .locals 2

    sget-object v0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/athena/aethna/anehat/aethna/athena;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/athena/aethna/anehat/aethna/athena;

    invoke-direct {v1}, Lcom/transsion/athena/aethna/anehat/aethna/athena;-><init>()V

    sput-object v1, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a:Lcom/transsion/athena/aethna/anehat/aethna/athena;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->d:Ljava/lang/String;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "remote_config.cfg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->e:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b:[B

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b:[B

    invoke-static {v0, p1, v1}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/io/File;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Lcom/transsion/ga/anateh;

    const-string v2, "bufferSave"

    invoke-direct {v1, v2, p1}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/athena/taaneh/athena;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/athena/aethna/anehat/aethna/athena;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b:[B

    invoke-static {v0, v2}, Lcom/transsion/athena/anateh/anehat;->a(Ljava/io/File;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v4, "e"

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "pwd"

    :try_start_3
    iget-object v5, p0, Lcom/transsion/athena/aethna/anehat/aethna/athena;->b:[B

    invoke-static {v5}, Lcom/transsion/athena/config/data/model/anehat;->c([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "len"

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Lcom/transsion/ga/anateh;

    const-string v5, "bufferRead"

    invoke-direct {v4, v5, v3}, Lcom/transsion/ga/anateh;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/transsion/ga/i;->a()Lcom/transsion/ga/i;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/transsion/ga/i;->c(Lcom/transsion/ga/anateh;)V

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method
