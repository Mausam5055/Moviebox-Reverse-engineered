.class public final Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lxe/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;->a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    const-string v0, "resultPoints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lxe/c;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lxe/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;->a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfw/m;

    iget-object v0, v0, Lfw/m;->e:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    invoke-virtual {p1}, Lxe/c;->e()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity$b;->a:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;->J0(Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
