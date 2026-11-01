.class Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->getExpandButton()Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;->a:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;->a:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    const-string v0, "doSpand"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->hideToolBarButton(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;->a:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    const-string v0, "doCollapse"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->showToolBarButton(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;->a:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    invoke-static {p1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->b(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V

    return-void
.end method
