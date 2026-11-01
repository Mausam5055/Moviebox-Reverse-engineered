.class final Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayFragment;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;

    invoke-direct {v0}, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;-><init>()V

    sput-object v0, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;->INSTANCE:Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tn/tranpay/fragment/PayFragment$handleDismiss$1$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    sget-object v0, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    invoke-virtual {v0}, Lcom/tn/tranpay/report/h;->g()V

    sget-object v0, Lai/a;->a:Lai/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "\u7528\u6237\u62d2\u7edd\u4e86\u652f\u4ed8\u540e\u7684\u7559\u5b58\u63d0\u793a"

    invoke-static {v0, v3, v1, v2, v1}, Lai/a;->c(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
