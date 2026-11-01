.class public final synthetic Lcom/transsion/home/adapter/suboperate/adapter/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

.field public final synthetic b:Lcom/transsion/home/bean/BannerData;

.field public final synthetic c:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->a:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->b:Lcom/transsion/home/bean/BannerData;

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->c:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->d:Landroid/content/Context;

    iput p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->a:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->b:Lcom/transsion/home/bean/BannerData;

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->c:Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->d:Landroid/content/Context;

    iget v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/m;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->h(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method
