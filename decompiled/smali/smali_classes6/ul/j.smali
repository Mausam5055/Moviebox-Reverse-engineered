.class public final synthetic Lul/j;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/Item;

.field public final synthetic b:Lcom/transsion/home/bean/FilterVal;

.field public final synthetic c:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic d:Landroidx/compose/ui/f;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/j;->a:Lcom/transsion/home/bean/Item;

    iput-object p2, p0, Lul/j;->b:Lcom/transsion/home/bean/FilterVal;

    iput-object p3, p0, Lul/j;->c:Landroidx/compose/runtime/snapshots/t;

    iput-object p4, p0, Lul/j;->d:Landroidx/compose/ui/f;

    iput p5, p0, Lul/j;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lul/j;->a:Lcom/transsion/home/bean/Item;

    iget-object v1, p0, Lul/j;->b:Lcom/transsion/home/bean/FilterVal;

    iget-object v2, p0, Lul/j;->c:Landroidx/compose/runtime/snapshots/t;

    iget-object v3, p0, Lul/j;->d:Landroidx/compose/ui/f;

    iget v4, p0, Lul/j;->e:I

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/transsion/home/view/filter/popup/e;->g(Lcom/transsion/home/bean/Item;Lcom/transsion/home/bean/FilterVal;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/ui/f;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
