.class public final synthetic Lul/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/Item;

.field public final synthetic b:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/l;->a:Lcom/transsion/home/bean/Item;

    iput-object p2, p0, Lul/l;->b:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lul/l;->a:Lcom/transsion/home/bean/Item;

    iget-object v1, p0, Lul/l;->b:Landroidx/compose/runtime/i1;

    invoke-static {v0, v1}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->a(Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
