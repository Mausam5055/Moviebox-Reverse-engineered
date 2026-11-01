.class public final Lyv/d;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyv/f;
    .locals 1

    sget-object v0, Lyv/f;->p:Lyv/f;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lyv/f;->p:Lyv/f;

    if-nez v0, :cond_0

    new-instance v0, Lyv/f;

    invoke-direct {v0}, Lyv/f;-><init>()V

    sput-object v0, Lyv/f;->p:Lyv/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    :cond_1
    :goto_2
    return-object v0
.end method
