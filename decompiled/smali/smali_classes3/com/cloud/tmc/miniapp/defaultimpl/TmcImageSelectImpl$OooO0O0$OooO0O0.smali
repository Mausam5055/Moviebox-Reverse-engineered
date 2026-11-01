.class public final Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorized(Z)V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    return-void
.end method

.method public onDialogClickCancel()V
    .locals 0

    invoke-static {p0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;->onDialogClickCancel(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V

    return-void
.end method

.method public onSelected(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/TmcImageSelectImpl$OooO0O0$OooO0O0;->OooO00o:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener$DefaultImpls;->onSelected(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method
