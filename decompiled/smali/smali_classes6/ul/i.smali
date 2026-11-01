.class public final synthetic Lul/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic b:Lcom/transsion/home/bean/Item;

.field public final synthetic c:Lcom/transsion/home/bean/FilterVal;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/i;->a:Landroidx/compose/runtime/snapshots/t;

    iput-object p2, p0, Lul/i;->b:Lcom/transsion/home/bean/Item;

    iput-object p3, p0, Lul/i;->c:Lcom/transsion/home/bean/FilterVal;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lul/i;->a:Landroidx/compose/runtime/snapshots/t;

    iget-object v1, p0, Lul/i;->b:Lcom/transsion/home/bean/Item;

    iget-object v2, p0, Lul/i;->c:Lcom/transsion/home/bean/FilterVal;

    invoke-static {v0, v1, v2}, Lcom/transsion/home/view/filter/popup/e;->e(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
