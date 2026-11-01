.class public final synthetic Lcom/transsnet/login/phone/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lzy/j;

.field public final synthetic b:Lcom/transsnet/login/phone/LoginPhoneFragment;


# direct methods
.method public synthetic constructor <init>(Lzy/j;Lcom/transsnet/login/phone/LoginPhoneFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/phone/u;->a:Lzy/j;

    iput-object p2, p0, Lcom/transsnet/login/phone/u;->b:Lcom/transsnet/login/phone/LoginPhoneFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/login/phone/u;->a:Lzy/j;

    iget-object v1, p0, Lcom/transsnet/login/phone/u;->b:Lcom/transsnet/login/phone/LoginPhoneFragment;

    invoke-static {v0, v1, p1}, Lcom/transsnet/login/phone/LoginPhoneFragment;->g0(Lzy/j;Lcom/transsnet/login/phone/LoginPhoneFragment;Landroid/view/View;)V

    return-void
.end method
