.class public final synthetic Lxe/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/journeyapps/barcodescanner/d;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxe/f;->a:Lcom/journeyapps/barcodescanner/d;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lxe/f;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/d;->b(Lcom/journeyapps/barcodescanner/d;Landroid/content/DialogInterface;)V

    return-void
.end method
