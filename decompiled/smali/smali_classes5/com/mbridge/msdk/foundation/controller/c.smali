.class public Lcom/mbridge/msdk/foundation/controller/c;
.super Lcom/mbridge/msdk/foundation/controller/a;


# static fields
.field private static volatile s:Lcom/mbridge/msdk/foundation/controller/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/a;-><init>()V

    return-void
.end method

.method public static m()Lcom/mbridge/msdk/foundation/controller/c;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/foundation/controller/c;->s:Lcom/mbridge/msdk/foundation/controller/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/foundation/controller/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/foundation/controller/c;->s:Lcom/mbridge/msdk/foundation/controller/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/foundation/controller/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/controller/c;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/controller/c;->s:Lcom/mbridge/msdk/foundation/controller/c;

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
    sget-object v0, Lcom/mbridge/msdk/foundation/controller/c;->s:Lcom/mbridge/msdk/foundation/controller/c;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/mbridge/msdk/foundation/controller/a$e;)V
    .locals 0

    return-void
.end method
