.class public final synthetic Lcom/transsion/moviedetail/fragment/h1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/h1;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/h1;->a:Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;->p0(Lcom/transsion/moviedetail/fragment/RestrictTipsDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
