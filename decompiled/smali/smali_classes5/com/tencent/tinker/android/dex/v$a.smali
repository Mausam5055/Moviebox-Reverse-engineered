.class public Lcom/tencent/tinker/android/dex/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/android/dex/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/android/dex/v$a$a;
    }
.end annotation


# instance fields
.field public final a:S

.field public b:Z

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iput v0, p0, Lcom/tencent/tinker/android/dex/v$a;->e:I

    int-to-short v1, p1

    iput-short v1, p0, Lcom/tencent/tinker/android/dex/v$a;->a:S

    iput-boolean p2, p0, Lcom/tencent/tinker/android/dex/v$a;->b:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput v0, p0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iput p2, p0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    const/16 p1, 0x70

    iput p1, p0, Lcom/tencent/tinker/android/dex/v$a;->e:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    iput p2, p0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    :cond_1
    :goto_0
    return-void
.end method

.method private d(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown section type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 p1, 0xd

    return p1

    :pswitch_1
    const/16 p1, 0x11

    return p1

    :pswitch_2
    const/16 p1, 0xa

    return p1

    :pswitch_3
    const/16 p1, 0xe

    return p1

    :pswitch_4
    const/16 p1, 0x8

    return p1

    :pswitch_5
    const/16 p1, 0xf

    return p1

    :pswitch_6
    const/16 p1, 0x10

    return p1

    :pswitch_7
    const/16 p1, 0xb

    return p1

    :pswitch_8
    const/16 p1, 0xc

    return p1

    :pswitch_9
    const/16 p1, 0x9

    return p1

    :pswitch_a
    const/16 p1, 0x13

    return p1

    :pswitch_b
    const/4 p1, 0x6

    return p1

    :pswitch_c
    const/16 p1, 0x12

    return p1

    :pswitch_d
    const/4 p1, 0x7

    return p1

    :pswitch_e
    const/4 p1, 0x5

    return p1

    :pswitch_f
    const/4 p1, 0x4

    return p1

    :pswitch_10
    const/4 p1, 0x3

    return p1

    :pswitch_11
    const/4 p1, 0x2

    return p1

    :pswitch_12
    const/4 p1, 0x1

    return p1

    :pswitch_13
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2000
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/tencent/tinker/android/dex/v$a;)I
    .locals 4

    iget v0, p0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    iget v1, p1, Lcom/tencent/tinker/android/dex/v$a;->d:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    iget-short v0, p0, Lcom/tencent/tinker/android/dex/v$a;->a:S

    invoke-direct {p0, v0}, Lcom/tencent/tinker/android/dex/v$a;->d(I)I

    move-result v0

    iget-short p1, p1, Lcom/tencent/tinker/android/dex/v$a;->a:S

    invoke-direct {p0, p1}, Lcom/tencent/tinker/android/dex/v$a;->d(I)I

    move-result p1

    if-eq v0, p1, :cond_3

    if-ge v0, p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/tencent/tinker/android/dex/v$a;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/android/dex/v$a;->a(Lcom/tencent/tinker/android/dex/v$a;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-short v0, p0, Lcom/tencent/tinker/android/dex/v$a;->a:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iget v1, p0, Lcom/tencent/tinker/android/dex/v$a;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/tencent/tinker/android/dex/v$a;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/tencent/tinker/android/dex/v$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "Section[type=%#x,off=%#x,size=%#x,byteCount=%#x]"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
