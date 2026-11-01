.class public final enum Lcom/cicada/player/utils/FrameInfo$PixelFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/FrameInfo$PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_APPLE_PIXEL_BUFFER:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_BGR8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_CICADA_AF:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_CICADA_MEDIA_CODEC:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_D3D11:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_DXVA2_VLD:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_GRAY8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_MONOBLACK:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_MONOWHITE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_NV12:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_NV21:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_PAL8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_RGB8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_UYVY422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_UYYVYY411:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV410P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV411P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV420P10BE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV420P10LE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUV444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUVJ420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUVJ422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUVJ444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

.field public static final enum AF_PIX_FMT_YUYV422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    new-instance v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/4 v1, -0x1

    const-string v2, "AF_PIX_FMT_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v2, "AF_PIX_FMT_YUV420P"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v2, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v5, "AF_PIX_FMT_YUYV422"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUYV422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v5, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v7, "AF_PIX_FMT_RGB24"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v7, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v9, "AF_PIX_FMT_BGR24"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR24:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v9, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v11, "AF_PIX_FMT_YUV422P"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v11, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v13, "AF_PIX_FMT_YUV444P"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v13, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v15, "AF_PIX_FMT_YUV410P"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV410P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v15, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v14, "AF_PIX_FMT_YUV411P"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV411P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v14, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v12, "AF_PIX_FMT_GRAY8"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_GRAY8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v12, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v10, "AF_PIX_FMT_MONOWHITE"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_MONOWHITE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v10, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v8, "AF_PIX_FMT_MONOBLACK"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_MONOBLACK:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v8, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v6, "AF_PIX_FMT_PAL8"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_PAL8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v4, "AF_PIX_FMT_YUVJ420P"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ420P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v3, "AF_PIX_FMT_YUVJ422P"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v3, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ422P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v8, "AF_PIX_FMT_YUVJ444P"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v3, v8, v4, v6}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUVJ444P:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v8, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v6, "AF_PIX_FMT_UYVY422"

    move-object/from16 v19, v3

    const/16 v3, 0x10

    invoke-direct {v8, v6, v3, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_UYVY422:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v4, "AF_PIX_FMT_UYYVYY411"

    move-object/from16 v20, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_UYYVYY411:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v3, "AF_PIX_FMT_BGR8"

    move-object/from16 v21, v6

    const/16 v6, 0x12

    invoke-direct {v4, v3, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v8, "AF_PIX_FMT_BGR4"

    move-object/from16 v22, v4

    const/16 v4, 0x13

    invoke-direct {v3, v8, v4, v6}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v8, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v6, "AF_PIX_FMT_BGR4_BYTE"

    move-object/from16 v23, v3

    const/16 v3, 0x14

    invoke-direct {v8, v6, v3, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_BGR4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v6, "AF_PIX_FMT_RGB8"

    move-object/from16 v24, v8

    const/16 v8, 0x15

    invoke-direct {v4, v6, v8, v3}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB8:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const-string v6, "AF_PIX_FMT_RGB4"

    move-object/from16 v25, v4

    const/16 v4, 0x16

    invoke-direct {v3, v6, v4, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB4:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v8, 0x17

    move-object/from16 v26, v3

    const-string v3, "AF_PIX_FMT_RGB4_BYTE"

    invoke-direct {v6, v3, v8, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_RGB4_BYTE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v4, 0x18

    move-object/from16 v27, v6

    const-string v6, "AF_PIX_FMT_NV12"

    invoke-direct {v3, v6, v4, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NV12:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v8, 0x19

    move-object/from16 v28, v3

    const-string v3, "AF_PIX_FMT_NV21"

    invoke-direct {v6, v3, v8, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_NV21:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v8, 0x1a

    const/16 v4, 0x3f

    move-object/from16 v29, v6

    const-string v6, "AF_PIX_FMT_YUV420P10BE"

    invoke-direct {v3, v6, v8, v4}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P10BE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v6, 0x1b

    const/16 v8, 0x40

    move-object/from16 v30, v3

    const-string v3, "AF_PIX_FMT_YUV420P10LE"

    invoke-direct {v4, v3, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_YUV420P10LE:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v6, 0x1c

    const/16 v8, 0x384

    move-object/from16 v31, v4

    const-string v4, "AF_PIX_FMT_D3D11"

    invoke-direct {v3, v4, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_D3D11:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v6, 0x1d

    const/16 v8, 0x385

    move-object/from16 v32, v3

    const-string v3, "AF_PIX_FMT_DXVA2_VLD"

    invoke-direct {v4, v3, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_DXVA2_VLD:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v6, 0x1e

    const/16 v8, 0x3e8

    move-object/from16 v33, v4

    const-string v4, "AF_PIX_FMT_APPLE_PIXEL_BUFFER"

    invoke-direct {v3, v4, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_APPLE_PIXEL_BUFFER:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v6, 0x1f

    const/16 v8, 0x3e9

    move-object/from16 v34, v3

    const-string v3, "AF_PIX_FMT_CICADA_AF"

    invoke-direct {v4, v3, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_CICADA_AF:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    new-instance v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v6, 0x20

    const/16 v8, 0x3ea

    move-object/from16 v35, v4

    const-string v4, "AF_PIX_FMT_CICADA_MEDIA_CODEC"

    invoke-direct {v3, v4, v6, v8}, Lcom/cicada/player/utils/FrameInfo$PixelFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->AF_PIX_FMT_CICADA_MEDIA_CODEC:Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/16 v4, 0x21

    new-array v4, v4, [Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    const/4 v6, 0x0

    aput-object v0, v4, v6

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

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

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

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v3, v4, v0

    sput-object v4, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$PixelFormat;

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

    iput p3, p0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/FrameInfo$PixelFormat;
    .locals 1

    const-class v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    return-object p0
.end method

.method public static values()[Lcom/cicada/player/utils/FrameInfo$PixelFormat;
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/FrameInfo$PixelFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/FrameInfo$PixelFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/cicada/player/utils/FrameInfo$PixelFormat;->mValue:I

    return v0
.end method
