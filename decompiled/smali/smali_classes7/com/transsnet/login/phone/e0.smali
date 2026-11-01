.class public final synthetic Lcom/transsnet/login/phone/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/e0;->a:Lcom/transsnet/login/phone/LoginPwdActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/e0;->a:Lcom/transsnet/login/phone/LoginPwdActivity;

    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    invoke-static {v0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->k0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/Country;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
