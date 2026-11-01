.class public abstract Lcom/mbridge/msdk/activity/MBBaseActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/view/Display;

.field private b:Landroid/view/OrientationEventListener;

.field private c:I

.field private volatile d:Z

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->d:Z

    return-void
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->a:Landroid/view/Display;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/mbridge/msdk/activity/a;->a(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->a:Landroid/view/Display;

    goto :goto_0

    :cond_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->a:Landroid/view/Display;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->a:Landroid/view/Display;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/activity/MBBaseActivity;I)I
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->c:I

    return p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/activity/MBBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/activity/MBBaseActivity;)Landroid/view/Display;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->a:Landroid/view/Display;

    return-object p0
.end method

.method private b()V
    .locals 12

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->d:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_b

    invoke-static {v1}, Landroidx/core/view/z1;->a(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Landroidx/window/layout/i;->a(Landroid/view/DisplayCutout;)I

    move-result v1

    invoke-static {v0}, Landroidx/window/layout/g;->a(Landroid/view/DisplayCutout;)I

    move-result v4

    invoke-static {v0}, Landroidx/window/layout/j;->a(Landroid/view/DisplayCutout;)I

    move-result v5

    invoke-static {v0}, Landroidx/window/layout/h;->a(Landroid/view/DisplayCutout;)I

    move-result v0

    iget-object v6, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->a:Landroid/view/Display;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a()I

    move-result v6

    :goto_0
    iget v7, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->c:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    if-ne v7, v2, :cond_6

    if-nez v6, :cond_2

    move v7, v10

    goto :goto_1

    :cond_2
    if-ne v6, v9, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    if-ne v6, v8, :cond_4

    const/4 v7, 0x4

    goto :goto_1

    :cond_4
    if-ne v6, v10, :cond_5

    move v7, v8

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    iput v7, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->c:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->c:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "MBBaseActivity"

    invoke-static {v11, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v6, :cond_a

    if-eq v6, v9, :cond_9

    if-eq v6, v8, :cond_8

    if-eq v6, v10, :cond_7

    :goto_2
    move v11, v0

    move v8, v1

    move v7, v2

    :goto_3
    move v9, v4

    move v10, v5

    goto :goto_4

    :cond_7
    const/16 v2, 0x10e

    goto :goto_2

    :cond_8
    const/16 v2, 0xb4

    goto :goto_2

    :cond_9
    const/16 v2, 0x5a

    goto :goto_2

    :cond_a
    move v11, v0

    move v8, v1

    move v7, v3

    goto :goto_3

    :cond_b
    move v7, v2

    move v8, v3

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_4
    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/mbridge/msdk/activity/MBBaseActivity;->setTopControllerPadding(IIIII)V

    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->d()V

    :cond_c
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/activity/MBBaseActivity;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->c:I

    return p0
.end method

.method private c()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBBaseActivity"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/activity/MBBaseActivity$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lcom/mbridge/msdk/activity/MBBaseActivity$b;-><init>(Lcom/mbridge/msdk/activity/MBBaseActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    :goto_0
    return-void
.end method


# virtual methods
.method public getNotchParams()V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/mbridge/msdk/activity/MBBaseActivity$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/activity/MBBaseActivity$a;-><init>(Lcom/mbridge/msdk/activity/MBBaseActivity;)V

    iput-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->d:Z

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x200

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c()V

    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->a()I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/c1;->a(Landroid/view/Window;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MBBaseActivity"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->d:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->b:Landroid/view/OrientationEventListener;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/activity/MBBaseActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBBaseActivity"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-boolean v0, Lcom/mbridge/msdk/foundation/feedback/b;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/mbridge/msdk/activity/MBBaseActivity;->c()V

    return-void
.end method

.method public abstract setTopControllerPadding(IIIII)V
.end method
