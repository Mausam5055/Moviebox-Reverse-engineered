.class final Lkotlinx/coroutines/flow/h1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/g1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/i1;)Lkotlinx/coroutines/flow/b;
    .locals 0

    sget-object p1, Lkotlinx/coroutines/flow/SharingCommand;->START:Lkotlinx/coroutines/flow/SharingCommand;

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->t(Ljava/lang/Object;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SharingStarted.Eagerly"

    return-object v0
.end method
