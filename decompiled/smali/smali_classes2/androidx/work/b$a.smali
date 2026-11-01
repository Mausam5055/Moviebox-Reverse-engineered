.class public final Landroidx/work/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Lkotlin/coroutines/CoroutineContext;

.field private c:Landroidx/work/m0;

.field private d:Landroidx/work/l;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Landroidx/work/a;

.field private g:Landroidx/work/d0;

.field private h:Landroidx/core/util/a;

.field private i:Landroidx/core/util/a;

.field private j:Landroidx/core/util/a;

.field private k:Landroidx/core/util/a;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroidx/work/f0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Landroidx/work/b$a;->m:J

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/b$a;->n:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/b$a;->p:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/b$a;->q:I

    const/16 v0, 0x8

    iput v0, p0, Landroidx/work/b$a;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/b$a;->s:Z

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/b;
    .locals 1

    new-instance v0, Landroidx/work/b;

    invoke-direct {v0, p0}, Landroidx/work/b;-><init>(Landroidx/work/b$a;)V

    return-object v0
.end method

.method public final b()Landroidx/work/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->f:Landroidx/work/a;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Landroidx/work/b$a;->r:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final f()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->h:Landroidx/core/util/a;

    return-object v0
.end method

.method public final g()Landroidx/work/l;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->d:Landroidx/work/l;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/work/b$a;->n:I

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/work/b$a;->s:Z

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/work/b$a;->p:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Landroidx/work/b$a;->q:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Landroidx/work/b$a;->o:I

    return v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Landroidx/work/b$a;->m:J

    return-wide v0
.end method

.method public final n()Landroidx/work/d0;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->g:Landroidx/work/d0;

    return-object v0
.end method

.method public final o()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->i:Landroidx/core/util/a;

    return-object v0
.end method

.method public final p()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->e:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final q()Landroidx/work/f0;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->t:Landroidx/work/f0;

    return-object v0
.end method

.method public final r()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->b:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final s()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->k:Landroidx/core/util/a;

    return-object v0
.end method

.method public final t()Landroidx/work/m0;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->c:Landroidx/work/m0;

    return-object v0
.end method

.method public final u()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b$a;->j:Landroidx/core/util/a;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)Landroidx/work/b$a;
    .locals 1

    const-string v0, "processName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/b$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final w(Landroidx/core/util/a;)Landroidx/work/b$a;
    .locals 1

    const-string v0, "exceptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/b$a;->h:Landroidx/core/util/a;

    return-object p0
.end method

.method public final x(I)Landroidx/work/b$a;
    .locals 0

    iput p1, p0, Landroidx/work/b$a;->n:I

    return-object p0
.end method
