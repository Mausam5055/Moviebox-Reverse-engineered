.class public final synthetic Lcom/transsion/usercenter/laboratory/i0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/laboratory/LabStreamingDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/i0;->a:Lcom/transsion/usercenter/laboratory/LabStreamingDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/i0;->a:Lcom/transsion/usercenter/laboratory/LabStreamingDialog;

    invoke-static {v0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabStreamingDialog;->n0(Lcom/transsion/usercenter/laboratory/LabStreamingDialog;Landroid/widget/RadioGroup;I)V

    return-void
.end method
