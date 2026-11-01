.class public final synthetic Lul/g;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic b:Lcom/transsion/home/bean/Item;

.field public final synthetic c:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/g;->a:Landroidx/compose/runtime/snapshots/t;

    iput-object p2, p0, Lul/g;->b:Lcom/transsion/home/bean/Item;

    iput-object p3, p0, Lul/g;->c:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lul/g;->a:Landroidx/compose/runtime/snapshots/t;

    iget-object v1, p0, Lul/g;->b:Lcom/transsion/home/bean/Item;

    iget-object v2, p0, Lul/g;->c:Landroidx/compose/runtime/i1;

    invoke-static {v0, v1, v2}, Lcom/transsion/home/view/filter/popup/e;->c(Landroidx/compose/runtime/snapshots/t;Lcom/transsion/home/bean/Item;Landroidx/compose/runtime/i1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
