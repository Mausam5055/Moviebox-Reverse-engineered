.class public final synthetic Lcom/transsnet/login/phone/h1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/fissionapi/IFissionProvider;

.field public final synthetic b:Lcom/transsnet/login/phone/LoginSetPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/fissionapi/IFissionProvider;Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/h1;->a:Lcom/transsion/fissionapi/IFissionProvider;

    iput-object p2, p0, Lcom/transsnet/login/phone/h1;->b:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/phone/h1;->a:Lcom/transsion/fissionapi/IFissionProvider;

    iget-object v1, p0, Lcom/transsnet/login/phone/h1;->b:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    invoke-static {v0, v1, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e0(Lcom/transsion/fissionapi/IFissionProvider;Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V

    return-void
.end method
