.class public Lcom/mbridge/msdk/tracker/network/l;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/mbridge/msdk/tracker/network/l;


# instance fields
.field private a:Lcom/mbridge/msdk/tracker/network/u;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/tracker/network/l;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/tracker/network/l;->b:Lcom/mbridge/msdk/tracker/network/l;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/tracker/network/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/tracker/network/l;->b:Lcom/mbridge/msdk/tracker/network/l;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/tracker/network/l;

    invoke-direct {v1}, Lcom/mbridge/msdk/tracker/network/l;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/tracker/network/l;->b:Lcom/mbridge/msdk/tracker/network/l;

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
    sget-object v0, Lcom/mbridge/msdk/tracker/network/l;->b:Lcom/mbridge/msdk/tracker/network/l;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/mbridge/msdk/tracker/network/u;
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/l;->a:Lcom/mbridge/msdk/tracker/network/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/b;

    new-instance v1, Lcom/mbridge/msdk/tracker/network/toolbox/m;

    invoke-direct {v1}, Lcom/mbridge/msdk/tracker/network/toolbox/m;-><init>()V

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/b;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;)V

    new-instance v1, Lcom/mbridge/msdk/tracker/network/toolbox/l;

    invoke-direct {v1}, Lcom/mbridge/msdk/tracker/network/toolbox/l;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v0, v2, v3, v1}, Lcom/mbridge/msdk/tracker/network/toolbox/o;->a(Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/w;ILcom/mbridge/msdk/tracker/network/b;)Lcom/mbridge/msdk/tracker/network/u;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/tracker/network/l;->a:Lcom/mbridge/msdk/tracker/network/u;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/u;->b()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/l;->a:Lcom/mbridge/msdk/tracker/network/u;

    return-object v0
.end method
