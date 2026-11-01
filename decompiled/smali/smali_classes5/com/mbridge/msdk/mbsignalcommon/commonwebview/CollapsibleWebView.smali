.class public Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;
.super Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;
    }
.end annotation


# instance fields
.field private v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;

    invoke-interface {v1, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;

    invoke-interface {v1, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;->a(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->b(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->b(Landroid/view/View;Ljava/util/Map;)V

    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;

    invoke-interface {v1, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;->b(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;

    invoke-interface {v1, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;->b(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->e()V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;Landroid/view/View;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->a(Landroid/view/View;Ljava/util/Map;)V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;

    invoke-interface {v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;

    invoke-interface {v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getCollapseButton()Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    const-string v1, "doCollapse"

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->a(Z)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v0

    const-string v1, "mbridge_arrow_down_white_blackbg"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$a;-><init>(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->a(Landroid/view/View$OnClickListener;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v0

    return-object v0
.end method

.method private getExpandButton()Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    const-string v1, "doSpand"

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;-><init>(Ljava/lang/String;)V

    const-string v1, "mbridge_arrow_up_black"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->a(Ljava/lang/String;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$b;-><init>(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;->a(Landroid/view/View$OnClickListener;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCollapseIconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandIconName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->z:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    invoke-super {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->init()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "mbridge_arrow_down_white_blackbg"

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->y:Ljava/lang/String;

    const-string v0, "mbridge_arrow_up_white"

    iput-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->z:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->useDeeplink()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->initWebViewListener()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->useProgressBar()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->getCollapseButton()Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->getExpandButton()Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->useDefaultToolBar()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->useCustomizedToolBar(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public initWebViewListener()V
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$c;-><init>(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->setPageLoadTimtoutListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$i;)V

    sget v0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->DEFAULT_JUMP_TIMEOUT:I

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->setPageLoadTimtout(I)V

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$d;-><init>(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;)V

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->addWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setCollapseIconName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->y:Ljava/lang/String;

    return-void
.end method

.method public setCollapseListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCustomizedToolBarMarginWidthPixel(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->c:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView;->c:Lcom/mbridge/msdk/mbsignalcommon/commonwebview/ToolBar;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setExpandIconName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->z:Ljava/lang/String;

    return-void
.end method

.method public setExpandListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPageLoadListener(Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView$e;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
