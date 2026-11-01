.class final Lkotlinx/coroutines/JobSupport$a;
.super Lkotlinx/coroutines/w1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final e:Lkotlinx/coroutines/JobSupport;

.field private final f:Lkotlinx/coroutines/JobSupport$b;

.field private final g:Lkotlinx/coroutines/u;

.field private final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$b;Lkotlinx/coroutines/u;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/w1;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$a;->e:Lkotlinx/coroutines/JobSupport;

    iput-object p2, p0, Lkotlinx/coroutines/JobSupport$a;->f:Lkotlinx/coroutines/JobSupport$b;

    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$a;->g:Lkotlinx/coroutines/u;

    iput-object p4, p0, Lkotlinx/coroutines/JobSupport$a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 3

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$a;->e:Lkotlinx/coroutines/JobSupport;

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$a;->f:Lkotlinx/coroutines/JobSupport$b;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$a;->g:Lkotlinx/coroutines/u;

    iget-object v2, p0, Lkotlinx/coroutines/JobSupport$a;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lkotlinx/coroutines/JobSupport;->access$continueCompleting(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$b;Lkotlinx/coroutines/u;Ljava/lang/Object;)V

    return-void
.end method
