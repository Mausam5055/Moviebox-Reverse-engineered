.class public final Lcom/transsion/player/longvideo/helper/v;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/player/longvideo/helper/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/player/longvideo/helper/v;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/helper/v;-><init>()V

    sput-object v0, Lcom/transsion/player/longvideo/helper/v;->a:Lcom/transsion/player/longvideo/helper/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 3

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
