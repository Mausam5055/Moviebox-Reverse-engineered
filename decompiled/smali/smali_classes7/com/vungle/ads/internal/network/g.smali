.class public final synthetic Lcom/vungle/ads/internal/network/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/network/h;

.field public final synthetic b:Lcom/vungle/ads/internal/network/f;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/g;->a:Lcom/vungle/ads/internal/network/h;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/g;->b:Lcom/vungle/ads/internal/network/f;

    iput-object p3, p0, Lcom/vungle/ads/internal/network/g;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vungle/ads/internal/network/g;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/network/g;->a:Lcom/vungle/ads/internal/network/h;

    iget-object v1, p0, Lcom/vungle/ads/internal/network/g;->b:Lcom/vungle/ads/internal/network/f;

    iget-object v2, p0, Lcom/vungle/ads/internal/network/g;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/vungle/ads/internal/network/g;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/network/h;->a(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Z)V

    return-void
.end method
