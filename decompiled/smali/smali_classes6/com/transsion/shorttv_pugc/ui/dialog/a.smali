.class public final synthetic Lcom/transsion/shorttv_pugc/ui/dialog/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/a;->a:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/a;->a:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->j0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
