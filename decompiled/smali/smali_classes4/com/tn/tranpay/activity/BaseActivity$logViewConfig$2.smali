.class final Lcom/tn/tranpay/activity/BaseActivity$logViewConfig$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/activity/BaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/tn/tranpay/report/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lg4/a;",
        "T",
        "Lcom/tn/tranpay/report/c;",
        "invoke",
        "()Lcom/tn/tranpay/report/c;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/tranpay/activity/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tn/tranpay/activity/BaseActivity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tn/tranpay/activity/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/activity/BaseActivity<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/tranpay/activity/BaseActivity$logViewConfig$2;->this$0:Lcom/tn/tranpay/activity/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tn/tranpay/report/c;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/activity/BaseActivity$logViewConfig$2;->this$0:Lcom/tn/tranpay/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tn/tranpay/activity/BaseActivity;->W()Lcom/tn/tranpay/report/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tn/tranpay/activity/BaseActivity$logViewConfig$2;->invoke()Lcom/tn/tranpay/report/c;

    move-result-object v0

    return-object v0
.end method
