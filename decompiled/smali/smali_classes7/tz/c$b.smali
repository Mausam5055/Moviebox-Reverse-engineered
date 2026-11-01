.class Ltz/c$b;
.super Ltz/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltz/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:[[B


# direct methods
.method constructor <init>()V
    .locals 16

    invoke-direct/range {p0 .. p0}, Ltz/c;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x3

    new-array v4, v3, [B

    fill-array-data v4, :array_2

    new-array v5, v3, [B

    fill-array-data v5, :array_3

    new-array v6, v3, [B

    fill-array-data v6, :array_4

    new-array v7, v3, [B

    fill-array-data v7, :array_5

    new-array v8, v3, [B

    fill-array-data v8, :array_6

    new-array v9, v3, [B

    fill-array-data v9, :array_7

    new-array v10, v3, [B

    fill-array-data v10, :array_8

    new-array v11, v3, [B

    fill-array-data v11, :array_9

    new-array v12, v3, [B

    fill-array-data v12, :array_a

    new-array v13, v3, [B

    fill-array-data v13, :array_b

    const/16 v14, 0xc

    new-array v14, v14, [[B

    const/4 v15, 0x0

    aput-object v1, v14, v15

    const/4 v1, 0x1

    aput-object v2, v14, v1

    const/4 v1, 0x2

    aput-object v4, v14, v1

    aput-object v5, v14, v3

    aput-object v6, v14, v0

    const/4 v0, 0x5

    aput-object v7, v14, v0

    const/4 v0, 0x6

    aput-object v8, v14, v0

    const/4 v0, 0x7

    aput-object v9, v14, v0

    const/16 v0, 0x8

    aput-object v10, v14, v0

    const/16 v0, 0x9

    aput-object v11, v14, v0

    const/16 v0, 0xa

    aput-object v12, v14, v0

    const/16 v0, 0xb

    aput-object v13, v14, v0

    move-object/from16 v0, p0

    iput-object v14, v0, Ltz/c$b;->a:[[B

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x43t
    .end array-data

    :array_1
    .array-data 1
        0x1bt
        0x24t
        0x28t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x1bt
        0x24t
        0x40t
    .end array-data

    :array_3
    .array-data 1
        0x1bt
        0x24t
        0x41t
    .end array-data

    :array_4
    .array-data 1
        0x1bt
        0x24t
        0x42t
    .end array-data

    :array_5
    .array-data 1
        0x1bt
        0x26t
        0x40t
    .end array-data

    :array_6
    .array-data 1
        0x1bt
        0x28t
        0x42t
    .end array-data

    :array_7
    .array-data 1
        0x1bt
        0x28t
        0x48t
    .end array-data

    :array_8
    .array-data 1
        0x1bt
        0x28t
        0x49t
    .end array-data

    :array_9
    .array-data 1
        0x1bt
        0x28t
        0x4at
    .end array-data

    :array_a
    .array-data 1
        0x1bt
        0x2et
        0x41t
    .end array-data

    :array_b
    .array-data 1
        0x1bt
        0x2et
        0x46t
    .end array-data
.end method


# virtual methods
.method b()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO-2022-JP"

    return-object v0
.end method

.method c(Ltz/a;)Ltz/b;
    .locals 3

    iget-object v0, p1, Ltz/a;->a:[B

    iget v1, p1, Ltz/a;->b:I

    iget-object v2, p0, Ltz/c$b;->a:[[B

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
