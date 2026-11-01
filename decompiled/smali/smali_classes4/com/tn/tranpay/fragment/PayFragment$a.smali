.class public final Lcom/tn/tranpay/fragment/PayFragment$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/tranpay/fragment/PayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/fragment/PayFragment$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/BillingParams;Lcom/tn/tranpay/bean/LoadConfigContent;Lcom/tn/tranpay/d;)Lcom/tn/tranpay/fragment/PayFragment;
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tn/tranpay/fragment/PayFragment;

    invoke-direct {v0}, Lcom/tn/tranpay/fragment/PayFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "paymentParams"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "configBean"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {v0, p1}, Lcom/tn/tranpay/fragment/PayFragment;->h0(Lcom/tn/tranpay/fragment/PayFragment;Lcom/tn/tranpay/BillingParams;)V

    invoke-static {v0, p2}, Lcom/tn/tranpay/fragment/PayFragment;->f0(Lcom/tn/tranpay/fragment/PayFragment;Lcom/tn/tranpay/bean/LoadConfigContent;)V

    invoke-static {v0, p3}, Lcom/tn/tranpay/fragment/PayFragment;->g0(Lcom/tn/tranpay/fragment/PayFragment;Lcom/tn/tranpay/d;)V

    return-object v0
.end method
