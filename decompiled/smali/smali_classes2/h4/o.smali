.class Lh4/o;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ComponentName;

.field private final b:Landroidx/work/a;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh4/o;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh4/o;->b:Landroidx/work/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {p2, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p2, p0, Lh4/o;->a:Landroid/content/ComponentName;

    iput-boolean p3, p0, Lh4/o;->c:Z

    return-void
.end method

.method private static b(Landroidx/work/d$c;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 1

    invoke-virtual {p0}, Landroidx/work/d$c;->b()Z

    move-result v0

    invoke-static {}, Lh4/m;->a()V

    invoke-virtual {p0}, Landroidx/work/d$c;->a()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, v0}, Lh4/l;->a(Landroid/net/Uri;I)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroidx/work/NetworkType;)I
    .locals 5

    sget-object v0, Lh4/o$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    return v2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    return v3

    :cond_2
    :goto_0
    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v2, Lh4/o;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "API version too low. Cannot convert network type value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    return v2

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method static d(Landroid/app/job/JobInfo$Builder;Landroidx/work/NetworkType;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0x19

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-static {p0, p1}, Lh4/n;->a(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lh4/o;->c(Landroidx/work/NetworkType;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroidx/work/impl/model/j0;I)Landroid/app/job/JobInfo;
    .locals 10

    iget-object v0, p1, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "EXTRA_WORK_SPEC_ID"

    iget-object v3, p1, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    invoke-virtual {p1}, Landroidx/work/impl/model/j0;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "EXTRA_IS_PERIODIC"

    invoke-virtual {p1}, Landroidx/work/impl/model/j0;->o()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    iget-object v3, p0, Lh4/o;->a:Landroid/content/ComponentName;

    invoke-direct {v2, p2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0}, Landroidx/work/d;->i()Z

    move-result p2

    invoke-virtual {v2, p2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/work/d;->j()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/work/d;->d()Landroid/net/NetworkRequest;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {p2, v1}, Lh4/p;->a(Landroid/app/job/JobInfo$Builder;Landroid/net/NetworkRequest;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/work/d;->f()Landroidx/work/NetworkType;

    move-result-object v1

    invoke-static {p2, v1}, Lh4/o;->d(Landroid/app/job/JobInfo$Builder;Landroidx/work/NetworkType;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/work/d;->j()Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroidx/work/impl/model/j0;->l:Landroidx/work/BackoffPolicy;

    sget-object v6, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne v1, v6, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    iget-wide v6, p1, Landroidx/work/impl/model/j0;->m:J

    invoke-virtual {p2, v6, v7, v1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Landroidx/work/impl/model/j0;->c()J

    move-result-wide v6

    iget-object v1, p0, Lh4/o;->b:Landroidx/work/a;

    invoke-interface {v1}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    if-gt v2, v3, :cond_3

    invoke-virtual {p2, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_3
    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    invoke-virtual {p2, v6, v7}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_2

    :cond_4
    iget-boolean v1, p1, Landroidx/work/impl/model/j0;->q:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lh4/o;->c:Z

    if-eqz v1, :cond_5

    invoke-static {p2, v5}, Lh4/e;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    :cond_5
    :goto_2
    const/16 v1, 0x18

    if-lt v2, v1, :cond_7

    invoke-virtual {v0}, Landroidx/work/d;->g()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroidx/work/d;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/d$c;

    invoke-static {v2}, Lh4/o;->b(Landroidx/work/d$c;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    invoke-static {p2, v2}, Lh4/f;->a(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroidx/work/d;->b()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lh4/g;->a(Landroid/app/job/JobInfo$Builder;J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroidx/work/d;->a()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lh4/h;->a(Landroid/app/job/JobInfo$Builder;J)Landroid/app/job/JobInfo$Builder;

    :cond_7
    invoke-virtual {p2, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_8

    invoke-virtual {v0}, Landroidx/work/d;->h()Z

    move-result v2

    invoke-static {p2, v2}, Lh4/i;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroidx/work/d;->k()Z

    move-result v0

    invoke-static {p2, v0}, Lf2/a;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    :cond_8
    iget v0, p1, Landroidx/work/impl/model/j0;->k:I

    if-lez v0, :cond_9

    move v0, v5

    goto :goto_4

    :cond_9
    move v0, v4

    :goto_4
    cmp-long v2, v6, v8

    if-lez v2, :cond_a

    move v4, v5

    :cond_a
    const/16 v2, 0x1f

    if-lt v1, v2, :cond_b

    iget-boolean v2, p1, Landroidx/work/impl/model/j0;->q:Z

    if-eqz v2, :cond_b

    if-nez v0, :cond_b

    if-nez v4, :cond_b

    invoke-static {p2, v5}, Lh4/j;->a(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    :cond_b
    const/16 v0, 0x23

    if-lt v1, v0, :cond_c

    invoke-virtual {p1}, Landroidx/work/impl/model/j0;->l()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-static {p2, p1}, Lh4/k;->a(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;

    :cond_c
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
