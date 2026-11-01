.class public final synthetic Lcom/transsion/home/fragment/rank/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/fragment/rank/RankAllFragment;Ljava/util/List;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/d;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/home/fragment/rank/d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/home/fragment/rank/d;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/d;->a:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/d;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/home/fragment/rank/d;->c:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/home/fragment/rank/d;->d:I

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/fragment/rank/RankAllFragment;->a0(Lcom/transsion/home/fragment/rank/RankAllFragment;Ljava/util/List;Ljava/lang/String;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
