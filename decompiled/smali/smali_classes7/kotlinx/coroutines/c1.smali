.class final Lkotlinx/coroutines/c1;
.super Lkotlinx/coroutines/w1;


# instance fields
.field private final e:Lkotlinx/coroutines/a1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/a1;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c1;->e:Lkotlinx/coroutines/a1;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/c1;->e:Lkotlinx/coroutines/a1;

    invoke-interface {p1}, Lkotlinx/coroutines/a1;->dispose()V

    return-void
.end method
