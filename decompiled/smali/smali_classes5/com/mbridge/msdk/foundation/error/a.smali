.class public Lcom/mbridge/msdk/foundation/error/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/foundation/error/a;->a:Landroid/util/SparseArray;

    const v1, 0xd6d96

    const-string v2, "exception when request"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d81

    const-string v2, "v3 params invalid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d82

    const-string v2, "v3 request error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d83

    const-string v2, "v3 response error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d84

    const-string v2, "video download error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d85

    const-string v2, "big template download error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d86

    const-string v2, "template download error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d87

    const-string v2, "endcard template download error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da7

    const-string v2, "image download error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d88

    const-string v2, "big template render error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d89

    const-string v2, "template render error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d8a

    const-string v2, "load time out error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d8c

    const-string v2, "render half img fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d8d

    const-string v2, "write marid fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d8e

    const-string v2, "download js file fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d8f

    const-string v2, "isready false error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d90

    const-string v2, "current unit is loading"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d91

    const-string v2, "adn no offer fill"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d92

    const-string v2, "local return empty"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d95

    const-string v2, "app already install"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d93

    const-string v2, "ad over cap"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d94

    const-string v2, "load exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d97

    const-string v2, "v3 time out"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d98

    const-string v2, "unknown error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d99

    const-string v2, "context is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d9a

    const-string v2, "auto refresh fail because unitId status is pause or stop"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d9b

    const-string v2, "download resource fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d80

    const-string v2, "has exception happen : "

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d9c

    const-string v2, "view width or height is 0 or view size is too small"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d9d

    const-string v2, "AD display requires webView but current environment not included"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d9e

    const-string v2, "view is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6d9f

    const-string v2, "webView was destroyed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da0

    const-string v2, "unitId is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da1

    const-string v2, "campaign is filtered"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da2

    const-string v2, "render dynamic view fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da3

    const-string v2, "bid token is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da4

    const-string v2, "view container is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da5

    const-string v2, "AD parameter setting error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da6

    const-string v2, "cb is open"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da8

    const-string v2, "db restore failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6da9

    const-string v2, "network no connection error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6db1

    const-string v2, "load second request error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6daa

    const-string v2, "Check ad init code because ad init error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6dab

    const-string v2, "Ad has error because campaign is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6dac

    const-string v2, "Ad load or show environment error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6dad

    const-string v2, "Ad render timeout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6dae

    const-string v2, "Ad can not show because view is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6daf

    const-string v2, "Campaign image url is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd6db0

    const-string v2, "Ad web resource render fail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9491

    const-string v2, "context or unitid is null"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9492

    const-string v2, "load failed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9493

    const-string v2, "show fail : unexpected destroy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9494

    const-string v2, "play error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9495

    const-string v2, "no adapter_model"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9496

    const-string v2, "no isReadyCampaign"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9497

    const-string v2, "all campaign is loading"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9498

    const-string v2, "dynamicBean parse Exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd9499

    const-string v2, "show parse Exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd949a

    const-string v2, "activityPresenter create exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xd949b

    const-string v2, "network is exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const v1, 0xf1b31

    const-string v2, "build Exception"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/mbridge/msdk/foundation/error/b;
    .locals 1

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/error/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static b(I)I
    .locals 1

    const v0, 0xd6d97

    if-eq p0, v0, :cond_3

    const v0, 0xd6da3

    if-eq p0, v0, :cond_2

    const v0, 0xd6da6

    if-eq p0, v0, :cond_1

    const v0, 0xd6db0

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const p0, 0xd6d98

    goto :goto_0

    :pswitch_0
    const/16 p0, 0xb

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x14

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x13

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x12

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x11

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x10

    goto :goto_0

    :pswitch_6
    const/16 p0, 0xf

    goto :goto_0

    :pswitch_7
    const/16 p0, 0xe

    goto :goto_0

    :pswitch_8
    const/16 p0, 0xd

    goto :goto_0

    :pswitch_9
    const/16 p0, 0xc

    goto :goto_0

    :pswitch_a
    const/16 p0, 0xa

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_c
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_d
    const/4 p0, 0x6

    goto :goto_0

    :pswitch_e
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_f
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_10
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_11
    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    :pswitch_12
    const/16 p0, 0x9

    goto :goto_0

    :cond_1
    const/16 p0, 0x15

    goto :goto_0

    :cond_2
    :pswitch_13
    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0xd6d81
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd6d8c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/foundation/error/a;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
