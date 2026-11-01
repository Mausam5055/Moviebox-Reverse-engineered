.class public final synthetic Lul/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

.field public final synthetic b:Lcom/transsion/home/bean/Item;

.field public final synthetic c:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/filter/popup/PopupFilterView;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/k;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iput-object p2, p0, Lul/k;->b:Lcom/transsion/home/bean/Item;

    iput-object p3, p0, Lul/k;->c:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lul/k;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iget-object v1, p0, Lul/k;->b:Lcom/transsion/home/bean/Item;

    iget-object v2, p0, Lul/k;->c:Landroidx/compose/runtime/i1;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->d(Lcom/transsion/home/view/filter/popup/PopupFilterView;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
