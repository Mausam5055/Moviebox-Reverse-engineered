.class public final Lcom/transsion/shorttv_pugc/ShorttvModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ShorttvModel$FirstImage;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$PlayMultiDto;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$PlayStreamItem;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCreator;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoHasTag;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoInteractiveInfo;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoList;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoResourceInfo;,
        Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoType;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/shorttv_pugc/ShorttvModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/shorttv_pugc/ShorttvModel;

    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel;-><init>()V

    sput-object v0, Lcom/transsion/shorttv_pugc/ShorttvModel;->a:Lcom/transsion/shorttv_pugc/ShorttvModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$mipmap;->short_tv_ic_short_tv:I

    return v0
.end method
