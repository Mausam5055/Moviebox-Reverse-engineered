.class public final synthetic Lcom/transsion/member/promotion/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/transsion/memberapi/SkuPromotionItem;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/promotion/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/member/promotion/h;->b:Lcom/transsion/memberapi/SkuPromotionItem;

    iput-object p3, p0, Lcom/transsion/member/promotion/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/member/promotion/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/member/promotion/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/transsion/member/promotion/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/member/promotion/h;->b:Lcom/transsion/memberapi/SkuPromotionItem;

    iget-object v2, p0, Lcom/transsion/member/promotion/h;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/member/promotion/h;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/member/promotion/h;->e:Ljava/lang/String;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/transsion/member/promotion/i;->a(Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
