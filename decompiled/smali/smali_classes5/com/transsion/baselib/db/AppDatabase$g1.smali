.class public final Lcom/transsion/baselib/db/AppDatabase$g1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g1"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baselib/db/AppDatabase$g1;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;
    .locals 60

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v1, Lcom/transsion/baselib/db/AppDatabase;

    const-string v2, "oneroom-db"

    invoke-static {v0, v1, v2}, Landroidx/room/q;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->c()Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->r0()Lcom/transsion/baselib/db/AppDatabase$k;

    move-result-object v1

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->C0()Lcom/transsion/baselib/db/AppDatabase$v;

    move-result-object v2

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->N0()Lcom/transsion/baselib/db/AppDatabase$g0;

    move-result-object v3

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->Y0()Lcom/transsion/baselib/db/AppDatabase$r0;

    move-result-object v4

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->i1()Lcom/transsion/baselib/db/AppDatabase$b1;

    move-result-object v5

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->j1()Lcom/transsion/baselib/db/AppDatabase$c1;

    move-result-object v6

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->k1()Lcom/transsion/baselib/db/AppDatabase$d1;

    move-result-object v7

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->l1()Lcom/transsion/baselib/db/AppDatabase$e1;

    move-result-object v8

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->m1()Lcom/transsion/baselib/db/AppDatabase$f1;

    move-result-object v9

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->h0()Lcom/transsion/baselib/db/AppDatabase$a;

    move-result-object v10

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->i0()Lcom/transsion/baselib/db/AppDatabase$b;

    move-result-object v11

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->j0()Lcom/transsion/baselib/db/AppDatabase$c;

    move-result-object v12

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->k0()Lcom/transsion/baselib/db/AppDatabase$d;

    move-result-object v13

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->l0()Lcom/transsion/baselib/db/AppDatabase$e;

    move-result-object v14

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->m0()Lcom/transsion/baselib/db/AppDatabase$f;

    move-result-object v15

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->n0()Lcom/transsion/baselib/db/AppDatabase$g;

    move-result-object v16

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->o0()Lcom/transsion/baselib/db/AppDatabase$h;

    move-result-object v17

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->p0()Lcom/transsion/baselib/db/AppDatabase$i;

    move-result-object v18

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->q0()Lcom/transsion/baselib/db/AppDatabase$j;

    move-result-object v19

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->s0()Lcom/transsion/baselib/db/AppDatabase$l;

    move-result-object v20

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->t0()Lcom/transsion/baselib/db/AppDatabase$m;

    move-result-object v21

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->u0()Lcom/transsion/baselib/db/AppDatabase$n;

    move-result-object v22

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->v0()Lcom/transsion/baselib/db/AppDatabase$o;

    move-result-object v23

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->w0()Lcom/transsion/baselib/db/AppDatabase$p;

    move-result-object v24

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->x0()Lcom/transsion/baselib/db/AppDatabase$q;

    move-result-object v25

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->y0()Lcom/transsion/baselib/db/AppDatabase$r;

    move-result-object v26

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->z0()Lcom/transsion/baselib/db/AppDatabase$s;

    move-result-object v27

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->A0()Lcom/transsion/baselib/db/AppDatabase$t;

    move-result-object v28

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->B0()Lcom/transsion/baselib/db/AppDatabase$u;

    move-result-object v29

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->D0()Lcom/transsion/baselib/db/AppDatabase$w;

    move-result-object v30

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->E0()Lcom/transsion/baselib/db/AppDatabase$x;

    move-result-object v31

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->F0()Lcom/transsion/baselib/db/AppDatabase$y;

    move-result-object v32

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->G0()Lcom/transsion/baselib/db/AppDatabase$z;

    move-result-object v33

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->H0()Lcom/transsion/baselib/db/AppDatabase$a0;

    move-result-object v34

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->I0()Lcom/transsion/baselib/db/AppDatabase$b0;

    move-result-object v35

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->J0()Lcom/transsion/baselib/db/AppDatabase$c0;

    move-result-object v36

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->K0()Lcom/transsion/baselib/db/AppDatabase$d0;

    move-result-object v37

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->L0()Lcom/transsion/baselib/db/AppDatabase$e0;

    move-result-object v38

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->M0()Lcom/transsion/baselib/db/AppDatabase$f0;

    move-result-object v39

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->O0()Lcom/transsion/baselib/db/AppDatabase$h0;

    move-result-object v40

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->P0()Lcom/transsion/baselib/db/AppDatabase$i0;

    move-result-object v41

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->Q0()Lcom/transsion/baselib/db/AppDatabase$j0;

    move-result-object v42

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->R0()Lcom/transsion/baselib/db/AppDatabase$k0;

    move-result-object v43

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->S0()Lcom/transsion/baselib/db/AppDatabase$l0;

    move-result-object v44

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->T0()Lcom/transsion/baselib/db/AppDatabase$m0;

    move-result-object v45

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->U0()Lcom/transsion/baselib/db/AppDatabase$n0;

    move-result-object v46

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->V0()Lcom/transsion/baselib/db/AppDatabase$o0;

    move-result-object v47

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->W0()Lcom/transsion/baselib/db/AppDatabase$p0;

    move-result-object v48

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->X0()Lcom/transsion/baselib/db/AppDatabase$q0;

    move-result-object v49

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->Z0()Lcom/transsion/baselib/db/AppDatabase$s0;

    move-result-object v50

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->a1()Lcom/transsion/baselib/db/AppDatabase$t0;

    move-result-object v51

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->b1()Lcom/transsion/baselib/db/AppDatabase$u0;

    move-result-object v52

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->c1()Lcom/transsion/baselib/db/AppDatabase$v0;

    move-result-object v53

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->d1()Lcom/transsion/baselib/db/AppDatabase$w0;

    move-result-object v54

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->e1()Lcom/transsion/baselib/db/AppDatabase$x0;

    move-result-object v55

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->f1()Lcom/transsion/baselib/db/AppDatabase$y0;

    move-result-object v56

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->g1()Lcom/transsion/baselib/db/AppDatabase$z0;

    move-result-object v57

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->h1()Lcom/transsion/baselib/db/AppDatabase$a1;

    move-result-object v58

    move-object/from16 p1, v0

    const/16 v0, 0x3a

    new-array v0, v0, [Ly3/c;

    const/16 v59, 0x0

    aput-object v1, v0, v59

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    aput-object v15, v0, v1

    const/16 v1, 0xf

    aput-object v16, v0, v1

    const/16 v1, 0x10

    aput-object v17, v0, v1

    const/16 v1, 0x11

    aput-object v18, v0, v1

    const/16 v1, 0x12

    aput-object v19, v0, v1

    const/16 v1, 0x13

    aput-object v20, v0, v1

    const/16 v1, 0x14

    aput-object v21, v0, v1

    const/16 v1, 0x15

    aput-object v22, v0, v1

    const/16 v1, 0x16

    aput-object v23, v0, v1

    const/16 v1, 0x17

    aput-object v24, v0, v1

    const/16 v1, 0x18

    aput-object v25, v0, v1

    const/16 v1, 0x19

    aput-object v26, v0, v1

    const/16 v1, 0x1a

    aput-object v27, v0, v1

    const/16 v1, 0x1b

    aput-object v28, v0, v1

    const/16 v1, 0x1c

    aput-object v29, v0, v1

    const/16 v1, 0x1d

    aput-object v30, v0, v1

    const/16 v1, 0x1e

    aput-object v31, v0, v1

    const/16 v1, 0x1f

    aput-object v32, v0, v1

    const/16 v1, 0x20

    aput-object v33, v0, v1

    const/16 v1, 0x21

    aput-object v34, v0, v1

    const/16 v1, 0x22

    aput-object v35, v0, v1

    const/16 v1, 0x23

    aput-object v36, v0, v1

    const/16 v1, 0x24

    aput-object v37, v0, v1

    const/16 v1, 0x25

    aput-object v38, v0, v1

    const/16 v1, 0x26

    aput-object v39, v0, v1

    const/16 v1, 0x27

    aput-object v40, v0, v1

    const/16 v1, 0x28

    aput-object v41, v0, v1

    const/16 v1, 0x29

    aput-object v42, v0, v1

    const/16 v1, 0x2a

    aput-object v43, v0, v1

    const/16 v1, 0x2b

    aput-object v44, v0, v1

    const/16 v1, 0x2c

    aput-object v45, v0, v1

    const/16 v1, 0x2d

    aput-object v46, v0, v1

    const/16 v1, 0x2e

    aput-object v47, v0, v1

    const/16 v1, 0x2f

    aput-object v48, v0, v1

    const/16 v1, 0x30

    aput-object v49, v0, v1

    const/16 v1, 0x31

    aput-object v50, v0, v1

    const/16 v1, 0x32

    aput-object v51, v0, v1

    const/16 v1, 0x33

    aput-object v52, v0, v1

    const/16 v1, 0x34

    aput-object v53, v0, v1

    const/16 v1, 0x35

    aput-object v54, v0, v1

    const/16 v1, 0x36

    aput-object v55, v0, v1

    const/16 v1, 0x37

    aput-object v56, v0, v1

    const/16 v1, 0x38

    aput-object v57, v0, v1

    const/16 v1, 0x39

    aput-object v58, v0, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase$a;->b([Ly3/c;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/baselib/db/AppDatabase$g1$a;

    invoke-direct {v1}, Lcom/transsion/baselib/db/AppDatabase$g1$a;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/AppDatabase;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->g0()Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/transsion/baselib/db/AppDatabase;->g0()Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-direct {v0, p1}, Lcom/transsion/baselib/db/AppDatabase$g1;->a(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/baselib/db/AppDatabase;->n1(Lcom/transsion/baselib/db/AppDatabase;)V
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
