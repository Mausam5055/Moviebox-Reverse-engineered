.class public Lh4/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/u;


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/job/JobScheduler;

.field private final c:Lh4/o;

.field private final d:Landroidx/work/impl/WorkDatabase;

.field private final e:Landroidx/work/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh4/q;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;)V
    .locals 6

    invoke-static {p1}, Lh4/d;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v4

    new-instance v5, Lh4/o;

    invoke-virtual {p3}, Landroidx/work/b;->a()Landroidx/work/a;

    move-result-object v0

    invoke-virtual {p3}, Landroidx/work/b;->s()Z

    move-result v1

    invoke-direct {v5, p1, v0, v1}, Lh4/o;-><init>(Landroid/content/Context;Landroidx/work/a;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lh4/q;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;Landroid/app/job/JobScheduler;Lh4/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;Landroid/app/job/JobScheduler;Lh4/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/q;->a:Landroid/content/Context;

    iput-object p4, p0, Lh4/q;->b:Landroid/app/job/JobScheduler;

    iput-object p5, p0, Lh4/q;->c:Lh4/o;

    iput-object p2, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lh4/q;->e:Landroidx/work/b;

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lh4/d;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_0
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-static {p0, v0}, Lh4/q;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lh4/q;->e(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static e(Landroid/app/job/JobScheduler;I)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Lh4/q;->f:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "Exception while trying to cancel job (%d)"

    invoke-static {v2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p0}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-static {p0, p1}, Lh4/q;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    invoke-static {v0}, Lh4/q;->h(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/x;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method static g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 3

    invoke-static {p1}, Lh4/d;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static h(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/x;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroidx/work/impl/model/x;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Landroidx/work/impl/model/x;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;)Z
    .locals 6

    invoke-static {p0}, Lh4/d;->c(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    invoke-static {p0, v0}, Lh4/q;->g(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->i0()Landroidx/work/impl/model/q;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/model/q;->c()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-static {v3}, Lh4/q;->h(Landroid/app/job/JobInfo;)Landroidx/work/impl/model/x;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v0, v3}, Lh4/q;->e(Landroid/app/job/JobScheduler;I)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p0

    sget-object v0, Lh4/q;->f:Ljava/lang/String;

    const-string v2, "Reconciling jobs"

    invoke-virtual {p0, v0, v2}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {p0, v1, v3, v4}, Landroidx/work/impl/model/k0;->o(Ljava/lang/String;J)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->t()V

    throw p0

    :cond_6
    :goto_4
    return v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lh4/q;->a:Landroid/content/Context;

    iget-object v1, p0, Lh4/q;->b:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1, p1}, Lh4/q;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lh4/q;->b:Landroid/app/job/JobScheduler;

    invoke-static {v2, v1}, Lh4/q;->e(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->i0()Landroidx/work/impl/model/q;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/work/impl/model/q;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public varargs b([Landroidx/work/impl/model/j0;)V
    .locals 9

    new-instance v0, Landroidx/work/impl/utils/m;

    iget-object v1, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-direct {v0, v1}, Landroidx/work/impl/utils/m;-><init>(Landroidx/work/impl/WorkDatabase;)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    iget-object v5, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/room/RoomDatabase;->k()V

    :try_start_0
    iget-object v5, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->l0()Landroidx/work/impl/model/k0;

    move-result-object v5

    iget-object v6, v4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroidx/work/impl/model/k0;->j(Ljava/lang/String;)Landroidx/work/impl/model/j0;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "Skipping scheduling "

    if-nez v5, :cond_0

    :try_start_1
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v5

    sget-object v7, Lh4/q;->f:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it\'s no longer in the DB"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroidx/work/t;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v4, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->t()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :try_start_2
    iget-object v5, v5, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    sget-object v7, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v5, v7, :cond_1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v5

    sget-object v7, Lh4/q;->f:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " because it is no longer enqueued"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroidx/work/t;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->e0()V

    goto :goto_1

    :cond_1
    invoke-static {v4}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object v5

    iget-object v6, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->i0()Landroidx/work/impl/model/q;

    move-result-object v6

    invoke-interface {v6, v5}, Landroidx/work/impl/model/q;->a(Landroidx/work/impl/model/x;)Landroidx/work/impl/model/o;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v7, v6, Landroidx/work/impl/model/o;->c:I

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lh4/q;->e:Landroidx/work/b;

    invoke-virtual {v7}, Landroidx/work/b;->i()I

    move-result v7

    iget-object v8, p0, Lh4/q;->e:Landroidx/work/b;

    invoke-virtual {v8}, Landroidx/work/b;->g()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroidx/work/impl/utils/m;->b(II)I

    move-result v7

    :goto_2
    if-nez v6, :cond_3

    invoke-static {v5, v7}, Landroidx/work/impl/model/w;->a(Landroidx/work/impl/model/x;I)Landroidx/work/impl/model/o;

    move-result-object v5

    iget-object v6, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->i0()Landroidx/work/impl/model/q;

    move-result-object v6

    invoke-interface {v6, v5}, Landroidx/work/impl/model/q;->d(Landroidx/work/impl/model/o;)V

    :cond_3
    invoke-virtual {p0, v4, v7}, Lh4/q;->j(Landroidx/work/impl/model/j0;I)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lh4/q;->a:Landroid/content/Context;

    iget-object v6, p0, Lh4/q;->b:Landroid/app/job/JobScheduler;

    iget-object v8, v4, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-static {v5, v6, v8}, Lh4/q;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_4

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lh4/q;->e:Landroidx/work/b;

    invoke-virtual {v5}, Landroidx/work/b;->i()I

    move-result v5

    iget-object v6, p0, Lh4/q;->e:Landroidx/work/b;

    invoke-virtual {v6}, Landroidx/work/b;->g()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroidx/work/impl/utils/m;->b(II)I

    move-result v5

    :goto_3
    invoke-virtual {p0, v4, v5}, Lh4/q;->j(Landroidx/work/impl/model/j0;I)V

    :cond_6
    iget-object v4, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->e0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :goto_5
    iget-object v0, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->t()V

    throw p1

    :cond_7
    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Landroidx/work/impl/model/j0;I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lh4/q;->c:Lh4/o;

    invoke-virtual {v1, p1, p2}, Lh4/o;->a(Landroidx/work/impl/model/j0;I)Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v2

    sget-object v3, Lh4/q;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling work ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Job ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lh4/q;->b:Landroid/app/job/JobScheduler;

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to schedule work ID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroidx/work/t;->k(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p1, Landroidx/work/impl/model/j0;->q:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/work/impl/model/j0;->r:Landroidx/work/OutOfQuotaPolicy;

    sget-object v2, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    if-ne v1, v2, :cond_0

    iput-boolean v0, p1, Landroidx/work/impl/model/j0;->q:Z

    const-string v1, "Scheduling a non-expedited job (work ID %s)"

    iget-object v2, p1, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lh4/q;->j(Landroidx/work/impl/model/j0;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Lh4/q;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to schedule "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/work/t;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lh4/q;->a:Landroid/content/Context;

    iget-object v0, p0, Lh4/q;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Lh4/q;->e:Landroidx/work/b;

    invoke-static {p2, v0, v1}, Lh4/d;->a(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Landroidx/work/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Lh4/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroidx/work/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lh4/q;->e:Landroidx/work/b;

    invoke-virtual {p1}, Landroidx/work/b;->l()Landroidx/core/util/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroidx/core/util/a;->accept(Ljava/lang/Object;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    throw v0
.end method
