.class public final synthetic Lcom/transsnet/login/email/n;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/email/LoginEmailPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/n;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/n;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->r0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
