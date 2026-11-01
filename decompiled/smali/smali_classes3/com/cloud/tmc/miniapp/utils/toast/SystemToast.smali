.class public final Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;
.super Landroid/widget/Toast;

# interfaces
.implements Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;

.field private static final TAG:Ljava/lang/String; = "SystemToast"


# instance fields
.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->Companion:Lcom/cloud/tmc/miniapp/utils/toast/SystemToast$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public findIconView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;->findIconView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public findMessageView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/config/IToast$DefaultImpls;->findMessageView(Lcom/cloud/tmc/miniapp/utils/toast/config/IToast;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "SystemToast"

    const-string v1, "super.setText failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->findMessageView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/utils/toast/SystemToast;->mMessageView:Landroid/widget/TextView;

    return-void
.end method
