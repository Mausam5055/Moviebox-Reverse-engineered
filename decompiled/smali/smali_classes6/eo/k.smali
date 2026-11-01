.class public final synthetic Leo/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:Leo/m;


# direct methods
.method public synthetic constructor <init>(Leo/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leo/k;->a:Leo/m;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Leo/k;->a:Leo/m;

    invoke-static {v0, p1, p2, p3}, Leo/m;->j(Leo/m;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
