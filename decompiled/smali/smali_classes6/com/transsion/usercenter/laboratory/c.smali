.class public final synthetic Lcom/transsion/usercenter/laboratory/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/laboratory/LabChannelDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/laboratory/LabChannelDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/c;->a:Lcom/transsion/usercenter/laboratory/LabChannelDialog;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/c;->a:Lcom/transsion/usercenter/laboratory/LabChannelDialog;

    invoke-static {v0, p1, p2}, Lcom/transsion/usercenter/laboratory/LabChannelDialog;->o0(Lcom/transsion/usercenter/laboratory/LabChannelDialog;Landroid/widget/RadioGroup;I)V

    return-void
.end method
