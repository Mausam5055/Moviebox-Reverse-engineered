.class Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView$c;->a:Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-virtual {p1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->close()V

    return-void
.end method
