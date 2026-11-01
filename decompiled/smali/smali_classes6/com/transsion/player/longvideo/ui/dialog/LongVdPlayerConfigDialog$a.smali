.class public abstract synthetic Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->values()[Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->SPEED:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->BITRATE:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$a;->a:[I

    return-void
.end method
