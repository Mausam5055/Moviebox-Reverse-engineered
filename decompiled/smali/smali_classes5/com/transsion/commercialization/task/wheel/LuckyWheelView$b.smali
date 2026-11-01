.class public final Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

.field final synthetic b:Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    iput-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;->b:Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-static {p2}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView;->access$getBitmapCache$p(Lcom/transsion/commercialization/task/wheel/LuckyWheelView;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;->b:Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;

    invoke-virtual {v0}, Lcom/transsion/bean/lottery/LotteryUserActivityInfoPriceItemsBean;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;->a:Lcom/transsion/commercialization/task/wheel/LuckyWheelView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/task/wheel/LuckyWheelView$b;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
