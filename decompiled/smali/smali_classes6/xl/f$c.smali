.class public final Lxl/f$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lxl/f$d;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lxl/f;


# direct methods
.method synthetic constructor <init>(Lxl/f;Lxl/f$d;Lxl/f$a;)V
    .locals 0

    iput-object p1, p0, Lxl/f$c;->d:Lxl/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxl/f$c;->a:Lxl/f$d;

    invoke-static {p2}, Lxl/f$d;->o(Lxl/f$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lxl/f;->t(Lxl/f;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lxl/f$c;->b:[Z

    return-void
.end method

.method static synthetic b(Lxl/f$c;)Lxl/f$d;
    .locals 0

    iget-object p0, p0, Lxl/f$c;->a:Lxl/f$d;

    return-object p0
.end method

.method static synthetic e(Lxl/f$c;)[Z
    .locals 0

    iget-object p0, p0, Lxl/f$c;->b:[Z

    return-object p0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lxl/f$c;->d:Lxl/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxl/f$c;->a:Lxl/f$d;

    invoke-static {v1}, Lxl/f$d;->p(Lxl/f$d;)Lxl/f$c;

    move-result-object v1

    if-ne v1, p0, :cond_2

    iget-object v1, p0, Lxl/f$c;->a:Lxl/f$d;

    invoke-static {v1}, Lxl/f$d;->o(Lxl/f$d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lxl/f$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lxl/f$c;->a:Lxl/f$d;

    iget-object v1, v1, Lxl/f$d;->d:[Ljava/io/File;

    aget-object p1, v1, p1

    iget-object v1, p0, Lxl/f$c;->d:Lxl/f;

    invoke-static {v1}, Lxl/f;->w(Lxl/f;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lxl/f$c;->d:Lxl/f;

    invoke-static {v1}, Lxl/f;->w(Lxl/f;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    monitor-exit v0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lxl/f$c;->d:Lxl/f;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lxl/f;->p(Lxl/f;Lxl/f$c;Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lxl/f$c;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lxl/f$c;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lxl/f$c;->d:Lxl/f;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lxl/f;->p(Lxl/f;Lxl/f$c;Z)V

    iput-boolean v1, p0, Lxl/f$c;->c:Z

    return-void
.end method
