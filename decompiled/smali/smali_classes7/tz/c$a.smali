.class Ltz/c$a;
.super Ltz/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:[[B


# direct methods
.method constructor <init>()V
    .locals 15

    invoke-direct {p0}, Ltz/c;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    new-array v9, v0, [B

    fill-array-data v9, :array_8

    const/4 v10, 0x2

    new-array v11, v10, [B

    fill-array-data v11, :array_9

    new-array v12, v10, [B

    fill-array-data v12, :array_a

    const/16 v13, 0xb

    new-array v13, v13, [[B

    const/4 v14, 0x0

    aput-object v1, v13, v14

    const/4 v1, 0x1

    aput-object v2, v13, v1

    aput-object v3, v13, v10

    const/4 v1, 0x3

    aput-object v4, v13, v1

    aput-object v5, v13, v0

    const/4 v0, 0x5

    aput-object v6, v13, v0

    const/4 v0, 0x6

    aput-object v7, v13, v0

    const/4 v0, 0x7

    aput-object v8, v13, v0

    const/16 v0, 0x8

    aput-object v9, v13, v0

    const/16 v0, 0x9

    aput-object v11, v13, v0

    const/16 v0, 0xa

    aput-object v12, v13, v0

    iput-object v13, p0, Ltz/c$a;->a:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x41t
    .end array-data

    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x47t
    .end array-data

    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x2at
        0x48t
    .end array-data

    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x29t
        0x45t
    .end array-data

    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x49t
    .end array-data

    :array_5
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4at
    .end array-data

    :array_6
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4bt
    .end array-data

    :array_7
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4ct
    .end array-data

    :array_8
    .array-data 1
        0x1bt
        0x24t
        0x2bt
        0x4dt
    .end array-data

    :array_9
    .array-data 1
        0x1bt
        0x4et
    .end array-data

    nop

    :array_a
    .array-data 1
        0x1bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO-2022-CN"

    return-object v0
.end method

.method c(Ltz/a;)Ltz/b;
    .locals 3

    iget-object v0, p1, Ltz/a;->a:[B

    iget v1, p1, Ltz/a;->b:I

    iget-object v2, p0, Ltz/c$a;->a:[[B

    invoke-virtual {p0, v0, v1, v2}, Ltz/c;->d([BI[[B)I

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
