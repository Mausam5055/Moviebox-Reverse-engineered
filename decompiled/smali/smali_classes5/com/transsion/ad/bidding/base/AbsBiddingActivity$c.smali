.class public final Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->P0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

.field final synthetic b:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->c(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V

    return-void
.end method

.method private static final c(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->B0(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    const-string p3, "resource"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "model"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dataSource"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->start()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    invoke-virtual {p2}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->y0()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    iget-object p3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p4, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    new-instance p5, Lcom/transsion/ad/bidding/base/p;

    invoke-direct {p5, p4, p3, p2, p1}, Lcom/transsion/ad/bidding/base/p;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingActivity;Landroidx/appcompat/widget/AppCompatImageView;II)V

    invoke-virtual {p3, p5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 0

    const-string p2, "target"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->a:Lcom/transsion/ad/bidding/base/AbsBiddingActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25 --> "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity;->C0(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lcom/transsion/ad/bidding/base/AbsBiddingActivity$c;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
