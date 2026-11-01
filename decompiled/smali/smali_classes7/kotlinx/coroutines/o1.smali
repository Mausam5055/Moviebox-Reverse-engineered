.class final Lkotlinx/coroutines/o1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/p1;


# instance fields
.field private final a:Lkotlinx/coroutines/b2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/b2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/o1;->a:Lkotlinx/coroutines/b2;

    return-void
.end method


# virtual methods
.method public b()Lkotlinx/coroutines/b2;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/o1;->a:Lkotlinx/coroutines/b2;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
