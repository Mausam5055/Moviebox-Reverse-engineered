.class final Lcom/transsion/home/view/filter/popup/PopupFilterView$b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/view/filter/popup/PopupFilterView;->initSelectData(Ljava/util/List;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/transsion/home/view/filter/popup/PopupFilterView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)V
    .locals 3

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->G()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.transsion.home.view.filter.popup.PopupFilterView.initSelectData.<anonymous>.<anonymous> (PopupFilterView.kt:93)"

    const v2, 0x1d0359f2

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iget-object v0, p0, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->FilterLinear(Ljava/util/List;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/view/filter/popup/PopupFilterView$b;->a(Landroidx/compose/runtime/i;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
