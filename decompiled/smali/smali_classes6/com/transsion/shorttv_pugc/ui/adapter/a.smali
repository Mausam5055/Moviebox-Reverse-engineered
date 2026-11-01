.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/bean/BannerData;

.field public final synthetic b:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/a;->a:Lcom/transsion/shorttv_pugc/bean/BannerData;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/a;->b:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    iput p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/a;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/a;->a:Lcom/transsion/shorttv_pugc/bean/BannerData;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/a;->b:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;

    iget v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/a;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;->g(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter;ILandroid/view/View;)V

    return-void
.end method
