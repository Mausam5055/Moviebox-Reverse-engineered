.class public Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;
    }
.end annotation


# static fields
.field private static final CALLBACK_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;",
            ">;"
        }
    .end annotation
.end field

.field protected static final EXTRA_DELEGATE:Ljava/lang/String; = "extra_delegate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-static {p0, p1, p2, v0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method

.method protected static start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "extra_delegate"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/cloud/tmc/miniutils/util/Utils$Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    if-nez p0, :cond_3

    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :goto_1
    const-string p1, "UtilsTransActivity"

    const-string p2, "start: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/cloud/tmc/miniutils/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-static {p0, v0, p1, v1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniutils/util/Utils$Consumer<",
            "Landroid/content/Intent;",
            ">;",
            "Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const-class v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-static {v0, p0, p1, v1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method

.method public static start(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;)V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;

    invoke-static {v0, v0, p0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->start(Landroid/app/Activity;Lcom/cloud/tmc/miniutils/util/Utils$Consumer;Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->dispatchTouchEvent(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onActivityResult(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_delegate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    sget-object v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onCreateBefore(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onCreated(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onPaused(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onRequestPermissionsResult(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onResumed(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onSaveInstanceState(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onStarted(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    sget-object v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;->CALLBACK_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p0}, Lcom/cloud/tmc/miniutils/util/UtilsTransActivity$TransActivityDelegate;->onStopped(Lcom/cloud/tmc/miniutils/util/UtilsTransActivity;)V

    return-void
.end method
