.class public final synthetic Lcom/vungle/ads/internal/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/Lazy;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/i;Lkotlin/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vungle/ads/internal/k;->a:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vungle/ads/internal/k;->a:Lkotlin/Lazy;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/VungleInternal;->a(Lcom/vungle/ads/i;Lkotlin/Lazy;)V

    return-void
.end method
