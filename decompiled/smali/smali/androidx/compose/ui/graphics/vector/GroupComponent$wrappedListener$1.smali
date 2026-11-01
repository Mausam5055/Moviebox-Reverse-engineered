.class final Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/vector/i;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/i;",
        "node",
        "",
        "invoke",
        "(Landroidx/compose/ui/graphics/vector/i;)V",
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
.field final synthetic this$0:Landroidx/compose/ui/graphics/vector/GroupComponent;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;->this$0:Landroidx/compose/ui/graphics/vector/GroupComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/graphics/vector/i;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;->invoke(Landroidx/compose/ui/graphics/vector/i;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/graphics/vector/i;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;->this$0:Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/vector/GroupComponent;->e(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/i;)V

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/GroupComponent$wrappedListener$1;->this$0:Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
