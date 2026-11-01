.class public final synthetic Lcom/transsion/member/promotion/s;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/s;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/member/promotion/s;->b:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/promotion/s;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/member/promotion/s;->b:Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    check-cast p2, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/member/promotion/PromotionManager;->a(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
