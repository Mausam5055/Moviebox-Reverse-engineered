.class public final synthetic Lcom/transsion/home/fragment/rank/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/CategoryType;

.field public final synthetic b:Lcom/transsion/home/fragment/rank/RankAllFragment;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/rank/i;->a:Lcom/transsion/home/bean/CategoryType;

    iput-object p2, p0, Lcom/transsion/home/fragment/rank/i;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iput p3, p0, Lcom/transsion/home/fragment/rank/i;->c:I

    iput-object p4, p0, Lcom/transsion/home/fragment/rank/i;->d:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/transsion/home/fragment/rank/i;->a:Lcom/transsion/home/bean/CategoryType;

    iget-object v1, p0, Lcom/transsion/home/fragment/rank/i;->b:Lcom/transsion/home/fragment/rank/RankAllFragment;

    iget v2, p0, Lcom/transsion/home/fragment/rank/i;->c:I

    iget-object v3, p0, Lcom/transsion/home/fragment/rank/i;->d:Landroidx/compose/runtime/i1;

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/home/fragment/rank/RankAllFragment$b;->a(Lcom/transsion/home/bean/CategoryType;Lcom/transsion/home/fragment/rank/RankAllFragment;ILandroidx/compose/runtime/i1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
