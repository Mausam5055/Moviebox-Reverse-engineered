.class final Lv10/f;
.super Ljava/lang/Object;

# interfaces
.implements Lretrofit2/e;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Lio/reactivex/rxjava3/core/Scheduler;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lio/reactivex/rxjava3/core/Scheduler;ZZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv10/f;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lv10/f;->b:Lio/reactivex/rxjava3/core/Scheduler;

    iput-boolean p3, p0, Lv10/f;->c:Z

    iput-boolean p4, p0, Lv10/f;->d:Z

    iput-boolean p5, p0, Lv10/f;->e:Z

    iput-boolean p6, p0, Lv10/f;->f:Z

    iput-boolean p7, p0, Lv10/f;->g:Z

    iput-boolean p8, p0, Lv10/f;->h:Z

    iput-boolean p9, p0, Lv10/f;->i:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lv10/f;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Lretrofit2/d;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lv10/f;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lv10/b;

    invoke-direct {v0, p1}, Lv10/b;-><init>(Lretrofit2/d;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lv10/c;

    invoke-direct {v0, p1}, Lv10/c;-><init>(Lretrofit2/d;)V

    :goto_0
    iget-boolean p1, p0, Lv10/f;->d:Z

    if-eqz p1, :cond_1

    new-instance p1, Lv10/e;

    invoke-direct {p1, v0}, Lv10/e;-><init>(Lio/reactivex/rxjava3/core/j;)V

    :goto_1
    move-object v0, p1

    goto :goto_2

    :cond_1
    iget-boolean p1, p0, Lv10/f;->e:Z

    if-eqz p1, :cond_2

    new-instance p1, Lv10/a;

    invoke-direct {p1, v0}, Lv10/a;-><init>(Lio/reactivex/rxjava3/core/j;)V

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lv10/f;->b:Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/j;->E(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/j;

    move-result-object v0

    :cond_3
    iget-boolean p1, p0, Lv10/f;->f:Z

    if-eqz p1, :cond_4

    sget-object p1, Lio/reactivex/rxjava3/core/BackpressureStrategy;->MISSING:Lio/reactivex/rxjava3/core/BackpressureStrategy;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/core/j;->F(Lio/reactivex/rxjava3/core/BackpressureStrategy;)Lio/reactivex/rxjava3/core/e;

    move-result-object p1

    return-object p1

    :cond_4
    iget-boolean p1, p0, Lv10/f;->g:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/j;->A()Lio/reactivex/rxjava3/core/p;

    move-result-object p1

    return-object p1

    :cond_5
    iget-boolean p1, p0, Lv10/f;->h:Z

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/j;->z()Lio/reactivex/rxjava3/core/g;

    move-result-object p1

    return-object p1

    :cond_6
    iget-boolean p1, p0, Lv10/f;->i:Z

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/j;->s()Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-static {v0}, Lpz/a;->o(Lio/reactivex/rxjava3/core/j;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    return-object p1
.end method
