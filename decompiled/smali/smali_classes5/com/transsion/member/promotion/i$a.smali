.class public final Lcom/transsion/member/promotion/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/payment/lib/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/promotion/i;->f(Landroid/content/Context;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/memberapi/SkuPromotionItem;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lkotlin/jvm/functions/Function0;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/promotion/i$a;->a:Lcom/transsion/memberapi/SkuPromotionItem;

    iput-object p2, p0, Lcom/transsion/member/promotion/i$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/member/promotion/i$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/member/promotion/i$a;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/transsion/member/promotion/i$a;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/transsion/member/promotion/i$a;->f:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 9

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Payment failed "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/16 v0, -0x1e

    if-ne p3, v0, :cond_1

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object p2, p0, Lcom/transsion/member/promotion/i$a;->e:Landroid/content/Context;

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    sget p3, Lcom/transsion/member/R$string;->member_pay_pending:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_1
    :goto_0
    const-string p3, ""

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_4

    sget-object v2, Lcom/transsion/member/promotion/i;->a:Lcom/transsion/member/promotion/i;

    if-nez p4, :cond_3

    move-object v5, p3

    goto :goto_1

    :cond_3
    move-object v5, p4

    :goto_1
    iget-object v6, p0, Lcom/transsion/member/promotion/i$a;->a:Lcom/transsion/memberapi/SkuPromotionItem;

    iget-object v7, p0, Lcom/transsion/member/promotion/i$a;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/member/promotion/i$a;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/transsion/member/promotion/i;->b(Lcom/transsion/member/promotion/i;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object p2, p0, Lcom/transsion/member/promotion/i$a;->e:Landroid/content/Context;

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    sget p3, Lcom/transsion/member/R$string;->member_pay_processing:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    :goto_2
    sget-object v0, Lcom/transsion/member/promotion/i;->a:Lcom/transsion/member/promotion/i;

    if-nez p4, :cond_5

    move-object v3, p3

    goto :goto_3

    :cond_5
    move-object v3, p4

    :goto_3
    iget-object v4, p0, Lcom/transsion/member/promotion/i$a;->a:Lcom/transsion/memberapi/SkuPromotionItem;

    iget-object v5, p0, Lcom/transsion/member/promotion/i$a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/member/promotion/i$a;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/transsion/member/promotion/i;->b(Lcom/transsion/member/promotion/i;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    iget-object p2, p0, Lcom/transsion/member/promotion/i$a;->e:Landroid/content/Context;

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    sget p3, Lcom/transsion/member/R$string;->member_pay_failed:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object p1, p0, Lcom/transsion/member/promotion/i$a;->f:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_6
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p1, "balance"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/member/promotion/i;->a:Lcom/transsion/member/promotion/i;

    iget-object p2, p0, Lcom/transsion/member/promotion/i$a;->a:Lcom/transsion/memberapi/SkuPromotionItem;

    iget-object v0, p0, Lcom/transsion/member/promotion/i$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/member/promotion/i$a;->c:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/transsion/member/promotion/i;->c(Lcom/transsion/member/promotion/i;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-class p2, Lcom/transsion/memberapi/IPremiumApi;

    invoke-static {p2, p1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/transsion/memberapi/IPremiumApi;->g(Lzm/j;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/member/promotion/i$a;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_1
    return-void
.end method
