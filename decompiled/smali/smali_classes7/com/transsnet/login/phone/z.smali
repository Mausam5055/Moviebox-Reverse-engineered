.class public final synthetic Lcom/transsnet/login/phone/z;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginPhoneFragment;

.field public final synthetic b:Lcom/transsnet/login/phone/LoginPhoneViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginPhoneFragment;Lcom/transsnet/login/phone/LoginPhoneViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/z;->a:Lcom/transsnet/login/phone/LoginPhoneFragment;

    iput-object p2, p0, Lcom/transsnet/login/phone/z;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/phone/z;->a:Lcom/transsnet/login/phone/LoginPhoneFragment;

    iget-object v1, p0, Lcom/transsnet/login/phone/z;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    check-cast p1, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    invoke-static {v0, v1, p1}, Lcom/transsnet/login/phone/LoginPhoneFragment;->i0(Lcom/transsnet/login/phone/LoginPhoneFragment;Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
