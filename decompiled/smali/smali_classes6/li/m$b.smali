.class Lli/m$b;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lli/m;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lli/m;


# direct methods
.method constructor <init>(Lli/m;)V
    .locals 0

    iput-object p1, p0, Lli/m$b;->a:Lli/m;

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/ad/db/plan/MbAdDbPlans;

    invoke-virtual {p0, p1, p2}, Lli/m$b;->d(Lz3/e;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `mb_ad_db_plans` SET `id` = ?,`version` = ?,`name` = ?,`startTime` = ?,`endTime` = ?,`extraConfig` = ?,`displayTimes` = ?,`showedTimes` = ?,`showDate` = ?,`advertiserName` = ?,`advertiserAvatar` = ?,`advertiserAvatarPath` = ?,`brand` = ?,`denyBrand` = ?,`model` = ?,`denyModel` = ?,`country` = ?,`scenes` = ?,`adSource` = ?,`extAdSlot` = ?,`adMaterialList` = ?,`adPlanUpdateTime` = ?,`sort` = ?,`adShowLevel` = ?,`filterClientVersion` = ?,`adPlanCreateTime` = ?,`appStarDesc` = ?,`appSizeDesc` = ?,`ctxEnableExpr` = ?,`ctxDisableExpr` = ?,`ctxAttributeConfig` = ?,`dispatchTimeStart` = ?,`dispatchTimeEnd` = ?,`extImage` = ?,`bidEcpmCent` = ?,`ecpmCent` = ?,`isValid` = ?,`h5LinkPreload` = ?,`h5LinkOpenByCct` = ?,`countryCode` = ? WHERE `id` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/ad/db/plan/MbAdDbPlans;)V
    .locals 4

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getStartTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEndTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtraConfig()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDisplayTimes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_6
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_7

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowedTimes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_7
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_8

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getShowDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_8
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_9

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_9
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_a

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_a
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_b

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_b

    :cond_b
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdvertiserAvatarPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lli/m$b;->a:Lli/m;

    invoke-static {v0}, Lli/m;->u(Lli/m;)Lli/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBrand()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_c

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_c

    :cond_c
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_c
    iget-object v0, p0, Lli/m$b;->a:Lli/m;

    invoke-static {v0}, Lli/m;->u(Lli/m;)Lli/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyBrand()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_d

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_d

    :cond_d
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_d
    iget-object v0, p0, Lli/m$b;->a:Lli/m;

    invoke-static {v0}, Lli/m;->u(Lli/m;)Lli/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getModel()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_e

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_e

    :cond_e
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_e
    iget-object v0, p0, Lli/m$b;->a:Lli/m;

    invoke-static {v0}, Lli/m;->u(Lli/m;)Lli/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDenyModel()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_f

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_f

    :cond_f
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_f
    iget-object v0, p0, Lli/m$b;->a:Lli/m;

    invoke-static {v0}, Lli/m;->u(Lli/m;)Lli/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountry()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_10

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_10

    :cond_10
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_10
    iget-object v0, p0, Lli/m$b;->a:Lli/m;

    invoke-static {v0}, Lli/m;->u(Lli/m;)Lli/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getScenes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lli/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_11

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_11

    :cond_11
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_11
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_12

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_12

    :cond_12
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdSource()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_12
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_13

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_13

    :cond_13
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_13
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdMaterialList()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    if-nez v0, :cond_14

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_14

    :cond_14
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdMaterialList()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_14
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    if-nez v0, :cond_15

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_15

    :cond_15
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanUpdateTime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_15
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getSort()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_16

    const/16 v0, 0x17

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_16

    :cond_16
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getSort()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x17

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_16
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdShowLevel()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_17

    :cond_17
    const/16 v0, 0x18

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdShowLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_17
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getFilterClientVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_18

    :cond_18
    const/16 v0, 0x19

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getFilterClientVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_18
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanCreateTime()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_19

    :cond_19
    const/16 v0, 0x1a

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAdPlanCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_19
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppStarDesc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1a

    :cond_1a
    const/16 v0, 0x1b

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppStarDesc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1a
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppSizeDesc()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const/16 v0, 0x1c

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1b

    :cond_1b
    const/16 v0, 0x1c

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getAppSizeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1b
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1c

    :cond_1c
    const/16 v0, 0x1d

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1c
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const/16 v0, 0x1e

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1d

    :cond_1d
    const/16 v0, 0x1e

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxDisableExpr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1d
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxAttributeConfig()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1e

    :cond_1e
    const/16 v0, 0x1f

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxAttributeConfig()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1e
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_1f

    :cond_1f
    const/16 v0, 0x20

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeStart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_1f
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    const/16 v0, 0x21

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_20

    :cond_20
    const/16 v0, 0x21

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getDispatchTimeEnd()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_20
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtImage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_21

    :cond_21
    const/16 v0, 0x22

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getExtImage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_21
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_22

    const/16 v0, 0x23

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_22

    :cond_22
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const/16 v2, 0x23

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->a(ID)V

    :goto_22
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEcpmCent()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_23

    const/16 v0, 0x24

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_23

    :cond_23
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getEcpmCent()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x24

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    :goto_23
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->isValid()Z

    move-result v0

    const/16 v1, 0x25

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkPreload()Z

    move-result v0

    const/16 v1, 0x26

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getH5LinkOpenByCct()Z

    move-result v0

    const/16 v1, 0x27

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const/16 v0, 0x28

    invoke-interface {p1, v0}, Lz3/e;->g(I)V

    goto :goto_24

    :cond_24
    const/16 v0, 0x28

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_24
    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    const/16 p2, 0x29

    invoke-interface {p1, p2}, Lz3/e;->g(I)V

    goto :goto_25

    :cond_25
    const/16 v0, 0x29

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_25
    return-void
.end method
