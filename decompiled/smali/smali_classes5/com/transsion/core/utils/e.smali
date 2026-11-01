.class public Lcom/transsion/core/utils/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)I
    .locals 1

    invoke-static {}, Lcom/transsion/core/utils/e;->b()F

    move-result v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static b()F
    .locals 1

    invoke-static {}, Lcom/transsion/core/utils/e;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static c()F
    .locals 1

    invoke-static {}, Lcom/transsion/core/utils/e;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    return v0
.end method

.method private static d()Landroid/util/DisplayMetrics;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v4, "window"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    :try_start_0
    const-string v5, "android.view.Display"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getRealMetrics"

    new-array v7, v1, [Ljava/lang/Class;

    const-class v8, Landroid/util/DisplayMetrics;

    aput-object v8, v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {v5, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method

.method public static e()I
    .locals 1

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/transsion/core/utils/e;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static f()I
    .locals 1

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {}, Lcom/transsion/core/utils/e;->d()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static g(F)I
    .locals 1

    invoke-static {}, Lcom/transsion/core/utils/e;->c()F

    move-result v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
