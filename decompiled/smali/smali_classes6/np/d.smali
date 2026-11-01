.class public final synthetic Lnp/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lnp/j;


# direct methods
.method public synthetic constructor <init>(Lnp/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/d;->a:Lnp/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnp/d;->a:Lnp/j;

    invoke-static {v0, p1}, Lnp/j;->b(Lnp/j;Landroid/view/View;)V

    return-void
.end method
