.class public final synthetic Lcom/vungle/ads/internal/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lkotlin/Lazy;


# direct methods
.method public synthetic constructor <init>(Lkotlin/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/j;->a:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/j;->a:Lkotlin/Lazy;

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInternal;->b(Lkotlin/Lazy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
