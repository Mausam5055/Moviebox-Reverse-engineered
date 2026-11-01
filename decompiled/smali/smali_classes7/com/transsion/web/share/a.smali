.class public final synthetic Lcom/transsion/web/share/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/web/share/ImageShareDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/web/share/ImageShareDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/web/share/a;->a:Lcom/transsion/web/share/ImageShareDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/web/share/a;->a:Lcom/transsion/web/share/ImageShareDialog;

    invoke-static {v0, p1}, Lcom/transsion/web/share/ImageShareDialog;->k0(Lcom/transsion/web/share/ImageShareDialog;Landroid/view/View;)V

    return-void
.end method
