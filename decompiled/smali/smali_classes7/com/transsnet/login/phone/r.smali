.class public final synthetic Lcom/transsnet/login/phone/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/phone/LoginPhoneFragment;

.field public final synthetic b:Lzy/j;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/phone/LoginPhoneFragment;Lzy/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/r;->a:Lcom/transsnet/login/phone/LoginPhoneFragment;

    iput-object p2, p0, Lcom/transsnet/login/phone/r;->b:Lzy/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/phone/r;->a:Lcom/transsnet/login/phone/LoginPhoneFragment;

    iget-object v1, p0, Lcom/transsnet/login/phone/r;->b:Lzy/j;

    invoke-static {v0, v1, p1}, Lcom/transsnet/login/phone/LoginPhoneFragment;->b0(Lcom/transsnet/login/phone/LoginPhoneFragment;Lzy/j;Landroid/view/View;)V

    return-void
.end method
