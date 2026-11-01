.class public final Lcom/cloud/hisavana/sdk/common/util/k0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/common/util/k0;

.field private static b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/k0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/util/k0;-><init>()V

    sput-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->a:Lcom/cloud/hisavana/sdk/common/util/k0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(I)V
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(I)V

    return-void
.end method

.method public static final b(Z)V
    .locals 7

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "key_data_status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result v0

    xor-int/lit8 v3, p0, 0x1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sp save env status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " and isDebug = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "TestChecker"

    invoke-virtual {v4, v5, p0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, v2, :cond_0

    if-eq v0, v3, :cond_1

    sget-object p0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/j0;

    invoke-direct {v0, v3}, Lcom/cloud/hisavana/sdk/common/util/j0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Lj7/a;->p(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final c(I)V
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->a:Lcom/cloud/hisavana/sdk/common/util/k0;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/util/k0;->d()V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "key_data_status"

    invoke-virtual {v0, v1, p0}, Lj7/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method private final d()V
    .locals 4

    :try_start_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {v0}, Lj7/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete sp fail = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestChecker"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/util/k0;->e()V

    return-void
.end method

.method private final e()V
    .locals 5

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    const-string v1, "execSQL delete"

    const-string v2, "TestChecker"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/util/k0;->f()V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->p0()Lcom/cloud/hisavana/sdk/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/v0;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->h0()Lcom/cloud/hisavana/sdk/v3;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/v3;->a()V

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->t0()Lcom/cloud/hisavana/sdk/c2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/c2;->b()V

    :cond_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->x0()Lcom/cloud/hisavana/sdk/m1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/m1;->b()V

    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->n0()Lcom/cloud/hisavana/sdk/c6;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/c6;->a()I

    :cond_4
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->k0()Lcom/cloud/hisavana/sdk/f5;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/f5;->a()I

    :cond_5
    invoke-static {}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->deleteTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete db fail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->S()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;->v0()Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;

    move-result-object v0

    sput-object v0, Lcom/cloud/hisavana/sdk/common/util/k0;->b:Lcom/cloud/hisavana/sdk/database/HSRoomDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDB ex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TestChecker"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
