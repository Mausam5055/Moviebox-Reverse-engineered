.class public Lcom/mbridge/msdk/out/LoadingActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/out/LoadingActivity$OnLoadingDialogCallback;
    }
.end annotation


# instance fields
.field private abitmap:Landroid/graphics/Bitmap;

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private cipl:Lcom/mbridge/msdk/foundation/same/image/c;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private icon_url:Ljava/lang/String;

.field private img_icon:Landroid/widget/ImageView;

.field private mCallback:Lcom/mbridge/msdk/out/LoadingActivity$OnLoadingDialogCallback;

.field private rlayout:Landroid/widget/RelativeLayout;

.field private rlayout_main:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/mbridge/msdk/out/LoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/out/LoadingActivity$1;-><init>(Lcom/mbridge/msdk/out/LoadingActivity;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/mbridge/msdk/out/LoadingActivity$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/out/LoadingActivity$2;-><init>(Lcom/mbridge/msdk/out/LoadingActivity;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->cipl:Lcom/mbridge/msdk/foundation/same/image/c;

    return-void
.end method

.method static synthetic access$000(Lcom/mbridge/msdk/out/LoadingActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mbridge/msdk/out/LoadingActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->abitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initView()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p0, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mbridge_native_bg_loading_camera"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {p0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v1

    const/high16 v2, 0x41fc0000    # 31.5f

    invoke-static {p0, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/mbridge/msdk/widget/MBImageView;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/widget/MBImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/t0;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/out/LoadingActivity;->cipl:Lcom/mbridge/msdk/foundation/same/image/c;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {p0, v0}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v1, "Relax while loading...."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->icon_url:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/out/LoadingActivity;->initView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iput-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->img_icon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout_main:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->cipl:Lcom/mbridge/msdk/foundation/same/image/c;

    iput-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iput-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->rlayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/mbridge/msdk/out/LoadingActivity;->abitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->abitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnspecifiedRegisterReceiverFlag"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ExitApp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mbridge/msdk/out/LoadingActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_0

    const/4 v2, 0x4

    invoke-static {p0, v1, v0, v2}, Lcom/mbridge/msdk/out/a;->a(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method
