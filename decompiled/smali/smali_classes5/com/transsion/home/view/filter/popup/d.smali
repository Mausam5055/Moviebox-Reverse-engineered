.class public final synthetic Lcom/transsion/home/view/filter/popup/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic b:Landroidx/compose/runtime/snapshots/t;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/d;->a:Landroidx/compose/runtime/snapshots/t;

    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/d;->b:Landroidx/compose/runtime/snapshots/t;

    iput-object p3, p0, Lcom/transsion/home/view/filter/popup/d;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/view/filter/popup/d;->a:Landroidx/compose/runtime/snapshots/t;

    iget-object v1, p0, Lcom/transsion/home/view/filter/popup/d;->b:Landroidx/compose/runtime/snapshots/t;

    iget-object v2, p0, Lcom/transsion/home/view/filter/popup/d;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/transsion/home/view/filter/popup/e$a;->b(Landroidx/compose/runtime/snapshots/t;Landroidx/compose/runtime/snapshots/t;Lkotlin/jvm/functions/Function1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
