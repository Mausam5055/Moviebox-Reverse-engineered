.class public final synthetic Lcom/transsion/home/view/filter/popup/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/b;->b:Landroidx/compose/runtime/snapshots/t;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/view/filter/popup/b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/home/view/filter/popup/b;->b:Landroidx/compose/runtime/snapshots/t;

    check-cast p1, Landroidx/compose/foundation/lazy/u;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/view/filter/popup/e$a;->c(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
