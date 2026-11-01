.class public final Lcom/cloud/h5update/service/LocalH5UpdateJobService;
.super Landroid/app/job/JobService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/cloud/h5update/service/LocalH5UpdateJobService;",
        "Landroid/app/job/JobService;",
        "<init>",
        "()V",
        "Landroid/app/job/JobParameters;",
        "jobParameters",
        "",
        "onStartJob",
        "(Landroid/app/job/JobParameters;)Z",
        "onStopJob",
        "a",
        "apph5update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/h5update/service/LocalH5UpdateJobService;->a:Lcom/cloud/h5update/service/LocalH5UpdateJobService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/cloud/h5update/service/LocalH5UpdateJobService;->b()V

    return-void
.end method

.method private static final b()V
    .locals 2

    sget-object v0, Lcom/cloud/h5update/utils/l;->a:Lcom/cloud/h5update/utils/l;

    sget-object v1, Lcom/cloud/h5update/b;->g:Lcom/cloud/h5update/b$b;

    invoke-virtual {v1}, Lcom/cloud/h5update/b$b;->a()Lcom/cloud/h5update/bean/UpdateEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/h5update/utils/l;->e(Lcom/cloud/h5update/bean/UpdateEntity;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "jobParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/h5update/utils/ExecutorUtils;->g()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lu6/a;

    invoke-direct {v0}, Lu6/a;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const-string v0, "jobParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
