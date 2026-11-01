.class public final synthetic Lcom/transsion/subroom/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/subroom/ui/WarningMessageDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/subroom/ui/WarningMessageDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/ui/a;->a:Lcom/transsion/subroom/ui/WarningMessageDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/ui/a;->a:Lcom/transsion/subroom/ui/WarningMessageDialog;

    invoke-static {v0, p1}, Lcom/transsion/subroom/ui/WarningMessageDialog;->p0(Lcom/transsion/subroom/ui/WarningMessageDialog;Landroid/view/View;)V

    return-void
.end method
