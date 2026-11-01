.class public Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public final TYPE_SPLASH_BTN_CLICK:I

.field public final TYPE_SPLASH_BTN_GO:I

.field public final TYPE_SPLASH_BTN_OPEN:I

.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/Paint;

.field private final r:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "\u6d4f\u89c8\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a:Ljava/lang/String;

    const-string p1, "View"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->b:Ljava/lang/String;

    const-string p1, "\u6253\u5f00\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->c:Ljava/lang/String;

    const-string p1, "Open"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->d:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->e:Ljava/lang/String;

    const-string p1, "Install"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->f:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_arrow_right"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->g:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_circle"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->h:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_finger"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->i:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_go"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->j:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_light"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_OPEN:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_GO:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_CLICK:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "\u6d4f\u89c8\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a:Ljava/lang/String;

    const-string p1, "View"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->b:Ljava/lang/String;

    const-string p1, "\u6253\u5f00\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->c:Ljava/lang/String;

    const-string p1, "Open"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->d:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->e:Ljava/lang/String;

    const-string p1, "Install"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->f:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_arrow_right"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->g:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_circle"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->h:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_finger"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->i:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_go"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->j:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_light"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_OPEN:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_GO:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_CLICK:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "\u6d4f\u89c8\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a:Ljava/lang/String;

    const-string p1, "View"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->b:Ljava/lang/String;

    const-string p1, "\u6253\u5f00\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->c:Ljava/lang/String;

    const-string p1, "Open"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->d:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->e:Ljava/lang/String;

    const-string p1, "Install"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->f:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_arrow_right"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->g:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_circle"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->h:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_finger"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->i:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_go"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->j:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_light"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_OPEN:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_GO:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_CLICK:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "\u6d4f\u89c8\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a:Ljava/lang/String;

    const-string p1, "View"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->b:Ljava/lang/String;

    const-string p1, "\u6253\u5f00\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->c:Ljava/lang/String;

    const-string p1, "Open"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->d:Ljava/lang/String;

    const-string p1, "\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->e:Ljava/lang/String;

    const-string p1, "Install"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->f:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_arrow_right"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->g:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_circle"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->h:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_finger"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->i:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_go"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->j:Ljava/lang/String;

    const-string p1, "mbridge_splash_btn_light"

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->k:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_OPEN:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_GO:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->TYPE_SPLASH_BTN_CLICK:I

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "\u6d4f\u89c8\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1
    const-string v5, "\u6253\u5f00\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_2
    const-string v5, "\u4e0b\u8f7d\u7b2c\u4e09\u65b9\u5e94\u7528"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_0

    :sswitch_3
    const-string v5, "View"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_4
    const-string v5, "Open"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_0

    :sswitch_5
    const-string v5, "Install"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    :goto_1
    move v2, v3

    goto :goto_2

    :pswitch_1
    iput v3, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    goto :goto_1

    :pswitch_2
    iput v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    goto :goto_1

    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x28194285 -> :sswitch_5
        0x259a6a -> :sswitch_4
        0x28aec5 -> :sswitch_3
        0x32fac37e -> :sswitch_2
        0x5270ec23 -> :sswitch_1
        0x64371c57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b()V
    .locals 11

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "zh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    const-string v0, "\u6d4f\u89c8\u7b2c\u4e09\u65b9\u5e94\u7528"

    goto :goto_0

    :cond_0
    const-string v0, "View"

    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->l:Ljava/lang/String;

    :cond_1
    iput v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    :cond_2
    iget v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->setBgDrawable(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    const/16 v5, 0xb

    const-string v6, "drawable"

    if-ne v2, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mbridge_splash_btn_go"

    invoke-virtual {v1, v3, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v3, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x1

    const/high16 v7, 0x42480000    # 50.0f

    if-ne v2, v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v8, "mbridge_splash_btn_light"

    invoke-virtual {v1, v8, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x14

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v10, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mbridge_splash_btn_arrow_right"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x3

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mbridge_splash_btn_finger"

    invoke-virtual {v1, v3, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v3, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v4, v8}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mbridge_splash_btn_circle"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private c()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x190

    invoke-virtual {v10, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, -0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v11, v1

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;

    invoke-direct {v2, v0, v1}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$a;-><init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->o:Landroid/widget/ImageView;

    new-instance v3, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$b;

    invoke-direct {v3, v0, v1}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$b;-><init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;Landroid/view/animation/ScaleAnimation;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private d()V
    .locals 10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private e()V
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/high16 v2, -0x3d380000    # -100.0f

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView$c;-><init>(Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setBgDrawable(I)V
    .locals 5

    const-string v0, "#666666"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "#8FC31F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v3, v4, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :goto_0
    const/16 p1, 0xc8

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->r:Landroid/graphics/Paint;

    const/high16 v3, 0x43480000    # 200.0f

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public initView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->b()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget v0, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->d()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->e()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/mbridge/msdk/splash/view/nativeview/MBSplashClickView;->p:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
