.class public final synthetic Lcom/transsion/member/promotion/t;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/t;->a:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/promotion/t;->a:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, p1, p2}, Lcom/transsion/member/promotion/PromotionManager;->b(Lkotlin/jvm/functions/Function1;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
