.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->l(Lcom/hisavana/common/bean/TAdNativeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;->a:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "BannerADDataHelper"

    const-string v2, "onLoadFailed"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;->a:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->h(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;I)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 6

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;->a:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    invoke-static {p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;->g(Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;)Lkotlinx/coroutines/n0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1$onResourceReady$1;

    iget-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;->a:Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, v2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1$onResourceReady$1;-><init>(Landroid/graphics/Bitmap;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerADViewHolder$renderHiADMask$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
