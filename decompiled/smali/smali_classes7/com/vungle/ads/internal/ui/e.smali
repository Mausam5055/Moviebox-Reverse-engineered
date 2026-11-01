.class public final synthetic Lcom/vungle/ads/internal/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/i;

.field public final synthetic b:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/i;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/e;->a:Lcom/vungle/ads/internal/ui/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/e;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/e;->a:Lcom/vungle/ads/internal/ui/i;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/e;->b:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ui/i;->a(Lcom/vungle/ads/internal/ui/i;Landroid/webkit/WebView;)V

    return-void
.end method
