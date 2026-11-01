.class public final synthetic Lcom/transsion/member/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/MemberProView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/MemberProView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/y;->a:Lcom/transsion/member/view/MemberProView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/y;->a:Lcom/transsion/member/view/MemberProView;

    check-cast p1, Lcom/transsion/memberapi/MemberPriceItem;

    check-cast p2, Lcom/transsion/memberapi/SkuPromotionItem;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Landroid/view/View;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/transsion/member/view/MemberProView;->a(Lcom/transsion/member/view/MemberProView;Lcom/transsion/memberapi/MemberPriceItem;Lcom/transsion/memberapi/SkuPromotionItem;ZLandroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
