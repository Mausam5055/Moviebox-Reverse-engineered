.class public final synthetic Lcom/vungle/ads/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vungle/ads/internal/util/n;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/e;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iput-object p2, p0, Lcom/vungle/ads/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/e;->c:Lcom/vungle/ads/internal/util/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/e;->a:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    iget-object v1, p0, Lcom/vungle/ads/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/e;->c:Lcom/vungle/ads/internal/util/n;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/AnalyticsClient;->c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method
