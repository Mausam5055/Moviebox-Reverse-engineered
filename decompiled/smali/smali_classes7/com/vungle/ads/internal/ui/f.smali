.class public final synthetic Lcom/vungle/ads/internal/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/ui/i;

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/ui/i;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ui/f;->a:Lcom/vungle/ads/internal/ui/i;

    iput-object p2, p0, Lcom/vungle/ads/internal/ui/f;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/vungle/ads/internal/ui/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/ui/f;->a:Lcom/vungle/ads/internal/ui/i;

    iget-object v1, p0, Lcom/vungle/ads/internal/ui/f;->b:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/vungle/ads/internal/ui/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/ui/i;->d(Lcom/vungle/ads/internal/ui/i;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
