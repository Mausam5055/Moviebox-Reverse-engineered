.class public final synthetic Lcom/transsnet/login/phone/g1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lzy/h;


# direct methods
.method public synthetic constructor <init>(Lzy/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/g1;->a:Lzy/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/g1;->a:Lzy/h;

    invoke-static {v0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->f0(Lzy/h;Landroid/view/View;)V

    return-void
.end method
