.class public final synthetic Lcom/transsnet/login/phone/z0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginSetPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/z0;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/z0;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->l0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
