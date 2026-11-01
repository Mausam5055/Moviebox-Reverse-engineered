.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/BannerData;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->a:Lcom/transsion/home/bean/BannerData;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    iput p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->a:Lcom/transsion/home/bean/BannerData;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/i;->c:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;->f(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$SubViewPagerViewHolder;ILandroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
