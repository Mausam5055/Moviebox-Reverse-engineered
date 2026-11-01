.class public final Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/b;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1;->a:Lkotlinx/coroutines/flow/b;

    new-instance v1, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1$2;

    invoke-direct {v1, p1}, Lcom/transsion/room/fragment/RoomDetailFragment$showCover$2$onResourceReady$1$invokeSuspend$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/c;)V

    invoke-interface {v0, v1, p2}, Lkotlinx/coroutines/flow/b;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
