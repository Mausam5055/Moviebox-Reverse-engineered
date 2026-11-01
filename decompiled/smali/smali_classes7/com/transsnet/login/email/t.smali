.class public final synthetic Lcom/transsnet/login/email/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/email/LoginEmailPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/t;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/t;->a:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    invoke-static {v0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->h0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    return-void
.end method
