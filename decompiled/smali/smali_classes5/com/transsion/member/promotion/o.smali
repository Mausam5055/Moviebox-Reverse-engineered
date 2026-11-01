.class public final synthetic Lcom/transsion/member/promotion/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/member/promotion/o;->b:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/transsion/member/promotion/o;->c:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/transsion/member/promotion/o;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/member/promotion/o;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/member/promotion/o;->b:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/transsion/member/promotion/o;->c:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/transsion/member/promotion/o;->d:Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    check-cast v4, Landroidx/fragment/app/FragmentActivity;

    move-object v5, p2

    check-cast v5, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static/range {v0 .. v5}, Lcom/transsion/member/promotion/PromotionManager;->f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentActivity;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
