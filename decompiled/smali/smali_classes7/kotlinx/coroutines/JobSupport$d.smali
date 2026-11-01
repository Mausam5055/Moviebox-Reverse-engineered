.class final Lkotlinx/coroutines/JobSupport$d;
.super Lkotlinx/coroutines/w1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic e:Lkotlinx/coroutines/JobSupport;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/f;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$d;->e:Lkotlinx/coroutines/JobSupport;

    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

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

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 p1, 0x0

    throw p1
.end method
