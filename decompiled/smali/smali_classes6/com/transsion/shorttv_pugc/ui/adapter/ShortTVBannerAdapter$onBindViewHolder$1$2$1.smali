.class final Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/c;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n \u0002*\u0004\u0018\u00010\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/c;",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/c;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv_pugc.ui.adapter.ShortTVBannerAdapter$onBindViewHolder$1$2$1"
    f = "ShortTVBannerAdapter.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $holder:Lcom/transsion/shorttv_pugc/ui/adapter/b;

.field final synthetic $item:Lcom/transsion/shorttv_pugc/bean/BannerData;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/b;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv_pugc/bean/BannerData;",
            "Lcom/transsion/shorttv_pugc/ui/adapter/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->$item:Lcom/transsion/shorttv_pugc/bean/BannerData;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->$holder:Lcom/transsion/shorttv_pugc/ui/adapter/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->$item:Lcom/transsion/shorttv_pugc/bean/BannerData;

    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->$holder:Lcom/transsion/shorttv_pugc/ui/adapter/b;

    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;-><init>(Lcom/transsion/shorttv_pugc/bean/BannerData;Lcom/transsion/shorttv_pugc/ui/adapter/b;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/c;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/c;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/c;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->$item:Lcom/transsion/shorttv_pugc/bean/BannerData;

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/BannerData;->getImage()Lcom/transsion/shorttv_pugc/bean/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->$holder:Lcom/transsion/shorttv_pugc/ui/adapter/b;

    invoke-virtual {v3}, Lcom/transsion/shorttv_pugc/ui/adapter/b;->f()Lms/e0;

    move-result-object v3

    iget-object v3, v3, Lms/e0;->b:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVBannerAdapter$onBindViewHolder$1$2$1;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/c;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
