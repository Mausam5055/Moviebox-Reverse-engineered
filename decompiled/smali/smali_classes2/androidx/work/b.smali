.class public final Landroidx/work/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/b$a;,
        Landroidx/work/b$b;,
        Landroidx/work/b$c;
    }
.end annotation


# static fields
.field public static final v:Landroidx/work/b$b;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lkotlin/coroutines/CoroutineContext;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Landroidx/work/a;

.field private final e:Landroidx/work/m0;

.field private final f:Landroidx/work/l;

.field private final g:Landroidx/work/d0;

.field private final h:Landroidx/core/util/a;

.field private final i:Landroidx/core/util/a;

.field private final j:Landroidx/core/util/a;

.field private final k:Landroidx/core/util/a;

.field private final l:Ljava/lang/String;

.field private final m:J

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:Z

.field private final t:Z

.field private final u:Landroidx/work/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/b$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/b;->v:Landroidx/work/b$b;

    return-void
.end method

.method public constructor <init>(Landroidx/work/b$a;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/work/b$a;->r()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/b$a;->e()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/work/c;->a(Lkotlin/coroutines/CoroutineContext;)Ljava/util/concurrent/Executor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v2}, Landroidx/work/c;->b(Z)Ljava/util/concurrent/Executor;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/work/b$a;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lkotlinx/coroutines/m1;->b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    move-result-object v0

    :cond_3
    :goto_1
    iput-object v0, p0, Landroidx/work/b;->b:Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {p1}, Landroidx/work/b$a;->p()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Landroidx/work/b;->s:Z

    invoke-virtual {p1}, Landroidx/work/b$a;->p()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1}, Landroidx/work/c;->b(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Landroidx/work/b;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {p1}, Landroidx/work/b$a;->b()Landroidx/work/a;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Landroidx/work/e0;

    invoke-direct {v0}, Landroidx/work/e0;-><init>()V

    :cond_6
    iput-object v0, p0, Landroidx/work/b;->d:Landroidx/work/a;

    invoke-virtual {p1}, Landroidx/work/b$a;->t()Landroidx/work/m0;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Landroidx/work/h;->a:Landroidx/work/h;

    :cond_7
    iput-object v0, p0, Landroidx/work/b;->e:Landroidx/work/m0;

    invoke-virtual {p1}, Landroidx/work/b$a;->g()Landroidx/work/l;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Landroidx/work/u;->a:Landroidx/work/u;

    :cond_8
    iput-object v0, p0, Landroidx/work/b;->f:Landroidx/work/l;

    invoke-virtual {p1}, Landroidx/work/b$a;->n()Landroidx/work/d0;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Landroidx/work/impl/d;

    invoke-direct {v0}, Landroidx/work/impl/d;-><init>()V

    :cond_9
    iput-object v0, p0, Landroidx/work/b;->g:Landroidx/work/d0;

    invoke-virtual {p1}, Landroidx/work/b$a;->h()I

    move-result v0

    iput v0, p0, Landroidx/work/b;->n:I

    invoke-virtual {p1}, Landroidx/work/b$a;->l()I

    move-result v0

    iput v0, p0, Landroidx/work/b;->o:I

    invoke-virtual {p1}, Landroidx/work/b$a;->j()I

    move-result v0

    iput v0, p0, Landroidx/work/b;->p:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_a

    invoke-virtual {p1}, Landroidx/work/b$a;->k()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroidx/work/b$a;->k()I

    move-result v0

    :goto_2
    iput v0, p0, Landroidx/work/b;->r:I

    invoke-virtual {p1}, Landroidx/work/b$a;->f()Landroidx/core/util/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->h:Landroidx/core/util/a;

    invoke-virtual {p1}, Landroidx/work/b$a;->o()Landroidx/core/util/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->i:Landroidx/core/util/a;

    invoke-virtual {p1}, Landroidx/work/b$a;->u()Landroidx/core/util/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->j:Landroidx/core/util/a;

    invoke-virtual {p1}, Landroidx/work/b$a;->s()Landroidx/core/util/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->k:Landroidx/core/util/a;

    invoke-virtual {p1}, Landroidx/work/b$a;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/b;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/work/b$a;->m()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/work/b;->m:J

    invoke-virtual {p1}, Landroidx/work/b$a;->c()I

    move-result v0

    iput v0, p0, Landroidx/work/b;->q:I

    invoke-virtual {p1}, Landroidx/work/b$a;->i()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/work/b;->t:Z

    invoke-virtual {p1}, Landroidx/work/b$a;->q()Landroidx/work/f0;

    move-result-object p1

    if-nez p1, :cond_b

    invoke-static {}, Landroidx/work/c;->c()Landroidx/work/f0;

    move-result-object p1

    :cond_b
    iput-object p1, p0, Landroidx/work/b;->u:Landroidx/work/f0;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/work/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->d:Landroidx/work/a;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/work/b;->q:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final e()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->h:Landroidx/core/util/a;

    return-object v0
.end method

.method public final f()Landroidx/work/l;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->f:Landroidx/work/l;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Landroidx/work/b;->p:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Landroidx/work/b;->r:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Landroidx/work/b;->o:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Landroidx/work/b;->n:I

    return v0
.end method

.method public final k()Landroidx/work/d0;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->g:Landroidx/work/d0;

    return-object v0
.end method

.method public final l()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->i:Landroidx/core/util/a;

    return-object v0
.end method

.method public final m()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final n()Landroidx/work/f0;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->u:Landroidx/work/f0;

    return-object v0
.end method

.method public final o()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->b:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final p()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->k:Landroidx/core/util/a;

    return-object v0
.end method

.method public final q()Landroidx/work/m0;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->e:Landroidx/work/m0;

    return-object v0
.end method

.method public final r()Landroidx/core/util/a;
    .locals 1

    iget-object v0, p0, Landroidx/work/b;->j:Landroidx/core/util/a;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/work/b;->t:Z

    return v0
.end method
