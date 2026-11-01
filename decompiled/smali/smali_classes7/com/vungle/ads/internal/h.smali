.class public final synthetic Lcom/vungle/ads/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vungle/ads/internal/VungleInitializer;

.field public final synthetic d:Lkotlin/Lazy;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lkotlin/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/h;->c:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p4, p0, Lcom/vungle/ads/internal/h;->d:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/h;->c:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v3, p0, Lcom/vungle/ads/internal/h;->d:Lkotlin/Lazy;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/VungleInitializer;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lkotlin/Lazy;)V

    return-void
.end method
