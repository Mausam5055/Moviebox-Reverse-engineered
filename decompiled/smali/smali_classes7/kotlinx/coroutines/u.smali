.class final Lkotlinx/coroutines/u;
.super Lkotlinx/coroutines/w1;

# interfaces
.implements Lkotlinx/coroutines/t;


# instance fields
.field public final e:Lkotlinx/coroutines/v;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/v;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/u;->e:Lkotlinx/coroutines/v;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/w1;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/JobSupport;->childCancelled(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Lkotlinx/coroutines/t1;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/coroutines/w1;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/u;->e:Lkotlinx/coroutines/v;

    invoke-virtual {p0}, Lkotlinx/coroutines/w1;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/v;->parentCancelled(Lkotlinx/coroutines/f2;)V

    return-void
.end method
