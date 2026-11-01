.class public Lcom/transsion/al/ka/AppLockJobService;
.super Landroid/app/job/JobService;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLockJobService"


# instance fields
.field private kJobId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/al/ka/AppLockJobService;->kJobId:I

    return-void
.end method

.method public static synthetic a(Lcom/transsion/al/ka/AppLockJobService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/al/ka/AppLockJobService;->lambda$onStopJob$1()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/al/ka/AppLockJobService;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/al/ka/AppLockJobService;->lambda$onStartJob$0()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/al/ka/JobUtils;->startAppLockJobService(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onStopJob$1()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/al/ka/JobUtils;->startAppLockJobService(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->e()Lcom/tn/lib/thread/ThreadPool;

    move-result-object p1

    new-instance v0, Lcom/transsion/al/ka/a;

    invoke-direct {v0, p0}, Lcom/transsion/al/ka/a;-><init>(Lcom/transsion/al/ka/AppLockJobService;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/thread/ThreadPool;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-static {}, Lcom/tn/lib/thread/ThreadPool;->e()Lcom/tn/lib/thread/ThreadPool;

    move-result-object p1

    new-instance v0, Lcom/transsion/al/ka/b;

    invoke-direct {v0, p0}, Lcom/transsion/al/ka/b;-><init>(Lcom/transsion/al/ka/AppLockJobService;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/thread/ThreadPool;->d(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method
