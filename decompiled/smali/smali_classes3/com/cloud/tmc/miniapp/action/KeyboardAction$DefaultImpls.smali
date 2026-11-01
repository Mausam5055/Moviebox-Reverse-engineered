.class public final Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/KeyboardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V
    .locals 0

    const-class p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V
    .locals 0

    const-class p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->showKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V
    .locals 0

    const-class p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->toggleSoftInput(Landroid/view/View;)V

    return-void
.end method
