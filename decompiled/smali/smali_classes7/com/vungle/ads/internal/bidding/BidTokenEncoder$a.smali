.class public final Lcom/vungle/ads/internal/bidding/BidTokenEncoder$a;
.super Lcom/vungle/ads/internal/util/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/bidding/BidTokenEncoder;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/bidding/BidTokenEncoder;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/bidding/BidTokenEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$a;->this$0:Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    invoke-direct {p0}, Lcom/vungle/ads/internal/util/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$a;->this$0:Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->onPause$vungle_ads_release()V

    return-void
.end method

.method public onForeground()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/bidding/BidTokenEncoder$a;->this$0:Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;->onResume$vungle_ads_release()V

    return-void
.end method
