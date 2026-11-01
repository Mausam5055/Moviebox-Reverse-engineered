.class public final synthetic Lcom/transsion/member/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/member/adapter/e;

.field public final synthetic b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field public final synthetic c:Lcom/transsion/memberapi/SkuPromotionItem;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/transsion/memberapi/MemberPriceItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/adapter/e;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Lcom/transsion/memberapi/MemberPriceItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/adapter/d;->a:Lcom/transsion/member/adapter/e;

    iput-object p2, p0, Lcom/transsion/member/adapter/d;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/transsion/member/adapter/d;->c:Lcom/transsion/memberapi/SkuPromotionItem;

    iput-object p4, p0, Lcom/transsion/member/adapter/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/member/adapter/d;->e:Lcom/transsion/memberapi/MemberPriceItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/member/adapter/d;->a:Lcom/transsion/member/adapter/e;

    iget-object v1, p0, Lcom/transsion/member/adapter/d;->b:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iget-object v2, p0, Lcom/transsion/member/adapter/d;->c:Lcom/transsion/memberapi/SkuPromotionItem;

    iget-object v3, p0, Lcom/transsion/member/adapter/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/member/adapter/d;->e:Lcom/transsion/memberapi/MemberPriceItem;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/member/adapter/e;->B1(Lcom/transsion/member/adapter/e;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/memberapi/SkuPromotionItem;Ljava/lang/String;Lcom/transsion/memberapi/MemberPriceItem;Landroid/view/View;)V

    return-void
.end method
