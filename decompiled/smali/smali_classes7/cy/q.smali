.class public final Lcy/q;
.super Lcom/transsion/ad/bidding/base/r;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/r;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->adChoicesView:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->store_mark_view:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->adIcon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->call_to_action:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_icon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public t()I
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$layout;->native_media_player_mid_native_layout:I

    return v0
.end method

.method public v()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->coverview:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/transsion/wrapperad/R$id;->native_ad_title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
