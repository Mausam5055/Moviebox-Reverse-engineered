.class public final synthetic Lcom/vungle/ads/internal/load/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/g;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/e;->a:Lcom/vungle/ads/internal/load/g;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/e;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/load/e;->a:Lcom/vungle/ads/internal/load/g;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/e;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/load/g$a;->a(Lcom/vungle/ads/internal/load/g;Ljava/lang/Throwable;)V

    return-void
.end method
