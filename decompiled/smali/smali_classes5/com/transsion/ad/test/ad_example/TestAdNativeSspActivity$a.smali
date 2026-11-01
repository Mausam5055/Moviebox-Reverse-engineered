.class public final Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;
.super Ldi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;


# direct methods
.method constructor <init>(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    invoke-direct {p0}, Ldi/a;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 7

    invoke-super {p0, p1}, Ldi/a;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object v0, p0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBiddingError() --> p0 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public k(Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Ldi/a;->k(Ljava/util/List;)V

    iget-object v1, v0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v8

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5230\u5e7f\u544a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \u6761\u5e7f\u544a\u6570\u636e\uff0c\u5f00\u59cb\u6e32\u67d3\u5e7f\u544a\u89c6\u56fe..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_b

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, v0, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;->d:Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_1
    move-object v13, v4

    check-cast v13, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    const-string v4, "nativeManager"

    const-string v6, "binding"

    if-eqz v3, :cond_8

    const/4 v7, 0x1

    if-eq v3, v7, :cond_5

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->T(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lji/u;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v8

    :cond_3
    iget-object v9, v3, Lji/u;->e:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->V(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v10, v8

    goto :goto_2

    :cond_4
    move-object v10, v3

    :goto_2
    new-instance v12, Lcom/transsion/ad/test/ad_example/g0;

    invoke-direct {v12, v2}, Lcom/transsion/ad/test/ad_example/g0;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->T(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lji/u;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v8

    :cond_6
    iget-object v9, v3, Lji/u;->d:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->V(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v10, v8

    goto :goto_3

    :cond_7
    move-object v10, v3

    :goto_3
    new-instance v12, Lcom/transsion/ad/test/ad_example/g0;

    invoke-direct {v12, v2}, Lcom/transsion/ad/test/ad_example/g0;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->T(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lji/u;

    move-result-object v3

    if-nez v3, :cond_9

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v3, v8

    :cond_9
    iget-object v9, v3, Lji/u;->c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    invoke-static {v2}, Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;->V(Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;)Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v10, v8

    goto :goto_4

    :cond_a
    move-object v10, v3

    :goto_4
    new-instance v12, Lcom/transsion/ad/test/ad_example/g0;

    invoke-direct {v12, v2}, Lcom/transsion/ad/test/ad_example/g0;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v11, 0x0

    invoke-static/range {v9 .. v15}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindSspNativeView$default(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ILjava/lang/Object;)V

    :goto_5
    move v3, v5

    goto/16 :goto_1

    :cond_b
    return-void
.end method
