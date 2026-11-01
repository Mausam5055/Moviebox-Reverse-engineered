.class final Landroidx/compose/ui/window/DialogWrapper$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/DialogWrapper;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/c;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Lo0/e;Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/activity/u;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/activity/u;",
        "",
        "invoke",
        "(Landroidx/activity/u;)V",
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
.field final synthetic this$0:Landroidx/compose/ui/window/DialogWrapper;


# direct methods
.method constructor <init>(Landroidx/compose/ui/window/DialogWrapper;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$2;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/activity/u;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/window/DialogWrapper$2;->invoke(Landroidx/activity/u;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/activity/u;)V
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$2;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->f(Landroidx/compose/ui/window/DialogWrapper;)Landroidx/compose/ui/window/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/window/c;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/window/DialogWrapper$2;->this$0:Landroidx/compose/ui/window/DialogWrapper;

    invoke-static {p1}, Landroidx/compose/ui/window/DialogWrapper;->e(Landroidx/compose/ui/window/DialogWrapper;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
