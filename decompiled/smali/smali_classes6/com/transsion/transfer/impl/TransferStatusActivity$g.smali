.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->d(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V

    return-void
.end method

.method private static final d(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/TransferStatusActivity;->l:Lcom/transsion/transfer/impl/TransferStatusActivity$a;

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/TransferStatusActivity$a;->a()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->y0(Lcom/transsion/transfer/impl/TransferStatusActivity;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clientDeviceName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-virtual {p1}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgv/b;

    invoke-virtual {p1}, Lgv/b;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$g;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    new-instance v1, Lcom/transsion/transfer/impl/t0;

    invoke-direct {v1, v0, p2}, Lcom/transsion/transfer/impl/t0;-><init>(Lcom/transsion/transfer/impl/TransferStatusActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
