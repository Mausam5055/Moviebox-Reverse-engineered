.class final Lkotlinx/coroutines/s1;
.super Lkotlinx/coroutines/w1;


# instance fields
.field private final e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/s1;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/s1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
