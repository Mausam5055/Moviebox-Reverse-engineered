.class public final Ly1/f4;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly1/f4$a;
    }
.end annotation


# static fields
.field public static final d:Ly1/f4;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ly1/f4$a;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly1/f4;

    const-string v1, ""

    invoke-direct {v0, v1}, Ly1/f4;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly1/f4;->d:Ly1/f4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/f4;->a:Ljava/lang/String;

    sget p1, Landroidx/media3/common/util/a1;->a:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    new-instance p1, Ly1/f4$a;

    invoke-direct {p1}, Ly1/f4$a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Ly1/f4;->b:Ly1/f4$a;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/f4;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroid/media/metrics/LogSessionId;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly1/f4;->b:Ly1/f4$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/f4$a;

    iget-object v0, v0, Ly1/f4$a;->a:Landroid/media/metrics/LogSessionId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized b(Landroid/media/metrics/LogSessionId;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ly1/f4;->b:Ly1/f4$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/f4$a;

    invoke-virtual {v0, p1}, Ly1/f4$a;->a(Landroid/media/metrics/LogSessionId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ly1/f4;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ly1/f4;

    iget-object v1, p0, Ly1/f4;->a:Ljava/lang/String;

    iget-object v3, p1, Ly1/f4;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ly1/f4;->b:Ly1/f4$a;

    iget-object v3, p1, Ly1/f4;->b:Ly1/f4$a;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ly1/f4;->c:Ljava/lang/Object;

    iget-object p1, p1, Ly1/f4;->c:Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Ly1/f4;->a:Ljava/lang/String;

    iget-object v1, p0, Ly1/f4;->b:Ly1/f4$a;

    iget-object v2, p0, Ly1/f4;->c:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
