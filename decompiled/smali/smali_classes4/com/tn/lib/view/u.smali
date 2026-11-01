.class public final synthetic Lcom/tn/lib/view/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lth/e;


# direct methods
.method public synthetic constructor <init>(Lth/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/view/u;->a:Lth/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/u;->a:Lth/e;

    invoke-static {v0}, Lcom/tn/lib/view/NoNetworkSmallView;->h(Lth/e;)V

    return-void
.end method
