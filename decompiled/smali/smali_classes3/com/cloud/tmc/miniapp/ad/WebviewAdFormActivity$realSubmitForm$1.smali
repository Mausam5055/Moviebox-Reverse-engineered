.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;
.super Lcom/cloud/tmc/integration/net/TmcResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/integration/net/TmcResponseCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

.field public final synthetic OooO0O0:Lcom/cloud/tmc/ad/bean/FormBean;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;Lcom/cloud/tmc/ad/bean/FormBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO0O0:Lcom/cloud/tmc/ad/bean/FormBean;

    invoke-direct {p0}, Lcom/cloud/tmc/integration/net/TmcResponseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1$getType$1;

    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1$getType$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public onFail(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "fail"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    iget p2, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    iget v0, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0O0:I

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO0O0:Lcom/cloud/tmc/ad/bean/FormBean;

    invoke-virtual {p1, p2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/cloud/tmc/integration/net/BaseResponse;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;->OooO00o:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;

    const/4 p2, 0x1

    iput p2, p1, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    return-void
.end method
