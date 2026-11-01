.class public final synthetic Lcom/transsion/member/view/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/MemberBasicView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/MemberBasicView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/l;->a:Lcom/transsion/member/view/MemberBasicView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/l;->a:Lcom/transsion/member/view/MemberBasicView;

    check-cast p1, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, p1}, Lcom/transsion/member/view/MemberBasicView;->b(Lcom/transsion/member/view/MemberBasicView;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
