.class public final synthetic Lcom/transsion/usercenter/laboratory/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lfw/y;

.field public final synthetic b:Lcom/transsion/usercenter/laboratory/LabLaneDialog;


# direct methods
.method public synthetic constructor <init>(Lfw/y;Lcom/transsion/usercenter/laboratory/LabLaneDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/v;->a:Lfw/y;

    iput-object p2, p0, Lcom/transsion/usercenter/laboratory/v;->b:Lcom/transsion/usercenter/laboratory/LabLaneDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/v;->a:Lfw/y;

    iget-object v1, p0, Lcom/transsion/usercenter/laboratory/v;->b:Lcom/transsion/usercenter/laboratory/LabLaneDialog;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/laboratory/LabLaneDialog;->n0(Lfw/y;Lcom/transsion/usercenter/laboratory/LabLaneDialog;Landroid/view/View;)V

    return-void
.end method
