.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$n;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->L(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field final synthetic e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->k(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->n(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->e(Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method

.method public e(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 3

    sget-object v0, Lvy/d;->a:Lvy/d;

    invoke-virtual {v0}, Lvy/d;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    invoke-virtual {v1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getAuthType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "EMAIL"

    goto :goto_0

    :cond_0
    const-string v1, "PHONE"

    :goto_0
    const-string v2, "login_last_login_type"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$n;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->n(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->p(Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/loginapi/bean/UserInfo;Landroidx/lifecycle/b0;)V

    return-void
.end method
