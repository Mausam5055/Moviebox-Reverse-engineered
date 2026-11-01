.class public Lcom/transsion/compressor/image/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/compressor/image/h$a;
    }
.end annotation


# static fields
.field private static h:Ljava/util/Random;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Z

.field private final c:I

.field private final d:Lcom/transsion/compressor/image/e;

.field private final e:Lcom/transsion/compressor/image/a;

.field private final f:Ljava/util/List;

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/utils/a;->a()Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lcom/transsion/compressor/image/h;->h:Ljava/util/Random;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/transsion/compressor/image/h;->h:Ljava/util/Random;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/compressor/image/j;->f(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private constructor <init>(Lcom/transsion/compressor/image/h$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->g(Lcom/transsion/compressor/image/h$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->e(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/f;

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->f(Lcom/transsion/compressor/image/h$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->b(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/e;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->d(Lcom/transsion/compressor/image/h$a;)I

    move-result v0

    iput v0, p0, Lcom/transsion/compressor/image/h;->c:I

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->c(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/a;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h;->e:Lcom/transsion/compressor/image/a;

    invoke-static {p1}, Lcom/transsion/compressor/image/h$a;->a(Lcom/transsion/compressor/image/h$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/compressor/image/h;->b:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/compressor/image/h$a;Lcom/transsion/compressor/image/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/compressor/image/h;-><init>(Lcom/transsion/compressor/image/h$a;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/compressor/image/h;Lcom/transsion/compressor/image/d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/compressor/image/h;->f(Lcom/transsion/compressor/image/d;Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/transsion/compressor/image/h;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/compressor/image/h;->g(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/compressor/image/h;->d(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->close()V

    throw p1
.end method

.method private d(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;
    .locals 3

    sget-object v0, Lcom/transsion/compressor/image/Checker;->SINGLE:Lcom/transsion/compressor/image/Checker;

    invoke-virtual {v0, p2}, Lcom/transsion/compressor/image/Checker;->extSuffix(Lcom/transsion/compressor/image/d;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/transsion/compressor/image/h;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/compressor/image/h;->e:Lcom/transsion/compressor/image/a;

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/compressor/image/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/transsion/compressor/image/h;->c:I

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/compressor/image/Checker;->needCompress(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/compressor/image/b;

    iget-boolean v1, p0, Lcom/transsion/compressor/image/h;->b:Z

    invoke-direct {v0, p2, p1, v1}, Lcom/transsion/compressor/image/b;-><init>(Lcom/transsion/compressor/image/d;Ljava/io/File;Z)V

    invoke-virtual {v0}, Lcom/transsion/compressor/image/b;->a()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/transsion/compressor/image/h;->c:I

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/compressor/image/Checker;->needCompress(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/transsion/compressor/image/b;

    iget-boolean v1, p0, Lcom/transsion/compressor/image/h;->b:Z

    invoke-direct {v0, p2, p1, v1}, Lcom/transsion/compressor/image/b;-><init>(Lcom/transsion/compressor/image/d;Ljava/io/File;Z)V

    invoke-virtual {v0}, Lcom/transsion/compressor/image/b;->a()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/transsion/compressor/image/j;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/transsion/compressor/image/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/transsion/compressor/image/h;->h:Ljava/util/Random;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ".jpg"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/transsion/compressor/image/j;->c(Ljava/io/File;)V

    return-object p2
.end method

.method private synthetic f(Lcom/transsion/compressor/image/d;Landroid/content/Context;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-interface {p1}, Lcom/transsion/compressor/image/d;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p2, p1}, Lcom/transsion/compressor/image/h;->c(Landroid/content/Context;Lcom/transsion/compressor/image/d;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/compressor/image/j;->a(Ljava/io/File;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tag_image_info"

    invoke-virtual {v1, v2, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p2, "tag_image_size"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/transsion/compressor/image/h;->g:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/transsion/compressor/image/e;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "image file cannot be null"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/transsion/compressor/image/e;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/compressor/image/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/compressor/image/d;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/transsion/compressor/image/g;

    invoke-direct {v3, p0, v1, p1}, Lcom/transsion/compressor/image/g;-><init>(Lcom/transsion/compressor/image/h;Lcom/transsion/compressor/image/d;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static h(Landroid/content/Context;)Lcom/transsion/compressor/image/h$a;
    .locals 1

    new-instance v0, Lcom/transsion/compressor/image/h$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/compressor/image/h$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_3

    if-eq v2, v1, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/transsion/compressor/image/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/transsion/compressor/image/e;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "tag_image_info"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "tag_image_size"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/transsion/compressor/image/h;->d:Lcom/transsion/compressor/image/e;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/transsion/compressor/image/e;->b(Ljava/io/File;[IJ)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
