.class public final synthetic Lwa/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lwa/b;


# direct methods
.method public synthetic constructor <init>(Lwa/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwa/e;->a:Lwa/b;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lwa/e;->a:Lwa/b;

    invoke-interface {v0}, Lwa/b;->handleBackInvoked()V

    return-void
.end method
