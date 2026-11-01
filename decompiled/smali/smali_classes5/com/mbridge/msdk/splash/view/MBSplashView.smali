.class public Lcom/mbridge/msdk/splash/view/MBSplashView;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static r:Ljava/lang/String; = "MBSplashView"


# instance fields
.field private a:I

.field private b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

.field private c:Lcom/mbridge/msdk/splash/view/a;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Landroid/view/ViewGroup;

.field private l:Landroid/view/View;

.field private m:Z

.field private n:Z

.field private o:Landroid/widget/RelativeLayout$LayoutParams;

.field private p:Lcom/mbridge/msdk/splash/signal/b;

.field private q:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/splash/view/MBSplashView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->a:I

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    const/16 v1, 0xb

    const/4 v2, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    const v3, 0x7ffffc17

    invoke-virtual {v0, v3}, Landroid/view/View;->setId(I)V

    :cond_4
    iget v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->a:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->g(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    :cond_5
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    iget v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    div-int/lit8 v3, v3, 0x4

    if-le v0, v3, :cond_8

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    invoke-virtual {v0, v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    move v0, v3

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    invoke-virtual {v3, v4, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t0;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-boolean v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    :cond_a
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_b
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V

    :goto_2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->o:Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->g:I

    div-int/lit8 v3, v3, 0x4

    if-le v0, v3, :cond_d

    move v0, v3

    :cond_d
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    invoke-virtual {v3, v4, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_10
    :goto_4
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    new-instance v1, Lcom/mbridge/msdk/splash/view/MBSplashView$a;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/splash/view/MBSplashView$a;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static transInfoForMraid(Landroid/webkit/WebView;IIII)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "true"

    sget-object v2, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    const-string v7, "transInfoForMraid"

    invoke-static {v2, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "orientation"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    const-string v2, "landscape"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const-string v2, "portrait"

    goto :goto_0

    :cond_1
    const-string v2, "undefined"

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locked"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    move-result v2

    int-to-float v8, v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    move-result v2

    int-to-float v9, v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->v(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    const-string v4, "width"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v4, "height"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v2, "placementType"

    const-string v4, "Interstitial"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "state"

    const-string v4, "default"

    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "viewable"

    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currentAppOrientation"

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    move/from16 v2, p1

    int-to-float v13, v2

    move/from16 v2, p2

    int-to-float v14, v2

    move/from16 v2, p3

    int-to-float v15, v2

    move/from16 v2, p4

    int-to-float v6, v2

    move-object/from16 v2, p0

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v16, v6

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    move-object/from16 v2, p0

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v9}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    int-to-float v2, v10

    int-to-float v3, v11

    invoke-virtual {v1, v0, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    invoke-static {v1, v7, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public changeCloseBtnState(I)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearResState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->j:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {v0}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;->finishAdSession()V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    const-string v1, "onSystemDestory"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/splash/signal/c;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    :cond_1
    return-void
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    return-object v0
.end method

.method public getDevContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getIconVg()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    return-object v0
.end method

.method public getSplashSignalCommunicationImpl()Lcom/mbridge/msdk/splash/signal/b;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    return-object v0
.end method

.method public getSplashWebview()Lcom/mbridge/msdk/splash/view/MBSplashWebview;
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    return-object v0
.end method

.method public isAttach()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->n:Z

    return v0
.end method

.method public isDynamicView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    return v0
.end method

.method public isH5Ready()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    return v0
.end method

.method public isImageReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->j:Z

    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->n:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->b()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setIsPause(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setIsPause(Z)V

    :cond_0
    return-void
.end method

.method public resetLoadState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    iput-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    return-void
.end method

.method public setAllowClickSplash(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/mbridge/msdk/splash/view/MBSplashView$b;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView$b;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;Z)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/splash/view/MBSplashView$c;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/splash/view/MBSplashView$c;-><init>(Lcom/mbridge/msdk/splash/view/MBSplashView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->e:Landroid/view/View;

    if-eqz p1, :cond_0

    const-string v0, "closeButton"

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDevContainer(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    return-void
.end method

.method public setDyCountDownListener(Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->q:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;

    return-void
.end method

.method public setDynamicView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    return-void
.end method

.method public setH5Ready(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->h:Z

    return-void
.end method

.method public setIconVg(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->f:Landroid/view/View;

    iput-object p2, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->o:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public setImageReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->j:Z

    return-void
.end method

.method public setNotchPadding(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->setNotchPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_1

    const/16 v0, -0x3e7

    invoke-static {v0, p1, p2, p3, p4}, Lcom/mbridge/msdk/foundation/tools/b0;->a(IIIII)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object p2

    iget-object p3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p4, 0x0

    invoke-static {p1, p4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p4, "oncutoutfetched"

    invoke-virtual {p2, p3, p4, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setSplashNativeView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setSplashSignalCommunicationImpl(Lcom/mbridge/msdk/splash/signal/b;)V
    .locals 1

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSplashWebView()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/splash/view/MBSplashWebview;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->c:Lcom/mbridge/msdk/splash/view/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_2

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/splash/view/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/splash/view/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->c:Lcom/mbridge/msdk/splash/view/a;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lcom/mbridge/msdk/splash/view/MBSplashView;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setVideoReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->i:Z

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/signal/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->c:Lcom/mbridge/msdk/splash/view/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->p:Lcom/mbridge/msdk/splash/signal/b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/splash/signal/a;->a()Lcom/mbridge/msdk/splash/middle/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/splash/view/a;->a(Lcom/mbridge/msdk/splash/middle/a;)V

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->c()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/splash/view/MBSplashView;->clearResState()V

    return-void
.end method

.method public updateCountdown(I)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "countdown"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->b:Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    const-string v3, "updateCountdown"

    invoke-virtual {v1, v2, v3, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->l:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mbridge/msdk/splash/view/MBSplashNativeView;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->updateCountDown(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/MBSplashView;->q:Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/dycreator/listener/DyCountDownListener;->getCountDownValue(I)V

    :cond_2
    return-void
.end method
