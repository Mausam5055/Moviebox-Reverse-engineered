.class public final Lcom/vungle/ads/internal/model/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/model/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/model/d$c$b;,
        Lcom/vungle/ads/internal/model/d$c$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/model/d$c$b;


# instance fields
.field private amazonAdvertisingId:Ljava/lang/String;

.field private appSetId:Ljava/lang/String;

.field private appSetIdScope:Ljava/lang/Integer;

.field private batteryLevel:F

.field private batterySaverEnabled:I

.field private batteryState:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private connectionTypeDetail:Ljava/lang/String;

.field private gaid:Ljava/lang/String;

.field private isGooglePlayServicesAvailable:Z

.field private isSideloadEnabled:Z

.field private isTv:Z

.field private language:Ljava/lang/String;

.field private locale:Ljava/lang/String;

.field private obt:Ljava/lang/Long;

.field private oit:Ljava/lang/Long;

.field private ort:Ljava/lang/Long;

.field private sdCardAvailable:I

.field private soundEnabled:I

.field private timeZone:Ljava/lang/String;

.field private volumeLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/model/d$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/model/d$c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/model/d$c;->Companion:Lcom/vungle/ads/internal/model/d$c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 24

    move-object/from16 v0, p0

    const v22, 0x1fffff

    const/16 v23, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/vungle/ads/internal/model/d$c;-><init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lkotlinx/serialization/internal/w1;)V
    .locals 6
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    move-object v0, p0

    move v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    goto :goto_0

    :cond_0
    move v2, p2

    iput-boolean v2, v0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    :goto_0
    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, p3

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_2

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object v2, p4

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    :goto_2
    and-int/lit8 v2, v1, 0x8

    const/4 v5, 0x0

    if-nez v2, :cond_3

    iput v5, v0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    goto :goto_3

    :cond_3
    move v2, p5

    iput v2, v0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_4

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v2, p6

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_5

    iput v3, v0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    goto :goto_5

    :cond_5
    move v2, p7

    iput v2, v0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_6

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v2, p8

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_7

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object v2, p9

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_8

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-nez v2, :cond_9

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_a

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_b

    iput v5, v0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    goto :goto_b

    :cond_b
    move/from16 v2, p13

    iput v2, v0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    const/4 v5, 0x1

    if-nez v2, :cond_c

    iput v5, v0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    goto :goto_c

    :cond_c
    move/from16 v2, p14

    iput v2, v0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_d

    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    goto :goto_d

    :cond_d
    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_e

    iput v5, v0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    goto :goto_e

    :cond_e
    move/from16 v2, p16

    iput v2, v0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_f

    iput-boolean v3, v0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    goto :goto_f

    :cond_f
    move/from16 v2, p17

    iput-boolean v2, v0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_10

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    :goto_10
    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    :goto_11
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-nez v2, :cond_12

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    goto :goto_12

    :cond_12
    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    :goto_12
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-nez v2, :cond_13

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    goto :goto_13

    :cond_13
    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-nez v1, :cond_14

    iput-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    :goto_14
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput-boolean v1, v0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    move-object v1, p2

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    move v1, p4

    iput v1, v0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    move-object v1, p5

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    move-object v1, p7

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    move v1, p12

    iput v1, v0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    move v1, p13

    iput v1, v0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move/from16 v9, p6

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v7, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    const/16 v16, 0x1

    if-eqz v15, :cond_c

    move/from16 v15, v16

    goto :goto_c

    :cond_c
    move/from16 v15, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    move/from16 v2, p14

    :goto_d
    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_e

    goto :goto_e

    :cond_e
    move/from16 v16, p15

    :goto_e
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_f

    :cond_f
    move/from16 v4, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v0, v0, v21

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v0, p21

    :goto_14
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v8

    move/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move/from16 p13, v7

    move/from16 p14, v15

    move/from16 p15, v2

    move/from16 p16, v16

    move/from16 p17, v4

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v0

    invoke-direct/range {p1 .. p22}, Lcom/vungle/ads/internal/model/d$c;-><init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vungle/ads/internal/model/d$c;ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/vungle/ads/internal/model/d$c;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p22

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget v14, v0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-boolean v15, v0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    goto :goto_f

    :cond_f
    move/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v1, v1, v16

    if-eqz v1, :cond_14

    iget-object v1, v0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p20, v15

    move-object/from16 p21, v1

    invoke-virtual/range {p0 .. p21}, Lcom/vungle/ads/internal/model/d$c;->copy(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/vungle/ads/internal/model/d$c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAmazonAdvertisingId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getAppSetId$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getAppSetIdScope$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBatteryLevel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBatterySaverEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBatteryState$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getConnectionType$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getConnectionTypeDetail$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGaid$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLanguage$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getLocale$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getObt$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOit$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getOrt$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSdCardAvailable$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSoundEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTimeZone$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVolumeLevel$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isGooglePlayServicesAvailable$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isSideloadEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isTv$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/vungle/ads/internal/model/d$c;Le00/d;Lkotlinx/serialization/descriptors/f;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    if-eqz v1, :cond_1

    :goto_0
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    invoke-interface {p1, p2, v0, v1}, Le00/d;->x(Lkotlinx/serialization/descriptors/f;IZ)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lkotlinx/serialization/internal/r0;->a:Lkotlinx/serialization/internal/r0;

    iget-object v3, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    invoke-interface {p1, p2, v1, v2, v3}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_3
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    invoke-interface {p1, p2, v1, v2}, Le00/d;->s(Lkotlinx/serialization/descriptors/f;IF)V

    :cond_7
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_4
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    if-eqz v2, :cond_b

    :goto_5
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    invoke-interface {p1, p2, v1, v2}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    :cond_b
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_6
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_d
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_7
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_8
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_9
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_a
    sget-object v2, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v4, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v4}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :goto_b
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    invoke-interface {p1, p2, v1, v2}, Le00/d;->s(Lkotlinx/serialization/descriptors/f;IF)V

    :cond_17
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    if-eq v2, v0, :cond_19

    :goto_c
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    invoke-interface {p1, p2, v1, v2}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    :cond_19
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    if-eqz v2, :cond_1b

    :goto_d
    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    invoke-interface {p1, p2, v1, v2}, Le00/d;->x(Lkotlinx/serialization/descriptors/f;IZ)V

    :cond_1b
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_e

    :cond_1c
    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    if-eq v2, v0, :cond_1d

    :goto_e
    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    invoke-interface {p1, p2, v1, v0}, Le00/d;->w(Lkotlinx/serialization/descriptors/f;II)V

    :cond_1d
    const/16 v0, 0xf

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_f

    :cond_1e
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    if-eqz v1, :cond_1f

    :goto_f
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    invoke-interface {p1, p2, v0, v1}, Le00/d;->x(Lkotlinx/serialization/descriptors/f;IZ)V

    :cond_1f
    const/16 v0, 0x10

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_10

    :cond_20
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    if-eqz v1, :cond_21

    :goto_10
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_21
    const/16 v0, 0x11

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_11

    :cond_22
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    if-eqz v1, :cond_23

    :goto_11
    sget-object v1, Lkotlinx/serialization/internal/b2;->a:Lkotlinx/serialization/internal/b2;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_23
    const/16 v0, 0x12

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_12

    :cond_24
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    if-eqz v1, :cond_25

    :goto_12
    sget-object v1, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_25
    const/16 v0, 0x13

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_13

    :cond_26
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    if-eqz v1, :cond_27

    :goto_13
    sget-object v1, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, v2}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_27
    const/16 v0, 0x14

    invoke-interface {p1, p2, v0}, Le00/d;->z(Lkotlinx/serialization/descriptors/f;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    :cond_28
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    if-eqz v1, :cond_29

    :goto_14
    sget-object v1, Lkotlinx/serialization/internal/b1;->a:Lkotlinx/serialization/internal/b1;

    iget-object p0, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, p0}, Le00/d;->i(Lkotlinx/serialization/descriptors/f;ILkotlinx/serialization/g;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    return v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()F
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    return v0
.end method

.method public final component13()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    return v0
.end method

.method public final component14()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    return v0
.end method

.method public final component16()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    return v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component19()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    return-object v0
.end method

.method public final component21()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Lcom/vungle/ads/internal/model/d$c;
    .locals 23

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    new-instance v22, Lcom/vungle/ads/internal/model/d$c;

    move-object/from16 v0, v22

    invoke-direct/range {v0 .. v21}, Lcom/vungle/ads/internal/model/d$c;-><init>(ZLjava/lang/String;Ljava/lang/Integer;FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FIZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v22
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vungle/ads/internal/model/d$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/model/d$c;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    iget v3, p1, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    iget v3, p1, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    iget v3, p1, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    iget-boolean v3, p1, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    iget-object v3, p1, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    iget-object p1, p1, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public final getAmazonAdvertisingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSetIdScope()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBatteryLevel()F
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    return v0
.end method

.method public final getBatterySaverEnabled()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    return v0
.end method

.method public final getBatteryState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionTypeDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getGaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocale()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public final getObt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOit()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOrt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSdCardAvailable()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    return v0
.end method

.method public final getSoundEnabled()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    return v0
.end method

.method public final getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public final getVolumeLevel()F
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    if-eqz v2, :cond_9

    move v2, v1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    if-eqz v2, :cond_a

    goto :goto_8

    :cond_a
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v3

    goto :goto_9

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    if-nez v1, :cond_c

    move v1, v3

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_b

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    if-nez v1, :cond_e

    move v1, v3

    goto :goto_c

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    if-nez v1, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v0, v3

    return v0
.end method

.method public final isGooglePlayServicesAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    return v0
.end method

.method public final isSideloadEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    return v0
.end method

.method public final isTv()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    return v0
.end method

.method public final setAmazonAdvertisingId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    return-void
.end method

.method public final setAppSetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    return-void
.end method

.method public final setAppSetIdScope(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    return-void
.end method

.method public final setBatteryLevel(F)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    return-void
.end method

.method public final setBatterySaverEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    return-void
.end method

.method public final setBatteryState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    return-void
.end method

.method public final setConnectionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    return-void
.end method

.method public final setConnectionTypeDetail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    return-void
.end method

.method public final setGaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    return-void
.end method

.method public final setGooglePlayServicesAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    return-void
.end method

.method public final setLocale(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    return-void
.end method

.method public final setObt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    return-void
.end method

.method public final setOit(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    return-void
.end method

.method public final setOrt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    return-void
.end method

.method public final setSdCardAvailable(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    return-void
.end method

.method public final setSideloadEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    return-void
.end method

.method public final setSoundEnabled(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    return-void
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public final setTv(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    return-void
.end method

.method public final setVolumeLevel(F)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VungleExt(isGooglePlayServicesAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isGooglePlayServicesAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appSetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSetIdScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->appSetIdScope:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->batteryLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", batteryState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->batteryState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", batterySaverEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->batterySaverEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionTypeDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->connectionTypeDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->timeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", volumeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->volumeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", soundEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->soundEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isTv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isTv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sdCardAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/ads/internal/model/d$c;->sdCardAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSideloadEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vungle/ads/internal/model/d$c;->isSideloadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gaid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->gaid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amazonAdvertisingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->amazonAdvertisingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->oit:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->ort:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", obt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/ads/internal/model/d$c;->obt:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
