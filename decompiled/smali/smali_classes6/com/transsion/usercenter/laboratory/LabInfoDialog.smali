.class public final Lcom/transsion/usercenter/laboratory/LabInfoDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/transsion/usercenter/laboratory/LabInfoDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "keyColor",
        "valueColor",
        "Lph/c;",
        "p0",
        "(II)Lph/c;",
        "",
        "q0",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "UserCenter_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/transsion/usercenter/R$layout;->dialog_lab_info:I

    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->r0(Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lfw/x;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->s0(Lfw/x;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V

    return-void
.end method

.method private final p0(II)Lph/c;
    .locals 6

    invoke-static {}, Lph/c;->e()Lph/c$a;

    move-result-object v0

    const-string v1, "user_id = "

    invoke-virtual {v0, v1}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v2, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsnet/loginapi/ILoginApi;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/transsnet/loginapi/ILoginApi;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "device_id = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    sget-object v2, Lih/b;->a:Lih/b;

    invoke-virtual {v2}, Lih/b;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "version_name = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/c;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "version_code = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "os_version = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-virtual {v2}, Lih/b;->n()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "model = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-virtual {v2}, Lih/b;->l()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "install_ch = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    sget-object v3, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v3}, Lbh/a$a;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "gaid = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-virtual {v2}, Lih/b;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "net = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    sget-object v2, Lnh/m;->a:Lnh/m;

    invoke-virtual {v2}, Lnh/m;->d()Lcom/tn/lib/util/networkinfo/NetworkType;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "region = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "timezone = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "sp_code = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->q0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "channel = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    sget-object v2, Lyg/b;->a:Lyg/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    const-string v4, "getApp(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "package = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v2, "SignatureMD5 = "

    invoke-virtual {v0, v2}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    sget-object v2, Lak/d;->a:Lak/d;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lak/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "SignatureSha1 = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lak/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object v0

    const-string v3, "SignatureSHA256 = "

    invoke-virtual {v0, v3}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lak/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lph/c$a;->e(Ljava/lang/CharSequence;)Lph/c$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lph/c$a;->c(I)Lph/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lph/c$a;->b()Lph/c;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final q0()Ljava/lang/String;
    .locals 3

    sget-object v0, Lbh/a;->a:Lbh/a$a;

    invoke-virtual {v0}, Lbh/a$a;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    const-string v2, "sp_code"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lih/b;->a:Lih/b;

    invoke-virtual {v0}, Lih/b;->o()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private static final r0(Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final s0(Lfw/x;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lfw/x;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/g;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "copy success"

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/usercenter/R$style;->BaseDialogStyle:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lfw/x;->a(Landroid/view/View;)Lfw/x;

    move-result-object p2

    const-string v0, "bind(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Lfw/x;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->main:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->text_02:I

    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->p0(II)Lph/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p2, Lfw/x;->b:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/transsion/usercenter/laboratory/s;

    invoke-direct {v0, p0}, Lcom/transsion/usercenter/laboratory/s;-><init>(Lcom/transsion/usercenter/laboratory/LabInfoDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p2, Lfw/x;->c:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v0, Lcom/transsion/usercenter/laboratory/t;

    invoke-direct {v0, p2, p0}, Lcom/transsion/usercenter/laboratory/t;-><init>(Lfw/x;Lcom/transsion/usercenter/laboratory/LabInfoDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
