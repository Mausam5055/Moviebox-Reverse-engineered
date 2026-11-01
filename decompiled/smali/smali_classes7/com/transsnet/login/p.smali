.class public final synthetic Lcom/transsnet/login/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/r;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/p;->a:Lcom/transsnet/login/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/p;->a:Lcom/transsnet/login/r;

    invoke-static {v0}, Lcom/transsnet/login/r;->q(Lcom/transsnet/login/r;)V

    return-void
.end method
