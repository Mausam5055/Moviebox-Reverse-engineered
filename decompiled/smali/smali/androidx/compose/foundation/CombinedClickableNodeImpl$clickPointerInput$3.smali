.class final Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$3;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/CombinedClickableNodeImpl;->Q1(Landroidx/compose/ui/input/pointer/e0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly/g;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Ly/g;",
        "it",
        "",
        "invoke-k-4lQ0M",
        "(J)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/CombinedClickableNodeImpl;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/CombinedClickableNodeImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$3;->this$0:Landroidx/compose/foundation/CombinedClickableNodeImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ly/g;

    invoke-virtual {p1}, Ly/g;->v()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$3;->invoke-k-4lQ0M(J)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke-k-4lQ0M(J)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/foundation/CombinedClickableNodeImpl$clickPointerInput$3;->this$0:Landroidx/compose/foundation/CombinedClickableNodeImpl;

    invoke-static {p1}, Landroidx/compose/foundation/CombinedClickableNodeImpl;->d2(Landroidx/compose/foundation/CombinedClickableNodeImpl;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
