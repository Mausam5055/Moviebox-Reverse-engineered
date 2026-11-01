.class public abstract Lqz/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqz/a$b;,
        Lqz/a$h;,
        Lqz/a$f;,
        Lqz/a$c;,
        Lqz/a$e;,
        Lqz/a$d;,
        Lqz/a$a;,
        Lqz/a$g;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/Scheduler;

.field static final b:Lio/reactivex/rxjava3/core/Scheduler;

.field static final c:Lio/reactivex/rxjava3/core/Scheduler;

.field static final d:Lio/reactivex/rxjava3/core/Scheduler;

.field static final e:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqz/a$h;

    invoke-direct {v0}, Lqz/a$h;-><init>()V

    invoke-static {v0}, Lpz/a;->i(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lqz/a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Lqz/a$b;

    invoke-direct {v0}, Lqz/a$b;-><init>()V

    invoke-static {v0}, Lpz/a;->f(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lqz/a;->b:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Lqz/a$c;

    invoke-direct {v0}, Lqz/a$c;-><init>()V

    invoke-static {v0}, Lpz/a;->g(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lqz/a;->c:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {}, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;->g()Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;

    move-result-object v0

    sput-object v0, Lqz/a;->d:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Lqz/a$f;

    invoke-direct {v0}, Lqz/a$f;-><init>()V

    invoke-static {v0}, Lpz/a;->h(Llz/k;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lqz/a;->e:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lqz/a;->b(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    invoke-static {p0, p1, p2}, Lpz/a;->e(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lqz/a;->c:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Lpz/a;->s(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1

    sget-object v0, Lqz/a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {v0}, Lpz/a;->u(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    return-object v0
.end method
