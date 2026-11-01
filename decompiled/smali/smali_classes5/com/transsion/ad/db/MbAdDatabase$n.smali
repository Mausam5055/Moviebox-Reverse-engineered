.class public final Lcom/transsion/ad/db/MbAdDatabase$n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/MbAdDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/db/MbAdDatabase$n;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/transsion/ad/db/MbAdDatabase;

    const-string v2, "mb-ad-plans-db"

    invoke-static {v0, v1, v2}, Landroidx/room/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->l0()Lcom/transsion/ad/db/MbAdDatabase$e;

    move-result-object v1

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->m0()Lcom/transsion/ad/db/MbAdDatabase$f;

    move-result-object v2

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->n0()Lcom/transsion/ad/db/MbAdDatabase$g;

    move-result-object v3

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->o0()Lcom/transsion/ad/db/MbAdDatabase$h;

    move-result-object v4

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->p0()Lcom/transsion/ad/db/MbAdDatabase$i;

    move-result-object v5

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->q0()Lcom/transsion/ad/db/MbAdDatabase$j;

    move-result-object v6

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->r0()Lcom/transsion/ad/db/MbAdDatabase$k;

    move-result-object v7

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->s0()Lcom/transsion/ad/db/MbAdDatabase$l;

    move-result-object v8

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->t0()Lcom/transsion/ad/db/MbAdDatabase$m;

    move-result-object v9

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->h0()Lcom/transsion/ad/db/MbAdDatabase$a;

    move-result-object v10

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->i0()Lcom/transsion/ad/db/MbAdDatabase$b;

    move-result-object v11

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->j0()Lcom/transsion/ad/db/MbAdDatabase$c;

    move-result-object v12

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->k0()Lcom/transsion/ad/db/MbAdDatabase$d;

    move-result-object v13

    const/16 v14, 0xd

    new-array v14, v14, [Ly3/c;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v1, 0x1

    aput-object v2, v14, v1

    const/4 v1, 0x2

    aput-object v3, v14, v1

    const/4 v1, 0x3

    aput-object v4, v14, v1

    const/4 v1, 0x4

    aput-object v5, v14, v1

    const/4 v1, 0x5

    aput-object v6, v14, v1

    const/4 v1, 0x6

    aput-object v7, v14, v1

    const/4 v1, 0x7

    aput-object v8, v14, v1

    const/16 v1, 0x8

    aput-object v9, v14, v1

    const/16 v1, 0x9

    aput-object v10, v14, v1

    const/16 v1, 0xa

    aput-object v11, v14, v1

    const/16 v1, 0xb

    aput-object v12, v14, v1

    const/16 v1, 0xc

    aput-object v13, v14, v1

    invoke-virtual {v0, v14}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/db/MbAdDatabase$n$a;

    invoke-direct {v1}, Lcom/transsion/ad/db/MbAdDatabase$n$a;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/db/MbAdDatabase;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->g0()Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->g0()Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$n;

    invoke-direct {v0, p1}, Lcom/transsion/ad/db/MbAdDatabase$n;->a(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/ad/db/MbAdDatabase;->u0(Lcom/transsion/ad/db/MbAdDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw p1

    :cond_1
    :goto_2
    return-object v0
.end method
