.class public final synthetic Lnp/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnp/j;


# direct methods
.method public synthetic constructor <init>(Lnp/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp/i;->a:Lnp/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnp/i;->a:Lnp/j;

    invoke-static {v0}, Lnp/j;->f(Lnp/j;)V

    return-void
.end method
