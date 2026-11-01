.class public Landroidx/room/RoomDatabase$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Lkotlin/coroutines/CoroutineContext;

.field private B:Z

.field private final a:Lkotlin/reflect/KClass;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Ljava/util/List;

.field private f:Landroidx/room/RoomDatabase$e;

.field private final g:Ljava/util/List;

.field private h:Ljava/util/concurrent/Executor;

.field private i:Ljava/util/concurrent/Executor;

.field private j:La4/e$c;

.field private k:Z

.field private l:Landroidx/room/RoomDatabase$JournalMode;

.field private m:Landroid/content/Intent;

.field private n:J

.field private o:Ljava/util/concurrent/TimeUnit;

.field private final p:Landroidx/room/RoomDatabase$d;

.field private q:Ljava/util/Set;

.field private final r:Ljava/util/Set;

.field private final s:Ljava/util/List;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/io/File;

.field private y:Ljava/util/concurrent/Callable;

.field private z:Lz3/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "klass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->g:Ljava/util/List;

    sget-object v0, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->l:Landroidx/room/RoomDatabase$JournalMode;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/room/RoomDatabase$a;->n:J

    new-instance v0, Landroidx/room/RoomDatabase$d;

    invoke-direct {v0}, Landroidx/room/RoomDatabase$d;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->p:Landroidx/room/RoomDatabase$d;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->q:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->r:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$a;->s:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->t:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->B:Z

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->c(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    iput-object p2, p0, Landroidx/room/RoomDatabase$a;->a:Lkotlin/reflect/KClass;

    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->b:Landroid/content/Context;

    iput-object p3, p0, Landroidx/room/RoomDatabase$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs b([Ly3/c;)Landroidx/room/RoomDatabase$a;
    .locals 5

    const-string v0, "migrations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Landroidx/room/RoomDatabase$a;->r:Ljava/util/Set;

    iget v4, v2, Ly3/c;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/room/RoomDatabase$a;->r:Ljava/util/Set;

    iget v2, v2, Ly3/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->p:Landroidx/room/RoomDatabase$d;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ly3/c;

    invoke-virtual {v0, p1}, Landroidx/room/RoomDatabase$d;->b([Ly3/c;)V

    return-object p0
.end method

.method public c()Landroidx/room/RoomDatabase$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->k:Z

    return-object p0
.end method

.method public d()Landroidx/room/RoomDatabase;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/room/RoomDatabase$a;->h:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/room/RoomDatabase$a;->i:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    invoke-static {}, Lj/c;->g()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, v0, Landroidx/room/RoomDatabase$a;->i:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$a;->h:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/room/RoomDatabase$a;->i:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, Landroidx/room/RoomDatabase$a;->i:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Landroidx/room/RoomDatabase$a;->i:Ljava/util/concurrent/Executor;

    iput-object v1, v0, Landroidx/room/RoomDatabase$a;->h:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v1, v0, Landroidx/room/RoomDatabase$a;->r:Ljava/util/Set;

    iget-object v2, v0, Landroidx/room/RoomDatabase$a;->q:Ljava/util/Set;

    invoke-static {v1, v2}, Landroidx/room/z;->b(Ljava/util/Set;Ljava/util/Set;)V

    iget-object v1, v0, Landroidx/room/RoomDatabase$a;->z:Lz3/c;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v3, v0, Landroidx/room/RoomDatabase$a;->j:La4/e$c;

    if-nez v3, :cond_3

    new-instance v1, Lb4/h;

    invoke-direct {v1}, Lb4/h;-><init>()V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, v0, Landroidx/room/RoomDatabase$a;->j:La4/e$c;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/room/RoomDatabase$a;->j:La4/e$c;

    if-nez v1, :cond_19

    move-object v1, v2

    :goto_1
    iget-wide v3, v0, Landroidx/room/RoomDatabase$a;->n:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_5

    move v3, v5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    iget-object v6, v0, Landroidx/room/RoomDatabase$a;->w:Ljava/lang/String;

    if-nez v6, :cond_7

    iget-object v6, v0, Landroidx/room/RoomDatabase$a;->x:Ljava/io/File;

    if-nez v6, :cond_7

    iget-object v6, v0, Landroidx/room/RoomDatabase$a;->y:Ljava/util/concurrent/Callable;

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v4

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v5

    :goto_4
    const-string v7, "Required value was null."

    if-eqz v1, :cond_11

    if-eqz v3, :cond_a

    iget-object v8, v0, Landroidx/room/RoomDatabase$a;->c:Ljava/lang/String;

    if-eqz v8, :cond_9

    new-instance v8, Landroidx/room/support/AutoCloser;

    iget-wide v10, v0, Landroidx/room/RoomDatabase$a;->n:J

    iget-object v12, v0, Landroidx/room/RoomDatabase$a;->o:Ljava/util/concurrent/TimeUnit;

    if-eqz v12, :cond_8

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Landroidx/room/support/AutoCloser;-><init>(JLjava/util/concurrent/TimeUnit;Landroidx/room/support/AutoCloser$b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v9, Landroidx/room/support/l;

    invoke-direct {v9, v1, v8}, Landroidx/room/support/l;-><init>(La4/e$c;Landroidx/room/support/AutoCloser;)V

    move-object v1, v9

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    if-eqz v6, :cond_10

    iget-object v8, v0, Landroidx/room/RoomDatabase$a;->c:Ljava/lang/String;

    if-eqz v8, :cond_f

    iget-object v8, v0, Landroidx/room/RoomDatabase$a;->w:Ljava/lang/String;

    if-nez v8, :cond_b

    move v9, v4

    goto :goto_6

    :cond_b
    move v9, v5

    :goto_6
    iget-object v10, v0, Landroidx/room/RoomDatabase$a;->x:Ljava/io/File;

    if-nez v10, :cond_c

    move v11, v4

    goto :goto_7

    :cond_c
    move v11, v5

    :goto_7
    iget-object v12, v0, Landroidx/room/RoomDatabase$a;->y:Ljava/util/concurrent/Callable;

    if-nez v12, :cond_d

    goto :goto_8

    :cond_d
    move v4, v5

    :goto_8
    add-int/2addr v9, v11

    add-int/2addr v9, v4

    if-ne v9, v5, :cond_e

    new-instance v4, Landroidx/room/support/n;

    invoke-direct {v4, v8, v10, v12, v1}, Landroidx/room/support/n;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;La4/e$c;)V

    move-object v1, v4

    goto :goto_9

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create from asset or file for an in-memory database."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_9
    move-object v11, v1

    goto :goto_a

    :cond_11
    move-object v11, v2

    :goto_a
    if-nez v11, :cond_14

    if-nez v3, :cond_13

    if-nez v6, :cond_12

    goto :goto_b

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Pre-Package Database is not supported when an SQLiteDriver is configured."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Auto Closing Database is not supported when an SQLiteDriver is configured."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_b
    new-instance v1, Landroidx/room/c;

    iget-object v9, v0, Landroidx/room/RoomDatabase$a;->b:Landroid/content/Context;

    iget-object v10, v0, Landroidx/room/RoomDatabase$a;->c:Ljava/lang/String;

    iget-object v12, v0, Landroidx/room/RoomDatabase$a;->p:Landroidx/room/RoomDatabase$d;

    iget-object v13, v0, Landroidx/room/RoomDatabase$a;->e:Ljava/util/List;

    iget-boolean v14, v0, Landroidx/room/RoomDatabase$a;->k:Z

    iget-object v3, v0, Landroidx/room/RoomDatabase$a;->l:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v3, v9}, Landroidx/room/RoomDatabase$JournalMode;->resolve$room_runtime_release(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v15

    iget-object v3, v0, Landroidx/room/RoomDatabase$a;->h:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_18

    iget-object v4, v0, Landroidx/room/RoomDatabase$a;->i:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_17

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->m:Landroid/content/Intent;

    move-object/from16 v18, v5

    iget-boolean v5, v0, Landroidx/room/RoomDatabase$a;->t:Z

    move/from16 v19, v5

    iget-boolean v5, v0, Landroidx/room/RoomDatabase$a;->u:Z

    move/from16 v20, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->q:Ljava/util/Set;

    move-object/from16 v21, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->w:Ljava/lang/String;

    move-object/from16 v22, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->x:Ljava/io/File;

    move-object/from16 v23, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->y:Ljava/util/concurrent/Callable;

    move-object/from16 v24, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->f:Landroidx/room/RoomDatabase$e;

    move-object/from16 v25, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->g:Ljava/util/List;

    move-object/from16 v26, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->s:Ljava/util/List;

    move-object/from16 v27, v5

    iget-boolean v5, v0, Landroidx/room/RoomDatabase$a;->v:Z

    move/from16 v28, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->z:Lz3/c;

    move-object/from16 v29, v5

    iget-object v5, v0, Landroidx/room/RoomDatabase$a;->A:Lkotlin/coroutines/CoroutineContext;

    move-object/from16 v30, v5

    move-object v8, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v8 .. v30}, Landroidx/room/c;-><init>(Landroid/content/Context;Ljava/lang/String;La4/e$c;Landroidx/room/RoomDatabase$d;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Landroidx/room/RoomDatabase$e;Ljava/util/List;Ljava/util/List;ZLz3/c;Lkotlin/coroutines/CoroutineContext;)V

    iget-boolean v3, v0, Landroidx/room/RoomDatabase$a;->B:Z

    invoke-virtual {v1, v3}, Landroidx/room/c;->f(Z)V

    iget-object v3, v0, Landroidx/room/RoomDatabase$a;->d:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/RoomDatabase;

    if-nez v3, :cond_16

    :cond_15
    iget-object v3, v0, Landroidx/room/RoomDatabase$a;->a:Lkotlin/reflect/KClass;

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->a(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v2, v4, v2}, Landroidx/room/util/f;->b(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/room/RoomDatabase;

    :cond_16
    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->M(Landroidx/room/c;)V

    return-object v3

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e()Landroidx/room/RoomDatabase$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->u:Z

    return-object p0
.end method

.method public final f(Z)Landroidx/room/RoomDatabase$a;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->u:Z

    iput-boolean p1, p0, Landroidx/room/RoomDatabase$a;->v:Z

    return-object p0
.end method

.method public g()Landroidx/room/RoomDatabase$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->t:Z

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$a;->u:Z

    return-object p0
.end method

.method public h(La4/e$c;)Landroidx/room/RoomDatabase$a;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->j:La4/e$c;

    return-object p0
.end method

.method public i(Ljava/util/concurrent/Executor;)Landroidx/room/RoomDatabase$a;
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/RoomDatabase$a;->A:Lkotlin/coroutines/CoroutineContext;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/room/RoomDatabase$a;->h:Ljava/util/concurrent/Executor;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
