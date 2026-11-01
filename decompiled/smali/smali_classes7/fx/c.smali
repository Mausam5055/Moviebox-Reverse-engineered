.class public final synthetic Lfx/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/transsion/version/update/dialog/UpdateDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/version/update/dialog/UpdateDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfx/c;->a:Lcom/transsion/version/update/dialog/UpdateDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lfx/c;->a:Lcom/transsion/version/update/dialog/UpdateDialog;

    invoke-static {v0, p1}, Lcom/transsion/version/update/dialog/UpdateDialog;->p0(Lcom/transsion/version/update/dialog/UpdateDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
