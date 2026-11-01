.class public final synthetic Lcom/transsnet/login/email/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lzy/c;


# direct methods
.method public synthetic constructor <init>(Lzy/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/z;->a:Lzy/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/z;->a:Lzy/c;

    invoke-static {v0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->i0(Lzy/c;Landroid/view/View;)V

    return-void
.end method
