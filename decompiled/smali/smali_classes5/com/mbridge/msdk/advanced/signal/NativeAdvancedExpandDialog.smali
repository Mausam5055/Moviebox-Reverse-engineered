.class public Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;
.super Landroid/app/Dialog;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/widget/FrameLayout;

.field private e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/mbridge/msdk/advanced/middle/a;

.field private j:Lcom/mbridge/msdk/mbsignalcommon/mraid/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/mbridge/msdk/advanced/middle/a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const-string p1, "NativeAdvancedExpandDialog"

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a:Ljava/lang/String;

    new-instance p1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$e;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$e;-><init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->j:Lcom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p2, :cond_0

    const-string p1, "url"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->b:Ljava/lang/String;

    const-string p1, "shouldUseCustomClose"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c:Z

    :cond_0
    iput-object p3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->i:Lcom/mbridge/msdk/advanced/middle/a;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;Lcom/mbridge/msdk/advanced/middle/a;)Lcom/mbridge/msdk/advanced/middle/a;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->i:Lcom/mbridge/msdk/advanced/middle/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1207

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c()V

    return-void
.end method

.method private b()V
    .locals 7

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x60

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v3, 0x800035

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v3, 0x1e

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->f:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->c:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->f:Landroid/widget/TextView;

    new-instance v4, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$a;

    invoke-direct {v4, p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$a;-><init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a()V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    new-instance v4, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$b;

    invoke-direct {v4, p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$b;-><init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lcom/mbridge/msdk/mbsignalcommon/windvane/c;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v4, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->j:Lcom/mbridge/msdk/mbsignalcommon/mraid/b;

    invoke-virtual {v3, v4}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    iget-object v4, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->h:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->h:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getPrivacyButtonTemplateVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/mbridge/msdk/widget/MBAdChoice;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v4, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x55

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    new-instance v0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$c;-><init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V

    invoke-virtual {v3, v0}, Lcom/mbridge/msdk/widget/MBAdChoice;->setFeedbackDialogEventListener(Lcom/mbridge/msdk/foundation/feedback/a;)V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->g:Ljava/lang/String;

    const/16 v3, 0x128

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;I)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;Landroid/util/DisplayMetrics;)Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    new-instance v0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog$d;-><init>(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->a()V

    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/advanced/middle/a;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->i:Lcom/mbridge/msdk/advanced/middle/a;

    return-object p0
.end method

.method private c()V
    .locals 22

    move-object/from16 v1, p0

    const-string v0, "true"

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

    const/4 v6, 0x1

    if-ne v2, v5, :cond_0

    const-string v2, "landscape"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    if-ne v2, v6, :cond_1

    const-string v2, "portrait"

    goto :goto_0

    :cond_1
    const-string v2, "undefined"

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locked"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/k0;->v(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "width"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v9, "height"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "placementType"

    const-string v11, "inline"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "state"

    const-string v11, "expanded"

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "viewable"

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "currentAppOrientation"

    invoke-virtual {v9, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [I

    iget-object v3, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v10

    iget-object v11, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const/4 v3, 0x0

    aget v5, v0, v3

    int-to-float v12, v5

    aget v5, v0, v6

    int-to-float v13, v5

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v14, v5

    iget-object v5, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v15, v5

    invoke-virtual/range {v10 .. v15}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v16

    iget-object v5, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    aget v3, v0, v3

    int-to-float v3, v3

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v10, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v17, v5

    move/from16 v18, v3

    move/from16 v19, v0

    move/from16 v20, v6

    move/from16 v21, v10

    invoke-virtual/range {v16 .. v21}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v3, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v3, v2, v4}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v2, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    int-to-float v3, v8

    int-to-float v4, v7

    invoke-virtual {v0, v2, v3, v4}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FF)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v2, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v2, v9}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    iget-object v2, v1, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "NativeAdvancedExpandDialog"

    const-string v3, "notifyMraid"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method static synthetic d(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->e:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->d:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->f:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->b()V

    return-void
.end method

.method public setCampaignList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/mbridge/msdk/advanced/signal/NativeAdvancedExpandDialog;->h:Ljava/util/List;

    return-void
.end method
