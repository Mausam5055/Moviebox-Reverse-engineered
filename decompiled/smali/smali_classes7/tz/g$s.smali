.class Ltz/g$s;
.super Ltz/g$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltz/g$s;->b:[I

    return-void

    :array_0
    .array-data 4
        0x404146
        0x404148
        0x404151
        0x404171
        0x404251
        0x404256
        0x404541
        0x404546
        0x404551
        0x404556
        0x404562
        0x404569
        0x404571
        0x405441
        0x405445
        0x405641
        0x406254
        0x406954
        0x417140
        0x454041
        0x454042
        0x454045
        0x454054
        0x454056
        0x454069
        0x454641
        0x464140
        0x465540
        0x465740
        0x466840
        0x467140
        0x514045
        0x514540
        0x514671
        0x515155
        0x515540
        0x515740
        0x516840
        0x517140
        0x544041
        0x544045
        0x544140
        0x544540
        0x554041
        0x554042
        0x554045
        0x554054
        0x554056
        0x554069
        0x564540
        0x574045
        0x584540
        0x585140
        0x585155
        0x625440
        0x684045
        0x685155
        0x695440
        0x714041
        0x714042
        0x714045
        0x714054
        0x714056
        0x714069
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/g$q;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "IBM424_rtl"

    return-object v0
.end method

.method public c(Ltz/a;)Ltz/b;
    .locals 3

    sget-object v0, Ltz/g$s;->b:[I

    sget-object v1, Ltz/g$q;->a:[B

    const/16 v2, 0x40

    invoke-virtual {p0, p1, v0, v1, v2}, Ltz/g;->e(Ltz/a;[I[BB)I

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
