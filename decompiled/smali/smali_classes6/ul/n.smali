.class public final synthetic Lul/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

.field public final synthetic b:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/filter/popup/PopupFilterView;Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/n;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iput-object p2, p0, Lul/n;->b:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lul/n;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iget-object v1, p0, Lul/n;->b:Landroidx/compose/runtime/i1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->e(Lcom/transsion/home/view/filter/popup/PopupFilterView;Landroidx/compose/runtime/i1;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
