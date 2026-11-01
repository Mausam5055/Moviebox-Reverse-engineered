.class public Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private final EjP:Z

.field private Fmk:Z

.field private HiB:I

.field private final Jcg:I

.field private RiZ:Z

.field private Sj:Ljava/lang/String;

.field private TEQ:I

.field private TKC:I

.field private TzV:Ljava/lang/String;

.field private Ym:F

.field private Zq:Ljava/lang/String;

.field private aa:F

.field private dNu:Ljava/lang/String;

.field private dx:I

.field private sP:I

.field private sU:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sef:Ljava/lang/String;

.field private uA:Ljava/lang/String;

.field private uvD:Ljava/lang/String;

.field private final vS:Ljava/lang/String;

.field private zR:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    const/16 v0, 0x140

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->EjP:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HiB:I

    const-string v1, ""

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->vS:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Jcg:I

    const-string v1, "defaultUser"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uA:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->RiZ:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sU:Ljava/util/Map;

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zR:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Sj:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HiB:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Ym:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->aa:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    :goto_0
    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Dq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->EjP(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TEQ:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->RiZ:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Fmk:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sef:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->HiB(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Zq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uvD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dNu:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Dq(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TzV:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->uA(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sU:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/util/Map;)Ljava/util/Map;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dx:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->vS(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zR:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->Jcg(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    return-object v0
.end method

.method public isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Fmk:Z

    return-object p0
.end method

.method public setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->HiB:I

    return-object p0
.end method

.method public setAdId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Zq:Ljava/lang/String;

    return-object p0
.end method

.method public setBannerType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->zR:I

    return-object p0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Sj:Ljava/lang/String;

    return-object p0
.end method

.method public setCreativeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uvD:Ljava/lang/String;

    return-object p0
.end method

.method public setDurationSlotType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dx:I

    return-object p0
.end method

.method public setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Ym:F

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->aa:F

    return-object p0
.end method

.method public setExt(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->dNu:Ljava/lang/String;

    return-object p0
.end method

.method public setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sP:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TKC:I

    return-object p0
.end method

.method public setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->RiZ:Z

    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->Dq:Ljava/lang/String;

    return-object p0
.end method

.method public setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TEQ:I

    return-object p0
.end method

.method public setRequestExtraMap(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sU:Ljava/util/Map;

    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setUserData(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->TzV:Ljava/lang/String;

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->uA:Ljava/lang/String;

    return-object p0
.end method

.method public withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/Zq;->EjP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lw5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->sef:Ljava/lang/String;

    return-object p0
.end method
