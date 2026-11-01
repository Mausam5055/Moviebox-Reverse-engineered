.class abstract Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lqz/a;->d()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$a;->a:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method
