.class public final synthetic Lcom/transsion/usercenter/laboratory/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfw/a0;

.field public final synthetic b:Lcom/transsion/usercenter/laboratory/LabPwdDialog;


# direct methods
.method public synthetic constructor <init>(Lfw/a0;Lcom/transsion/usercenter/laboratory/LabPwdDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/f0;->a:Lfw/a0;

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/f0;->b:Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/f0;->a:Lfw/a0;

    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/f0;->b:Lcom/transsion/usercenter/laboratory/LabPwdDialog;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/laboratory/LabPwdDialog;->n0(Lfw/a0;Lcom/transsion/usercenter/laboratory/LabPwdDialog;Landroid/view/View;)V

    return-void
.end method
