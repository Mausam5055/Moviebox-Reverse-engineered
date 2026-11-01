.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/bean/BannerData;

.field public final synthetic b:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/l;->a:Lcom/transsion/home/bean/BannerData;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/l;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iput p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/l;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/l;->a:Lcom/transsion/home/bean/BannerData;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/l;->b:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/l;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V

    return-void
.end method
