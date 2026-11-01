.class public final synthetic Lul/u;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/Item;

.field public final synthetic b:Landroidx/compose/foundation/layout/k;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/u;->a:Lcom/transsion/home/bean/Item;

    iput-object p2, p0, Lul/u;->b:Landroidx/compose/foundation/layout/k;

    iput-object p3, p0, Lul/u;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lul/u;->a:Lcom/transsion/home/bean/Item;

    iget-object v1, p0, Lul/u;->b:Landroidx/compose/foundation/layout/k;

    iget-object v2, p0, Lul/u;->c:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/lazy/u;

    invoke-static {v0, v1, v2, p1}, Lul/w$a;->a(Lcom/transsion/home/bean/Item;Landroidx/compose/foundation/layout/k;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
