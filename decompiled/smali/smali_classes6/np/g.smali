.class public final synthetic Lnp/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lnp/j;


# direct methods
.method public synthetic constructor <init>(Lnp/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/g;->a:Lnp/j;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lnp/g;->a:Lnp/j;

    invoke-static {v0, p1, p2}, Lnp/j;->a(Lnp/j;Landroid/view/View;Z)V

    return-void
.end method
