.class public final synthetic Law/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/transsion/upgradesdk/page/f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/upgradesdk/page/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Law/a;->a:Lcom/transsion/upgradesdk/page/f;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Law/a;->a:Lcom/transsion/upgradesdk/page/f;

    invoke-static {v0, p1, p2, p3}, Lcom/transsion/upgradesdk/page/f;->b0(Lcom/transsion/upgradesdk/page/f;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
