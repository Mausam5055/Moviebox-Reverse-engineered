.class public final synthetic Lcom/transsion/usercenter/laboratory/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfw/x;

.field public final synthetic b:Lcom/transsion/usercenter/laboratory/LabInfoDialog;


# direct methods
.method public synthetic constructor <init>(Lfw/x;Lcom/transsion/usercenter/laboratory/LabInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/t;->a:Lfw/x;

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/t;->b:Lcom/transsion/usercenter/laboratory/LabInfoDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/t;->a:Lfw/x;

    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/t;->b:Lcom/transsion/usercenter/laboratory/LabInfoDialog;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/laboratory/LabInfoDialog;->o0(Lfw/x;Lcom/transsion/usercenter/laboratory/LabInfoDialog;Landroid/view/View;)V

    return-void
.end method
