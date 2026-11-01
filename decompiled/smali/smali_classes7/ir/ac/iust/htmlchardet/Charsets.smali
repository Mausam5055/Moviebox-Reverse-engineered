.class public final enum Lir/ac/iust/htmlchardet/Charsets;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/ac/iust/htmlchardet/Charsets;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum BIG5:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum EUC_JP:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum EUC_KR:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum GB18030:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum GB2312:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum GBK:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum IBM420_ltr:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum IBM420_rtl:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum IBM424_ltr:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum IBM424_rtl:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_2022_CN:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_2022_JP:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_2022_KR:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_1:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_15:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_2:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_5:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_6:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_7:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_8:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum ISO_8859_9:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum KOI8_R:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum SHIFT_JIS:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum US_ASCII:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_16:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_16BE:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_16LE:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_32:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_32BE:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_32LE:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum UTF_8:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum WINDOWS_1251:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum WINDOWS_1252:Lir/ac/iust/htmlchardet/Charsets;

.field public static final enum WINDOWS_1256:Lir/ac/iust/htmlchardet/Charsets;


# instance fields
.field private final charsetType:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lir/ac/iust/htmlchardet/Charsets;
    .locals 3

    const/16 v0, 0x22

    new-array v0, v0, [Lir/ac/iust/htmlchardet/Charsets;

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_8:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_16:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1256:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1252:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_16BE:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_16LE:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_32BE:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_32LE:Lir/ac/iust/htmlchardet/Charsets;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->SHIFT_JIS:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_2022_JP:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_2022_CN:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_2022_KR:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->GB18030:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->EUC_JP:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->EUC_KR:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->BIG5:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_1:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_2:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_5:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_6:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_7:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_8:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_9:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1251:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->KOI8_R:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->IBM424_rtl:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->IBM424_ltr:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->IBM420_rtl:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->IBM420_ltr:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->UTF_32:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_15:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->GB2312:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->GBK:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lir/ac/iust/htmlchardet/Charsets;->US_ASCII:Lir/ac/iust/htmlchardet/Charsets;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    const-string v3, "UTF_8"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_8:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x1

    const-string v2, "UTF-16"

    const-string v3, "UTF_16"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_16:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x2

    const-string v2, "Windows-1256"

    const-string v3, "WINDOWS_1256"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1256:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x3

    const-string v2, "Windows-1252"

    const-string v3, "WINDOWS_1252"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1252:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x4

    const-string v2, "UTF-16BE"

    const-string v3, "UTF_16BE"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_16BE:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x5

    const-string v2, "UTF-16LE"

    const-string v3, "UTF_16LE"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_16LE:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x6

    const-string v2, "UTF-32BE"

    const-string v3, "UTF_32BE"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_32BE:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/4 v1, 0x7

    const-string v2, "UTF-32LE"

    const-string v3, "UTF_32LE"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_32LE:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x8

    const-string v2, "Shift_JIS"

    const-string v3, "SHIFT_JIS"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->SHIFT_JIS:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x9

    const-string v2, "ISO-2022-JP"

    const-string v3, "ISO_2022_JP"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_2022_JP:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0xa

    const-string v2, "ISO-2022-CN"

    const-string v3, "ISO_2022_CN"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_2022_CN:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0xb

    const-string v2, "ISO-2022-KR"

    const-string v3, "ISO_2022_KR"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_2022_KR:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "GB18030"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->GB18030:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0xd

    const-string v2, "EUC-JP"

    const-string v3, "EUC_JP"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->EUC_JP:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0xe

    const-string v2, "EUC-KR"

    const-string v3, "EUC_KR"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->EUC_KR:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0xf

    const-string v2, "Big5"

    const-string v3, "BIG5"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->BIG5:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x10

    const-string v2, "ISO-8859-1"

    const-string v3, "ISO_8859_1"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_1:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x11

    const-string v2, "ISO-8859-2"

    const-string v3, "ISO_8859_2"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_2:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x12

    const-string v2, "ISO-8859-5"

    const-string v3, "ISO_8859_5"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_5:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x13

    const-string v2, "ISO-8859-6"

    const-string v3, "ISO_8859_6"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_6:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x14

    const-string v2, "ISO-8859-7"

    const-string v3, "ISO_8859_7"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_7:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x15

    const-string v2, "ISO-8859-8"

    const-string v3, "ISO_8859_8"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_8:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x16

    const-string v2, "ISO-8859-9"

    const-string v3, "ISO_8859_9"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_9:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x17

    const-string v2, "Windows-1251"

    const-string v3, "WINDOWS_1251"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1251:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x18

    const-string v2, "KOI8-R"

    const-string v3, "KOI8_R"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->KOI8_R:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "IBM424_rtl"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->IBM424_rtl:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "IBM424_ltr"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->IBM424_ltr:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "IBM420_rtl"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->IBM420_rtl:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "IBM420_ltr"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->IBM420_ltr:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x1d

    const-string v2, "UTF-32"

    const-string v3, "UTF_32"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->UTF_32:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x1e

    const-string v2, "ISO-8859-15"

    const-string v3, "ISO_8859_15"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_15:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "GB2312"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->GB2312:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const-string v1, "GBK"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, v1}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->GBK:Lir/ac/iust/htmlchardet/Charsets;

    new-instance v0, Lir/ac/iust/htmlchardet/Charsets;

    const/16 v1, 0x21

    const-string v2, "US-ASCII"

    const-string v3, "US_ASCII"

    invoke-direct {v0, v3, v1, v2}, Lir/ac/iust/htmlchardet/Charsets;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->US_ASCII:Lir/ac/iust/htmlchardet/Charsets;

    invoke-static {}, Lir/ac/iust/htmlchardet/Charsets;->$values()[Lir/ac/iust/htmlchardet/Charsets;

    move-result-object v0

    sput-object v0, Lir/ac/iust/htmlchardet/Charsets;->$VALUES:[Lir/ac/iust/htmlchardet/Charsets;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lir/ac/iust/htmlchardet/Charsets;->charsetType:Ljava/lang/String;

    return-void
.end method

.method private static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->UTF_8:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "CP1251"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1251:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "CP1252"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1252:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "CP1256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->WINDOWS_1256:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v0, "ISO8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->ISO_8859_1:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v0, "ZH-CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->GBK:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string v0, "SHIFT-JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "SJIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return-object p0

    :cond_7
    :goto_0
    sget-object p0, Lir/ac/iust/htmlchardet/Charsets;->SHIFT_JIS:Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {p0}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lir/ac/iust/htmlchardet/Charsets;->values()[Lir/ac/iust/htmlchardet/Charsets;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lir/ac/iust/htmlchardet/Charsets;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    move v0, v4

    :cond_3
    :goto_1
    return v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lir/ac/iust/htmlchardet/Charsets;->values()[Lir/ac/iust/htmlchardet/Charsets;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lir/ac/iust/htmlchardet/Charsets;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lir/ac/iust/htmlchardet/Charsets;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lir/ac/iust/htmlchardet/Charsets;
    .locals 1

    const-class v0, Lir/ac/iust/htmlchardet/Charsets;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/ac/iust/htmlchardet/Charsets;

    return-object p0
.end method

.method public static values()[Lir/ac/iust/htmlchardet/Charsets;
    .locals 1

    sget-object v0, Lir/ac/iust/htmlchardet/Charsets;->$VALUES:[Lir/ac/iust/htmlchardet/Charsets;

    invoke-virtual {v0}, [Lir/ac/iust/htmlchardet/Charsets;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/ac/iust/htmlchardet/Charsets;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lir/ac/iust/htmlchardet/Charsets;->charsetType:Ljava/lang/String;

    return-object v0
.end method
