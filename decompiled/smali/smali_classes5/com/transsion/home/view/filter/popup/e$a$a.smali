.class final Lcom/transsion/home/view/filter/popup/e$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/view/filter/popup/e$a;->e(Landroidx/compose/runtime/i;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/Item;

.field final synthetic b:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->a:Lcom/transsion/home/bean/Item;

    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->b:Landroidx/compose/runtime/snapshots/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V
    .locals 2

    const-string v0, "$this$item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/runtime/i;->h()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->G()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    const-string v0, "com.transsion.home.view.filter.popup.MultiFilterPopup.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous>.<anonymous> (MultiFilterPopupWindow.kt:175)"

    const v1, 0x301e7345

    invoke-static {v1, p3, p1, v0}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->a:Lcom/transsion/home/bean/Item;

    iget-object p3, p0, Lcom/transsion/home/view/filter/popup/e$a$a;->b:Landroidx/compose/runtime/snapshots/t;

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Lcom/transsion/home/view/filter/popup/e;->A(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/lazy/b;

    check-cast p2, Landroidx/compose/runtime/i;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/view/filter/popup/e$a$a;->a(Landroidx/compose/foundation/lazy/b;Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
