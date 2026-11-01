.class public final Lcom/transsion/transfer/impl/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/k;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/k;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/k;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientDeviceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->c(Lcom/transsion/transfer/impl/k;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->g(Lcom/transsion/transfer/impl/k;)Lcom/transsion/transfer/impl/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/transfer/impl/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/k$b;->a:Lcom/transsion/transfer/impl/k;

    invoke-static {v0}, Lcom/transsion/transfer/impl/k;->f(Lcom/transsion/transfer/impl/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
