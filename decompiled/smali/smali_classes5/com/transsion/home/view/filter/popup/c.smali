.class public final synthetic Lcom/transsion/home/view/filter/popup/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Landroidx/compose/runtime/snapshots/t;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/view/filter/popup/c;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/home/view/filter/popup/c;->b:Landroidx/compose/runtime/snapshots/t;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/view/filter/popup/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/home/view/filter/popup/c;->b:Landroidx/compose/runtime/snapshots/t;

    invoke-static {v0, v1}, Lcom/transsion/home/view/filter/popup/e$a;->d(Ljava/util/List;Landroidx/compose/runtime/snapshots/t;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
