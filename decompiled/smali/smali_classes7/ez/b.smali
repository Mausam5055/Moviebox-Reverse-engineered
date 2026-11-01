.class public final Lez/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez/b$b;,
        Lez/b$a;
    }
.end annotation


# static fields
.field public static final Companion:Lez/b$b;


# instance fields
.field private _customData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile _demographic:Lez/a;

.field private volatile _location:Lez/c;

.field private volatile _revenue:Lez/d;

.field private volatile _sessionContext:Lez/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lez/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lez/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lez/b;->Companion:Lez/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILez/e;Lez/a;Lez/c;Lez/d;Ljava/util/Map;Lkotlinx/serialization/internal/w1;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    iput-object v0, p0, Lez/b;->_sessionContext:Lez/e;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lez/b;->_sessionContext:Lez/e;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lez/b;->_demographic:Lez/a;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lez/b;->_demographic:Lez/a;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lez/b;->_location:Lez/c;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lez/b;->_location:Lez/c;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lez/b;->_revenue:Lez/d;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lez/b;->_revenue:Lez/d;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v0, p0, Lez/b;->_customData:Ljava/util/Map;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lez/b;->_customData:Ljava/util/Map;

    :goto_4
    return-void
.end method

.method private static synthetic get_customData$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic get_demographic$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic get_location$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic get_revenue$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic get_sessionContext$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lez/b;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lez/b;->_sessionContext:Lez/e;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lez/e$a;->INSTANCE:Lez/e$a;

    iget-object v2, p0, Lez/b;->_sessionContext:Lez/e;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lez/b;->_demographic:Lez/a;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lez/a$a;->INSTANCE:Lez/a$a;

    iget-object v2, p0, Lez/b;->_demographic:Lez/a;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lez/b;->_location:Lez/c;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lez/c$a;->INSTANCE:Lez/c$a;

    iget-object v2, p0, Lez/b;->_location:Lez/c;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lez/b;->_revenue:Lez/d;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lez/d$a;->INSTANCE:Lez/d$a;

    iget-object v2, p0, Lez/b;->_revenue:Lez/d;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lez/b;->_customData:Ljava/util/Map;

    if-eqz v1, :cond_9

    :goto_4
    new-instance v1, Lkotlinx/serialization/internal/v0;

    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    invoke-direct {v1, v2, v2}, Lkotlinx/serialization/internal/v0;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V

    iget-object p0, p0, Lez/b;->_customData:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final declared-synchronized clearAll()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lez/b;->_sessionContext:Lez/e;

    iput-object v0, p0, Lez/b;->_demographic:Lez/a;

    iput-object v0, p0, Lez/b;->_location:Lez/c;

    iput-object v0, p0, Lez/b;->_revenue:Lez/d;

    iget-object v1, p0, Lez/b;->_customData:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lez/b;->_customData:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lez/b;->_customData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lez/b;->_customData:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getDemographic()Lez/a;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lez/b;->_demographic:Lez/a;

    if-nez v0, :cond_0

    new-instance v0, Lez/a;

    invoke-direct {v0}, Lez/a;-><init>()V

    iput-object v0, p0, Lez/b;->_demographic:Lez/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLocation()Lez/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lez/b;->_location:Lez/c;

    if-nez v0, :cond_0

    new-instance v0, Lez/c;

    invoke-direct {v0}, Lez/c;-><init>()V

    iput-object v0, p0, Lez/b;->_location:Lez/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getRevenue()Lez/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lez/b;->_revenue:Lez/d;

    if-nez v0, :cond_0

    new-instance v0, Lez/d;

    invoke-direct {v0}, Lez/d;-><init>()V

    iput-object v0, p0, Lez/b;->_revenue:Lez/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getSessionContext()Lez/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lez/b;->_sessionContext:Lez/e;

    if-nez v0, :cond_0

    new-instance v0, Lez/e;

    invoke-direct {v0}, Lez/e;-><init>()V

    iput-object v0, p0, Lez/b;->_sessionContext:Lez/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
