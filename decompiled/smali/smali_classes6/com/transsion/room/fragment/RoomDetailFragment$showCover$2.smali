.class public final Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragment;->Z0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/room/fragment/RoomDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/room/fragment/RoomDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 6

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "RoomDetailFragment"

    const-string v2, "success"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    invoke-static {p2}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1;

    iget-object p2, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2;->a:Lcom/transsion/room/fragment/RoomDetailFragment;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, v2}, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1;-><init>(Landroid/graphics/Bitmap;Lcom/transsion/room/fragment/RoomDetailFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
