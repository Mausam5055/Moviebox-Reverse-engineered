.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$g;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->E(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Ljava/lang/String;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->f:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    invoke-virtual {p1, p2}, Luh/b$a;->e(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->o(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    sget-object p1, Lvy/f;->a:Lvy/f;

    invoke-virtual {p1}, Lvy/f;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->e:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->o(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$g;->f:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
