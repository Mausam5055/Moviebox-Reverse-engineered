.class public Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.super Landroidx/appcompat/app/w;

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ActivityAction;
.implements Lcom/cloud/tmc/miniapp/action/ResourcesAction;
.implements Lcom/cloud/tmc/miniapp/action/HandlerAction;
.implements Lcom/cloud/tmc/miniapp/action/ClickAction;
.implements Lcom/cloud/tmc/miniapp/action/AnimAction;
.implements Lcom/cloud/tmc/miniapp/action/KeyboardAction;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0O0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0o;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;-><init>(Landroid/content/DialogInterface$OnShowListener;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 3

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/w;->dismiss()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ActivityAction$DefaultImpls;->getActivity(Lcom/cloud/tmc/miniapp/action/ActivityAction;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getColor(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getDrawable(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getResources(Lcom/cloud/tmc/miniapp/action/ResourcesAction;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;->onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;

    if-eqz v2, :cond_0

    invoke-interface {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;->onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/activity/q;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/w;->onStop()V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public removeCallbacks()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0O0;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0O0;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setOnClickListener([I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V

    return-void
.end method

.method public varargs setOnClickListener([Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0o;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0o;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo0;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo0;-><init>(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)V

    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    return-void
.end method
