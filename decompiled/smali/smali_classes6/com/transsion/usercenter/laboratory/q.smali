.class public final synthetic Lcom/transsion/usercenter/laboratory/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfw/w;

.field public final synthetic b:Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;


# direct methods
.method public synthetic constructor <init>(Lfw/w;Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/q;->a:Lfw/w;

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/q;->b:Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/q;->a:Lfw/w;

    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/q;->b:Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;->n0(Lfw/w;Lcom/transsion/usercenter/laboratory/LabHttpHostDialog;Landroid/view/View;)V

    return-void
.end method
