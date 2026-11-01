.class Lnu/h$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog$TinkerLogImp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnu/h;->w(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lnu/h$d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method private b(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object p2

    invoke-virtual {p2}, Lou/a;->J()Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "tinker_log_on"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu/h$d;->a:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lnu/h$d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lnu/h$d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu/h$d;->a:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lnu/h$d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lnu/h$d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu/h$d;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lnu/h$d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lnu/h$d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu/h$d;->a:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lnu/h$d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p4}, Lnu/h$d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p1, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu/h$d;->a:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lnu/h$d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lnu/h$d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnu/h$d;->a:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lnu/h$d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lnu/h$d;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
