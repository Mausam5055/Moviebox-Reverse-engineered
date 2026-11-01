.class Ltz/g$d;
.super Ltz/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# static fields
.field private static b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Ltz/g$d;->b:[I

    return-void

    :array_0
    .array-data 4
        0x20d220
        0x20d2de
        0x20d4de
        0x20d7d0
        0x20d820
        0x20dad0
        0x20dade
        0x20ddd0
        0x20ddd5
        0x20ded1
        0x20dfde
        0x20dfe0
        0x20e0d0
        0x20e1de
        0x20e1e2
        0x20e2de
        0x20e7e2
        0x20ede2
        0xd0ddd8
        0xd0e2ec
        0xd3de20
        0xd5dbec
        0xd5ddd8
        0xd5e1e2
        0xd5e220
        0xd820df
        0xd8d520
        0xd8d820
        0xd8ef20
        0xdbd5dd
        0xdbd820
        0xdbecdd
        0xddd020
        0xddd520
        0xddd8d5
        0xddd8ef
        0xddde20
        0xddded2
        0xde20d2
        0xde20df
        0xde20e1
        0xded220
        0xded2d0
        0xded3de
        0xded920
        0xdedbec
        0xdedc20
        0xdee1e2
        0xdfdedb
        0xdfe0d5
        0xdfe0d8
        0xdfe0de
        0xe0d0d2
        0xe0d5d4
        0xe1e2d0
        0xe1e2d2
        0xe1e2d8
        0xe1ef20
        0xe2d5db
        0xe2de20
        0xe2dee0
        0xe2ec20
        0xe7e2de
        0xebe520
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ltz/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ru"

    return-object v0
.end method

.method public c(Ltz/a;)Ltz/b;
    .locals 2

    sget-object v0, Ltz/g$d;->b:[I

    sget-object v1, Ltz/g$c;->a:[B

    invoke-virtual {p0, p1, v0, v1}, Ltz/g;->d(Ltz/a;[I[B)I

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
