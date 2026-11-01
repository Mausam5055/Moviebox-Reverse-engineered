.class Ltz/g$o;
.super Ltz/g$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltz/g$o;->b:[I

    return-void

    :array_0
    .array-data 4
        0x404656
        0x4056bb
        0x4056bf
        0x406273
        0x406275
        0x4062b1
        0x4062bb
        0x4062dc
        0x406356
        0x407556
        0x4075dc
        0x40b156
        0x40bb56
        0x40bd56
        0x40bdbb
        0x40bdcf
        0x40bddc
        0x40dab1
        0x40dcab
        0x40dcb1
        0x49b156
        0x564056
        0x564058
        0x564062
        0x564063
        0x564073
        0x564075
        0x564078
        0x56409a
        0x5640b1
        0x5640bb
        0x5640bd
        0x5640bf
        0x5640da
        0x5640dc
        0x565840
        0x56b156
        0x56cf40
        0x58b156
        0x63b156
        0x63bd56
        0x67b156
        0x69b156
        0x73b156
        0x78b156
        0x9ab156
        0xab4062
        0xadb156
        0xb14062
        0xb15640
        0xb156cf
        0xb19a40
        0xb1b140
        0xbb4062
        0xbb40dc
        0xbbb156
        0xbd5640
        0xbdbb40
        0xcf4062
        0xcf40dc
        0xcfb156
        0xdab19a
        0xdcab40
        0xdcb156
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/g$n;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "IBM420_ltr"

    return-object v0
.end method

.method public c(Ltz/a;)Ltz/b;
    .locals 3

    sget-object v0, Ltz/g$o;->b:[I

    sget-object v1, Ltz/g$n;->a:[B

    const/16 v2, 0x40

    invoke-virtual {p0, p1, v0, v1, v2}, Ltz/g;->f(Ltz/a;[I[BB)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ltz/b;

    invoke-direct {v1, p1, p0, v0}, Ltz/b;-><init>(Ltz/a;Ltz/h;I)V

    move-object p1, v1

    :goto_0
    return-object p1
.end method
