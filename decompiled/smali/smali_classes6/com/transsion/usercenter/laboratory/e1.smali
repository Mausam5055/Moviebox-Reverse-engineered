.class public final synthetic Lcom/transsion/usercenter/laboratory/e1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/laboratory/MccActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/laboratory/MccActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/laboratory/e1;->a:Lcom/transsion/usercenter/laboratory/MccActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/laboratory/e1;->a:Lcom/transsion/usercenter/laboratory/MccActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/usercenter/laboratory/MccActivity;->T(Lcom/transsion/usercenter/laboratory/MccActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
