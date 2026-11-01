.class public final Lm6/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm6/d$a$a;
    }
.end annotation


# static fields
.field public static final d:Lm6/d$a$a;

.field private static final e:Ljava/lang/Object;

.field private static f:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroidx/recyclerview/widget/DiffUtil$e;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm6/d$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm6/d$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lm6/d$a;->d:Lm6/d$a$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm6/d$a;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$e;)V
    .locals 1

    const-string v0, "mDiffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm6/d$a;->a:Landroidx/recyclerview/widget/DiffUtil$e;

    return-void
.end method


# virtual methods
.method public final a()Lm6/d;
    .locals 4

    iget-object v0, p0, Lm6/d$a;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    sget-object v0, Lm6/d$a;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lm6/d$a;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lm6/d$a;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object v0, Lm6/d$a;->f:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lm6/d$a;->c:Ljava/util/concurrent/Executor;

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    new-instance v0, Lm6/d;

    iget-object v1, p0, Lm6/d$a;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lm6/d$a;->c:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lm6/d$a;->a:Landroidx/recyclerview/widget/DiffUtil$e;

    invoke-direct {v0, v1, v2, v3}, Lm6/d;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$e;)V

    return-object v0
.end method
