.class final Lcom/apm/insight/nativecrash/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apm/insight/nativecrash/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/apm/insight/nativecrash/c;

.field private final b:Lcom/apm/insight/h/b;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private synthetic e:Lcom/apm/insight/nativecrash/a;


# direct methods
.method public constructor <init>(Lcom/apm/insight/nativecrash/a;Ljava/io/File;)V
    .locals 1

    iput-object p1, p0, Lcom/apm/insight/nativecrash/a$b;->e:Lcom/apm/insight/nativecrash/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apm/insight/nativecrash/a$b;->c:Ljava/io/File;

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/apm/insight/l/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/insight/nativecrash/a$b;->d:Ljava/io/File;

    new-instance p1, Lcom/apm/insight/h/b;

    invoke-direct {p1, p2}, Lcom/apm/insight/h/b;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/apm/insight/nativecrash/a$b;->b:Lcom/apm/insight/h/b;

    new-instance v0, Lcom/apm/insight/nativecrash/c;

    invoke-direct {v0, p2}, Lcom/apm/insight/nativecrash/c;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/apm/insight/nativecrash/a$b;->a:Lcom/apm/insight/nativecrash/c;

    invoke-virtual {p1}, Lcom/apm/insight/h/b;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/c;->a()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {v0, p2}, Lcom/apm/insight/nativecrash/c;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/h/b;
    .locals 0

    iget-object p0, p0, Lcom/apm/insight/nativecrash/a$b;->b:Lcom/apm/insight/h/b;

    return-object p0
.end method

.method static synthetic b(Lcom/apm/insight/nativecrash/a$b;)Lcom/apm/insight/nativecrash/c;
    .locals 0

    iget-object p0, p0, Lcom/apm/insight/nativecrash/a$b;->a:Lcom/apm/insight/nativecrash/c;

    return-object p0
.end method

.method static synthetic c(Lcom/apm/insight/nativecrash/a$b;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/apm/insight/nativecrash/a$b;->c:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/apm/insight/nativecrash/a$b;->b:Lcom/apm/insight/h/b;

    invoke-virtual {v0}, Lcom/apm/insight/h/b;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "start_time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :goto_1
    invoke-static {}, Lcom/apm/insight/c;->a()Lcom/apm/insight/b/a;

    const-string v1, "NPTH_CATCH"

    invoke-static {v0, v1}, Lcom/apm/insight/runtime/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/nativecrash/a$b;->c:Ljava/io/File;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/apm/insight/nativecrash/a$b;->b:Lcom/apm/insight/h/b;

    invoke-virtual {v0}, Lcom/apm/insight/h/b;->d()Z

    move-result v0

    return v0
.end method
