.class final Lkotlinx/coroutines/flow/SharedFlowImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/a1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/SharedFlowImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public b:J

.field public final c:Ljava/lang/Object;

.field public final d:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/SharedFlowImpl;JLjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->a:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-wide p2, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->b:J

    iput-object p4, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->c:Ljava/lang/Object;

    iput-object p5, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/SharedFlowImpl$a;->a:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v0, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->o(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/SharedFlowImpl$a;)V

    return-void
.end method
