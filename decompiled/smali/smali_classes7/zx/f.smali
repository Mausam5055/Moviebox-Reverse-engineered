.class public final synthetic Lzx/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzx/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lzx/f;->b:Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lzx/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lzx/f;->b:Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;

    check-cast p1, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;->a(Landroid/app/Activity;Lcom/transsion/wrapperad/activate/ui/MemberPromotionView;Lcom/transsion/memberapi/SkuPromotionItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
