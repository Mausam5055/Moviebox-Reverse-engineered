.class public final synthetic Lcom/transsnet/login/phone/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginPhoneCodeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginPhoneCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/g;->a:Lcom/transsnet/login/phone/LoginPhoneCodeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/g;->a:Lcom/transsnet/login/phone/LoginPhoneCodeActivity;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneCodeActivity;->e0(Lcom/transsnet/login/phone/LoginPhoneCodeActivity;)V

    return-void
.end method
