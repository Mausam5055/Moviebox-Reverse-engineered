.class public final Lcom/google/zxing/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lid/b;
    .locals 7

    sget-object v0, Lcom/google/zxing/g$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No encoder available for format "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Led/c;

    invoke-direct {v0}, Led/c;-><init>()V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :pswitch_1
    new-instance v0, Lld/b;

    invoke-direct {v0}, Lld/b;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lqd/b;

    invoke-direct {v0}, Lqd/b;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ltd/d;

    invoke-direct {v0}, Ltd/d;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lqd/m;

    invoke-direct {v0}, Lqd/m;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {v0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lqd/f;

    invoke-direct {v0}, Lqd/f;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lqd/d;

    invoke-direct {v0}, Lqd/d;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lxd/b;

    invoke-direct {v0}, Lxd/b;-><init>()V

    goto :goto_0

    :pswitch_9
    new-instance v0, Lqd/s;

    invoke-direct {v0}, Lqd/s;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance v0, Lqd/h;

    invoke-direct {v0}, Lqd/h;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance v0, Lqd/z;

    invoke-direct {v0}, Lqd/z;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance v0, Lqd/j;

    invoke-direct {v0}, Lqd/j;-><init>()V

    goto :goto_0

    :goto_1
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/zxing/m;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lid/b;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lid/b;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/g;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lid/b;

    move-result-object p1

    return-object p1
.end method
