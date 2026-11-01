.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/k;
.super Ljava/lang/Object;

# interfaces
.implements Lst/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tn/lib/view/NoNetworkBigView;

    invoke-direct {v0, p1}, Lcom/tn/lib/view/NoNetworkBigView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
