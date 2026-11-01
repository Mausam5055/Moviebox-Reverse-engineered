.class public final enum Lcom/aliyun/player/bean/InfoCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/player/bean/InfoCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CacheError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LocalCacheLoaded:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LoopingStart:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum LowMemory:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum Unknown:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum UtcTime:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

.field public static final enum VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lcom/aliyun/player/bean/InfoCode;

    const/4 v1, -0x1

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aliyun/player/bean/InfoCode;->Unknown:Lcom/aliyun/player/bean/InfoCode;

    new-instance v1, Lcom/aliyun/player/bean/InfoCode;

    const-string v2, "LoopingStart"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/aliyun/player/bean/InfoCode;->LoopingStart:Lcom/aliyun/player/bean/InfoCode;

    new-instance v2, Lcom/aliyun/player/bean/InfoCode;

    const-string v5, "BufferedPosition"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/aliyun/player/bean/InfoCode;->BufferedPosition:Lcom/aliyun/player/bean/InfoCode;

    new-instance v5, Lcom/aliyun/player/bean/InfoCode;

    const-string v7, "CurrentPosition"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/aliyun/player/bean/InfoCode;->CurrentPosition:Lcom/aliyun/player/bean/InfoCode;

    new-instance v7, Lcom/aliyun/player/bean/InfoCode;

    const-string v9, "AutoPlayStart"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/aliyun/player/bean/InfoCode;->AutoPlayStart:Lcom/aliyun/player/bean/InfoCode;

    new-instance v9, Lcom/aliyun/player/bean/InfoCode;

    const-string v11, "CurrentDownloadSpeed"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/aliyun/player/bean/InfoCode;->CurrentDownloadSpeed:Lcom/aliyun/player/bean/InfoCode;

    new-instance v11, Lcom/aliyun/player/bean/InfoCode;

    const-string v13, "UtcTime"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/aliyun/player/bean/InfoCode;->UtcTime:Lcom/aliyun/player/bean/InfoCode;

    new-instance v13, Lcom/aliyun/player/bean/InfoCode;

    const-string v15, "LocalCacheLoaded"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/aliyun/player/bean/InfoCode;->LocalCacheLoaded:Lcom/aliyun/player/bean/InfoCode;

    new-instance v15, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0x8

    const/16 v14, 0x64

    const-string v10, "SwitchToSoftwareVideoDecoder"

    invoke-direct {v15, v10, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/aliyun/player/bean/InfoCode;->SwitchToSoftwareVideoDecoder:Lcom/aliyun/player/bean/InfoCode;

    new-instance v10, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0x9

    const/16 v12, 0x65

    const-string v8, "AudioCodecNotSupport"

    invoke-direct {v10, v8, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/aliyun/player/bean/InfoCode;->AudioCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    new-instance v8, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0xa

    const/16 v14, 0x66

    const-string v6, "AudioDecoderDeviceError"

    invoke-direct {v8, v6, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/aliyun/player/bean/InfoCode;->AudioDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    new-instance v6, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0xb

    const/16 v12, 0x67

    const-string v4, "VideoCodecNotSupport"

    invoke-direct {v6, v4, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/aliyun/player/bean/InfoCode;->VideoCodecNotSupport:Lcom/aliyun/player/bean/InfoCode;

    new-instance v4, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0xc

    const/16 v14, 0x68

    const-string v3, "VideoDecoderDeviceError"

    invoke-direct {v4, v3, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->VideoDecoderDeviceError:Lcom/aliyun/player/bean/InfoCode;

    new-instance v3, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0xd

    const/16 v12, 0x69

    move-object/from16 v16, v4

    const-string v4, "VideoRenderInitError"

    invoke-direct {v3, v4, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/bean/InfoCode;->VideoRenderInitError:Lcom/aliyun/player/bean/InfoCode;

    new-instance v4, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0xe

    const/16 v14, 0x6a

    move-object/from16 v17, v3

    const-string v3, "DemuxerTraceID"

    invoke-direct {v4, v3, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->DemuxerTraceID:Lcom/aliyun/player/bean/InfoCode;

    new-instance v3, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0xf

    const/16 v12, 0x6c

    move-object/from16 v18, v4

    const-string v4, "NetworkRetry"

    invoke-direct {v3, v4, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/bean/InfoCode;->NetworkRetry:Lcom/aliyun/player/bean/InfoCode;

    new-instance v4, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0x10

    const/16 v14, 0x6d

    move-object/from16 v19, v3

    const-string v3, "CacheSuccess"

    invoke-direct {v4, v3, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->CacheSuccess:Lcom/aliyun/player/bean/InfoCode;

    new-instance v3, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0x11

    const/16 v12, 0x6e

    move-object/from16 v20, v4

    const-string v4, "CacheError"

    invoke-direct {v3, v4, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/bean/InfoCode;->CacheError:Lcom/aliyun/player/bean/InfoCode;

    new-instance v4, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0x12

    const/16 v14, 0x6f

    move-object/from16 v21, v3

    const-string v3, "LowMemory"

    invoke-direct {v4, v3, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->LowMemory:Lcom/aliyun/player/bean/InfoCode;

    new-instance v3, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0x13

    const/16 v12, 0x71

    move-object/from16 v22, v4

    const-string v4, "NetworkRetrySuccess"

    invoke-direct {v3, v4, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/bean/InfoCode;->NetworkRetrySuccess:Lcom/aliyun/player/bean/InfoCode;

    new-instance v4, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0x14

    const/16 v14, 0x72

    move-object/from16 v23, v3

    const-string v3, "SubtitleSelectError"

    invoke-direct {v4, v3, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->SubtitleSelectError:Lcom/aliyun/player/bean/InfoCode;

    new-instance v3, Lcom/aliyun/player/bean/InfoCode;

    const/16 v14, 0x15

    const/16 v12, 0x74

    move-object/from16 v24, v4

    const-string v4, "DirectComponentMSG"

    invoke-direct {v3, v4, v14, v12}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/bean/InfoCode;->DirectComponentMSG:Lcom/aliyun/player/bean/InfoCode;

    new-instance v4, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0x16

    const v14, 0x30010001

    move-object/from16 v25, v3

    const-string v3, "RTSServerMaybeDisconnect"

    invoke-direct {v4, v3, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->RTSServerMaybeDisconnect:Lcom/aliyun/player/bean/InfoCode;

    new-instance v3, Lcom/aliyun/player/bean/InfoCode;

    const/16 v12, 0x17

    const v14, 0x30010002

    move-object/from16 v26, v4

    const-string v4, "RTSServerRecover"

    invoke-direct {v3, v4, v12, v14}, Lcom/aliyun/player/bean/InfoCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/aliyun/player/bean/InfoCode;->RTSServerRecover:Lcom/aliyun/player/bean/InfoCode;

    const/16 v4, 0x18

    new-array v4, v4, [Lcom/aliyun/player/bean/InfoCode;

    const/4 v12, 0x0

    aput-object v0, v4, v12

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v3, v4, v0

    sput-object v4, Lcom/aliyun/player/bean/InfoCode;->$VALUES:[Lcom/aliyun/player/bean/InfoCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/aliyun/player/bean/InfoCode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/player/bean/InfoCode;
    .locals 1

    const-class v0, Lcom/aliyun/player/bean/InfoCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/player/bean/InfoCode;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/player/bean/InfoCode;
    .locals 1

    sget-object v0, Lcom/aliyun/player/bean/InfoCode;->$VALUES:[Lcom/aliyun/player/bean/InfoCode;

    invoke-virtual {v0}, [Lcom/aliyun/player/bean/InfoCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/aliyun/player/bean/InfoCode;->value:I

    return v0
.end method
