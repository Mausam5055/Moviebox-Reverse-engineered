.class final Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;
.super Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniutils/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionActivityImpl"
.end annotation


# static fields
.field private static INSTANCE:Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl; = null

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final TYPE_DRAW_OVERLAYS:I = 0x3

.field private static final TYPE_RUNTIME:I = 0x1

.field private static final TYPE_WRITE_SETTINGS:I = 0x2

.field private static currentRequestCode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;

    invoke-direct {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    return-void
.end method

.method private checkRequestCallback(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->l()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGrantedWriteSettings()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->l()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->l()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onDenied()V

    :goto_0
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->n(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->k()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->k()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->k()Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;->onDenied()V

    :goto_1
    invoke-static {v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->m(Lcom/cloud/tmc/miniutils/util/PermissionUtils$SimpleCallback;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private requestPermissions(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$3;-><init>(Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    invoke-static {v0, p1, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->i(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->b(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public static start(I)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$1;-><init>(I)V

    sget-object p0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;

    invoke-static {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreated(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const v0, 0x40010

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const-string v1, "PermissionUtils"

    if-ne p2, v0, :cond_5

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "sInstance is null."

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->b(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, "mPermissionsRequest is null."

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->b(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    const-string p2, "mPermissionsRequest\'s size is no more than 0."

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->c(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->c(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$ThemeCallback;->onActivityCreate(Landroid/app/Activity;)V

    :cond_3
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->a(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->a(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;

    move-result-object p2

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->b(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl$2;-><init>(Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    invoke-interface {p2, p1, v0, v1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;->explain(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Ljava/util/List;Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener$ShouldRequest;)V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->d(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Lcom/cloud/tmc/miniutils/util/PermissionUtils$OnExplainListener;)V

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    sput v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->p(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    if-ne p2, v0, :cond_7

    sput v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    invoke-static {p1, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->o(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "type is wrong."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDestroy(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V
    .locals 2
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->checkRequestCallback(I)V

    sput v1, Lcom/cloud/tmc/miniutils/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    :cond_0
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;I[Ljava/lang/String;[I)V
    .locals 0
    .param p1    # Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->b(Lcom/cloud/tmc/miniutils/util/PermissionUtils;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->j()Lcom/cloud/tmc/miniutils/util/PermissionUtils;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/cloud/tmc/miniutils/util/PermissionUtils;->g(Lcom/cloud/tmc/miniutils/util/PermissionUtils;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
