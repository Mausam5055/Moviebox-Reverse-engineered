.class public final Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;
    }
.end annotation


# static fields
.field public static final e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

.field private static f:Z


# instance fields
.field public final a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

.field public final b:Lcom/google/firebase/crashlytics/internal/concurrency/e;

.field public final c:Lcom/google/firebase/crashlytics/internal/concurrency/e;

.field public final d:Lcom/google/firebase/crashlytics/internal/concurrency/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    const-string v0, "backgroundExecutorService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingExecutorService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->b:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/concurrency/e;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->c:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance p1, Lcom/google/firebase/crashlytics/internal/concurrency/e;

    invoke-direct {p1, p2}, Lcom/google/firebase/crashlytics/internal/concurrency/e;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->d:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->f:Z

    return v0
.end method

.method public static final synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->f:Z

    return-void
.end method

.method public static final c()V
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->e()V

    return-void
.end method

.method public static final d()V
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->f()V

    return-void
.end method

.method public static final e()V
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->g()V

    return-void
.end method

.method public static final f(Z)V
    .locals 1

    sget-object v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->n(Z)V

    return-void
.end method
