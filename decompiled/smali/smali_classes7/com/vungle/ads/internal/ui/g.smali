.class public final synthetic Lcom/vungle/ads/internal/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/i;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/i;Landroid/os/Handler;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/g;->a:Lcom/vungle/ads/internal/ui/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/g;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/vungle/ads/internal/ui/g;->c:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/g;->a:Lcom/vungle/ads/internal/ui/i;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/g;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/g;->c:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/ui/i;->c(Lcom/vungle/ads/internal/ui/i;Landroid/os/Handler;Landroid/webkit/WebView;)V

    return-void
.end method
