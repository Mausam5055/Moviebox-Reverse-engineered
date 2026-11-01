.class public final synthetic Lcom/transsion/shorttv_pugc/ui/adapter/provider/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/h;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/h;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Lcom/transsion/shorttv_pugc/bean/BannerData;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->z(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;ILcom/transsion/shorttv_pugc/bean/BannerData;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
