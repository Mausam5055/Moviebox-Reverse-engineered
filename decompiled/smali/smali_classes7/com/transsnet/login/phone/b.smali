.class public final synthetic Lcom/transsnet/login/phone/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginPhoneCodeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginPhoneCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/b;->a:Lcom/transsnet/login/phone/LoginPhoneCodeActivity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/b;->a:Lcom/transsnet/login/phone/LoginPhoneCodeActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {v0, p1}, Lcom/transsnet/login/phone/LoginPhoneCodeActivity;->l0(Lcom/transsnet/login/phone/LoginPhoneCodeActivity;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
