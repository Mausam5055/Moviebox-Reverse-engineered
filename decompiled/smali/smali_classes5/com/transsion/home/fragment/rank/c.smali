.class public final synthetic Lcom/transsion/home/fragment/rank/c;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field public final synthetic c:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/home/fragment/rank/RankAllFragment;Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/c;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/c;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iput-object p3, p0, Lcom/transsion/home/fragment/rank/c;->c:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/c;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iget-object v2, p0, Lcom/transsion/home/fragment/rank/c;->c:Landroidx/compose/runtime/i1;

    check-cast p1, Landroidx/compose/foundation/lazy/u;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/fragment/rank/RankAllFragment;->h0(Ljava/util/List;Lcom/transsion/home/fragment/rank/RankAllFragment;Landroidx/compose/runtime/i1;Landroidx/compose/foundation/lazy/u;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
