.class public abstract Lx6/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v6, "ERR_ADDRESS_UNREACHABLE"

    const-string v7, "ERR_QUIC_PROTOCOL_ERROR"

    const-string v0, "ERR_NAME_NOT_RESOLVED"

    const-string v1, "ERR_TIMED_OUT"

    const-string v2, "ERR_CONNECTION_CLOSED"

    const-string v3, "ERR_CONNECTION_TIMED_OUT"

    const-string v4, "ERR_CONNECTION_REFUSED"

    const-string v5, "ERR_CONNECTION_RESET"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lx6/a;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Lokhttp3/Response;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lx6/a;->d(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    const/16 v0, 0x190

    if-gt v0, p0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Ljava/lang/Exception;)I
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx6/a;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v4, v3, v5, v6, v2}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v1

    :cond_1
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "ERR_NAME_NOT_RESOLVED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x3ed

    goto :goto_1

    :sswitch_1
    const-string p0, "ERR_ADDRESS_UNREACHABLE"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x3ee

    goto :goto_1

    :sswitch_2
    const-string p0, "ERR_CONNECTION_REFUSED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x417

    goto :goto_1

    :sswitch_3
    const-string p0, "ERR_CONNECTION_RESET"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0x418

    goto :goto_1

    :sswitch_4
    const-string p0, "ERR_TIMED_OUT"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/16 p0, 0x3f0

    goto :goto_1

    :sswitch_5
    const-string p0, "ERR_CONNECTION_CLOSED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0x416

    goto :goto_1

    :sswitch_6
    const-string p0, "ERR_QUIC_PROTOCOL_ERROR"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/16 p0, 0x3ef

    goto :goto_1

    :sswitch_7
    const-string p0, "ERR_CONNECTION_TIMED_OUT"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p0, 0x3f5

    goto :goto_1

    :cond_a
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0

    :sswitch_data_0
    .sparse-switch
        -0x7ebf8f61 -> :sswitch_7
        -0x62bf8058 -> :sswitch_6
        -0x5ab4de8d -> :sswitch_5
        -0x3eb2fc74 -> :sswitch_4
        -0x3beb43b8 -> :sswitch_3
        0x1126e389 -> :sswitch_2
        0x145b0ccf -> :sswitch_1
        0x407748be -> :sswitch_0
    .end sparse-switch
.end method

.method public static final c(Lokhttp3/Response;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lx6/a;->d(Lokhttp3/Response;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x190

    if-gt v1, v0, :cond_0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x1f9

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static final d(Lokhttp3/Response;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
