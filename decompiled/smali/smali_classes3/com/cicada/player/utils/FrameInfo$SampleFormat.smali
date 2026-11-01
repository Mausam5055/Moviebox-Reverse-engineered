.class public final enum Lcom/cicada/player/utils/FrameInfo$SampleFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/FrameInfo$SampleFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const/4 v1, -0x1

    const-string v2, "AF_SAMPLE_FMT_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v2, "AF_SAMPLE_FMT_U8"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v2, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v5, "AF_SAMPLE_FMT_S16"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v5, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v7, "AF_SAMPLE_FMT_S32"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v7, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v9, "AF_SAMPLE_FMT_FLT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v9, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v11, "AF_SAMPLE_FMT_DBL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v11, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v13, "AF_SAMPLE_FMT_U8P"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v13, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v15, "AF_SAMPLE_FMT_S16P"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v15, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v14, "AF_SAMPLE_FMT_S32P"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v14, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v12, "AF_SAMPLE_FMT_FLTP"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v12, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v10, "AF_SAMPLE_FMT_DBLP"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    new-instance v10, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v8, "AF_SAMPLE_FMT_NB"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v0, v8, v3

    const/4 v0, 0x1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object v2, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    aput-object v12, v8, v6

    aput-object v10, v8, v4

    sput-object v8, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

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

    iput p3, p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/FrameInfo$SampleFormat;
    .locals 1

    const-class v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    return-object p0
.end method

.method public static values()[Lcom/cicada/player/utils/FrameInfo$SampleFormat;
    .locals 1

    sget-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->mValue:I

    return v0
.end method
