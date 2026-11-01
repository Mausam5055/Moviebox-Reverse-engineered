.class public final Lcom/transsion/shorttv/order/PayTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/shorttv/order/PayTestActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "shortTvLib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic R(Lcom/transsion/shorttv/order/PayTestActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/order/PayTestActivity;->T(Lcom/transsion/shorttv/order/PayTestActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final T(Lcom/transsion/shorttv/order/PayTestActivity;Landroid/view/View;)V
    .locals 13

    sget-object p1, Lcom/transsion/shorttv/order/d;->a:Lcom/transsion/shorttv/order/d;

    new-instance v12, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;

    const/16 v10, 0x178

    const/4 v11, 0x0

    const-string v1, "MovieBox"

    const-string v2, "3180939149599363896"

    const-string v3, "7260396449953797608"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLcom/transsion/shorttv/order/EnumPayChannel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/transsion/shorttv/order/PayTestActivity$a;

    invoke-direct {v0}, Lcom/transsion/shorttv/order/PayTestActivity$a;-><init>()V

    invoke-virtual {p1, p0, v12, v0}, Lcom/transsion/shorttv/order/d;->d(Landroid/content/Context;Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/b;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/shorttv/R$layout;->activity_test_pay_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcom/transsion/shorttv/R$id;->btnPay:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/shorttv/order/h;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv/order/h;-><init>(Lcom/transsion/shorttv/order/PayTestActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
