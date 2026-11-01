.class public abstract Lcom/cloud/hisavana/sdk/m0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/m0$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/cloud/hisavana/sdk/m0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/m0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/hisavana/sdk/m0;->a:Lcom/cloud/hisavana/sdk/m0$a;

    return-void
.end method

.method public static final a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/m0;->a:Lcom/cloud/hisavana/sdk/m0$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/m0$a;->a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    return-void
.end method
