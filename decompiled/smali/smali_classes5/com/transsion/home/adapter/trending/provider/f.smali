.class public final synthetic Lcom/transsion/home/adapter/trending/provider/f;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/trending/provider/h;

.field public final synthetic b:Lcom/transsion/home/bean/OperateItem;

.field public final synthetic c:Lcom/tn/lib/view/MemberGuideBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/trending/provider/h;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/MemberGuideBannerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/f;->a:Lcom/transsion/home/adapter/trending/provider/h;

    iput-object p2, p0, Lcom/transsion/home/adapter/trending/provider/f;->b:Lcom/transsion/home/bean/OperateItem;

    iput-object p3, p0, Lcom/transsion/home/adapter/trending/provider/f;->c:Lcom/tn/lib/view/MemberGuideBannerView;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/f;->a:Lcom/transsion/home/adapter/trending/provider/h;

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/f;->b:Lcom/transsion/home/bean/OperateItem;

    iget-object v2, p0, Lcom/transsion/home/adapter/trending/provider/f;->c:Lcom/tn/lib/view/MemberGuideBannerView;

    invoke-static {v0, v1, v2}, Lcom/transsion/home/adapter/trending/provider/h;->y(Lcom/transsion/home/adapter/trending/provider/h;Lcom/transsion/home/bean/OperateItem;Lcom/tn/lib/view/MemberGuideBannerView;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
