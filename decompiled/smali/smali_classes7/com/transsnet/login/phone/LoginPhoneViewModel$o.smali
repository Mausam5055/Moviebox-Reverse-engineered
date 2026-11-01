.class public final Lcom/transsnet/login/phone/LoginPhoneViewModel$o;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->M(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/LoginPhoneViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->e:Ljava/lang/String;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->k(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->f(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const v0, 0x30d40

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->i(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->e:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$o;->d:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->f(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
