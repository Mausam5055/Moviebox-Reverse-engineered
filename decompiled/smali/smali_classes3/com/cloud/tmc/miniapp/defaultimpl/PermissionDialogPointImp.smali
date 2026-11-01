.class public final Lcom/cloud/tmc/miniapp/defaultimpl/PermissionDialogPointImp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/point/PermissionDialogPoint;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/integration/callback/PrivacyCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinalized()V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 0

    return-void
.end method

.method public privacyDialogDismiss(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/PermissionDialogPointImp;->OooO00o:Lcom/cloud/tmc/integration/callback/PrivacyCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/callback/PrivacyCallback;->privacyDismiss(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/cloud/tmc/integration/callback/PrivacyCallback;)V
    .locals 1

    const-string v0, "privacyCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/PermissionDialogPointImp;->OooO00o:Lcom/cloud/tmc/integration/callback/PrivacyCallback;

    return-void
.end method
