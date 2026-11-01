.class public final synthetic Lcom/vungle/ads/internal/platform/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/platform/c;

.field public final synthetic b:Landroidx/core/util/a;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/platform/c;Landroidx/core/util/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/platform/a;->a:Lcom/vungle/ads/internal/platform/c;

    iput-object p2, p0, Lcom/vungle/ads/internal/platform/a;->b:Landroidx/core/util/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/platform/a;->a:Lcom/vungle/ads/internal/platform/c;

    iget-object v1, p0, Lcom/vungle/ads/internal/platform/a;->b:Landroidx/core/util/a;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/platform/c;->a(Lcom/vungle/ads/internal/platform/c;Landroidx/core/util/a;)V

    return-void
.end method
