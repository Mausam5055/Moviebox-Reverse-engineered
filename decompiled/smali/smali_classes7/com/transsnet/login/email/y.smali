.class public final synthetic Lcom/transsnet/login/email/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lzy/c;

.field public final synthetic b:Lcom/transsnet/login/email/LoginEmailPwdActivity;


# direct methods
.method public synthetic constructor <init>(Lzy/c;Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/y;->a:Lzy/c;

    iput-object p2, p0, Lcom/transsnet/login/email/y;->b:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/email/y;->a:Lzy/c;

    iget-object v1, p0, Lcom/transsnet/login/email/y;->b:Lcom/transsnet/login/email/LoginEmailPwdActivity;

    invoke-static {v0, v1, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->o0(Lzy/c;Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    return-void
.end method
