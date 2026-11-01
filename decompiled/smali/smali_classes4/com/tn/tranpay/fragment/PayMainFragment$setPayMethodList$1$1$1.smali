.class final Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayMainFragment;->f0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/tn/tranpay/bean/MediumInputBean;",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "item",
        "Lcom/tn/tranpay/bean/MediumInputBean;",
        "view",
        "Landroid/view/View;",
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


# instance fields
.field final synthetic $cnic:Ljava/lang/String;

.field final synthetic $phone:Ljava/lang/String;

.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayMainFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayMainFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->this$0:Lcom/tn/tranpay/fragment/PayMainFragment;

    iput-object p2, p0, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->$phone:Ljava/lang/String;

    iput-object p3, p0, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->$cnic:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tn/tranpay/bean/MediumInputBean;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->invoke(Lcom/tn/tranpay/bean/MediumInputBean;Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/tn/tranpay/bean/MediumInputBean;Landroid/view/View;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->this$0:Lcom/tn/tranpay/fragment/PayMainFragment;

    iget-object v1, p0, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->$phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/tn/tranpay/fragment/PayMainFragment$setPayMethodList$1$1$1;->$cnic:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/tn/tranpay/fragment/PayMainFragment;->X(Lcom/tn/tranpay/fragment/PayMainFragment;Lcom/tn/tranpay/bean/MediumInputBean;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
