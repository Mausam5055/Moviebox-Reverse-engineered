.class public final synthetic Lcom/vungle/ads/internal/load/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/j;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/j;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/j;->c:Lcom/vungle/ads/internal/model/AdPayload;

    iput-object p4, p0, Lcom/vungle/ads/internal/load/j;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/load/j;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/j;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/j;->c:Lcom/vungle/ads/internal/model/AdPayload;

    iget-object v3, p0, Lcom/vungle/ads/internal/load/j;->d:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/load/i$b;->b(Ljava/io/File;Ljava/io/File;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    return-void
.end method
