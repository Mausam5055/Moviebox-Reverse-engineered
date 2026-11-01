.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/WorkerParameters$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroidx/work/f;

.field private c:Ljava/util/Set;

.field private d:Landroidx/work/WorkerParameters$a;

.field private e:I

.field private f:Ljava/util/concurrent/Executor;

.field private g:Lkotlin/coroutines/CoroutineContext;

.field private h:Lj4/c;

.field private i:Landroidx/work/m0;

.field private j:Landroidx/work/c0;

.field private k:Landroidx/work/j;

.field private l:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/f;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;IILjava/util/concurrent/Executor;Lkotlin/coroutines/CoroutineContext;Lj4/c;Landroidx/work/m0;Landroidx/work/c0;Landroidx/work/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/f;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/Set;

    iput-object p4, p0, Landroidx/work/WorkerParameters;->d:Landroidx/work/WorkerParameters$a;

    iput p5, p0, Landroidx/work/WorkerParameters;->e:I

    iput p6, p0, Landroidx/work/WorkerParameters;->l:I

    iput-object p7, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Landroidx/work/WorkerParameters;->g:Lkotlin/coroutines/CoroutineContext;

    iput-object p9, p0, Landroidx/work/WorkerParameters;->h:Lj4/c;

    iput-object p10, p0, Landroidx/work/WorkerParameters;->i:Landroidx/work/m0;

    iput-object p11, p0, Landroidx/work/WorkerParameters;->j:Landroidx/work/c0;

    iput-object p12, p0, Landroidx/work/WorkerParameters;->k:Landroidx/work/j;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->f:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Landroidx/work/j;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->k:Landroidx/work/j;

    return-object v0
.end method

.method public c()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public d()Landroidx/work/f;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->b:Landroidx/work/f;

    return-object v0
.end method

.method public e()Lj4/c;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->h:Lj4/c;

    return-object v0
.end method

.method public f()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->g:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public g()Landroidx/work/m0;
    .locals 1

    iget-object v0, p0, Landroidx/work/WorkerParameters;->i:Landroidx/work/m0;

    return-object v0
.end method
