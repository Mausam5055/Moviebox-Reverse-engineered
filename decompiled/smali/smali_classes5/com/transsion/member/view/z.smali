.class public final synthetic Lcom/transsion/member/view/z;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/member/view/MemberProView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/member/view/MemberProView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/view/z;->a:Lcom/transsion/member/view/MemberProView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/view/z;->a:Lcom/transsion/member/view/MemberProView;

    check-cast p1, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, p1}, Lcom/transsion/member/view/MemberProView;->d(Lcom/transsion/member/view/MemberProView;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
