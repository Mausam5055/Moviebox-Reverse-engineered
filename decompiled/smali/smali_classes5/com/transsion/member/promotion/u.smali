.class public final synthetic Lcom/transsion/member/promotion/u;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lcom/transsion/memberapi/SkuPromotionItem;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/SkuPromotionItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/u;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/transsion/member/promotion/u;->b:Lcom/transsion/memberapi/SkuPromotionItem;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/member/promotion/u;->a:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/member/promotion/u;->b:Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, v1}, Lcom/transsion/member/promotion/PromotionManager;->h(Lkotlin/jvm/functions/Function1;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
