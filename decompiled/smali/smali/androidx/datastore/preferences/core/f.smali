.class public final Landroidx/datastore/preferences/core/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/datastore/core/okio/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/core/f$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/datastore/preferences/core/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/core/f;

    invoke-direct {v0}, Landroidx/datastore/preferences/core/f;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/core/f;->a:Landroidx/datastore/preferences/core/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d(Ljava/lang/String;Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/core/MutablePreferences;)V
    .locals 3

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->c0()Landroidx/datastore/preferences/PreferencesProto$Value$ValueCase;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/datastore/preferences/core/f$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_1
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    const-string p2, "Value not set."

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    :pswitch_2
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->b(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->U()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/ByteString;->toByteArray()[B

    move-result-object p2

    const-string v0, "value.bytes.toByteArray()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->h(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->b0()Landroidx/datastore/preferences/e;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/datastore/preferences/e;->P()Ljava/util/List;

    move-result-object p2

    const-string v0, "value.stringSet.stringsList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->g(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->a0()Ljava/lang/String;

    move-result-object p2

    const-string v0, "value.string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->f(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->Z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->e(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->Y()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->c(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->W()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->d(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->X()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->a(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/PreferencesProto$Value;->T()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    :goto_1
    return-void

    :pswitch_a
    new-instance p1, Landroidx/datastore/core/CorruptionException;

    const-string p2, "Value case is null."

    invoke-direct {p1, p2, v2, v1, v2}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final f(Ljava/lang/Object;)Landroidx/datastore/preferences/PreferencesProto$Value;
    .locals 3

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->x(Z)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setBoolean(value).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->A(F)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setFloat(value).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->z(D)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setDouble(value).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->B(I)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setInteger(value).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->C(J)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setLong(value).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto :goto_0

    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->D(Ljava/lang/String;)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setString(value).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    invoke-static {}, Landroidx/datastore/preferences/e;->Q()Landroidx/datastore/preferences/e$a;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {v1, p1}, Landroidx/datastore/preferences/e$a;->x(Ljava/lang/Iterable;)Landroidx/datastore/preferences/e$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->E(Landroidx/datastore/preferences/e$a;)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setStringSe\u2026                ).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    goto :goto_0

    :cond_6
    instance-of v0, p1, [B

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/datastore/preferences/PreferencesProto$Value;->d0()Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object v0

    check-cast p1, [B

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/ByteString;->copyFrom([B)Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/PreferencesProto$Value$a;->y(Landroidx/datastore/preferences/protobuf/ByteString;)Landroidx/datastore/preferences/PreferencesProto$Value$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v0, "newBuilder().setBytes(By\u2026.copyFrom(value)).build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/datastore/preferences/PreferencesProto$Value;

    :goto_0
    return-object p1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferencesSerializer does not support type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lokio/BufferedSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    sget-object p2, Landroidx/datastore/preferences/b;->a:Landroidx/datastore/preferences/b$a;

    invoke-interface {p1}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/datastore/preferences/b$a;->a(Ljava/io/InputStream;)Landroidx/datastore/preferences/d;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Landroidx/datastore/preferences/core/c$b;

    invoke-static {p2}, Landroidx/datastore/preferences/core/d;->b([Landroidx/datastore/preferences/core/c$b;)Landroidx/datastore/preferences/core/MutablePreferences;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/datastore/preferences/d;->N()Ljava/util/Map;

    move-result-object p1

    const-string v0, "preferencesProto.preferencesMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/PreferencesProto$Value;

    sget-object v2, Landroidx/datastore/preferences/core/f;->a:Landroidx/datastore/preferences/core/f;

    const-string v3, "name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v0, p2}, Landroidx/datastore/preferences/core/f;->d(Ljava/lang/String;Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/core/MutablePreferences;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/datastore/preferences/core/c;->d()Landroidx/datastore/preferences/core/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lokio/BufferedSink;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/c;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/core/f;->g(Landroidx/datastore/preferences/core/c;Lokio/BufferedSink;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/datastore/preferences/core/f;->e()Landroidx/datastore/preferences/core/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroidx/datastore/preferences/core/c;
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/core/d;->a()Landroidx/datastore/preferences/core/c;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/datastore/preferences/core/c;Lokio/BufferedSink;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Landroidx/datastore/preferences/core/c;->a()Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Landroidx/datastore/preferences/d;->Q()Landroidx/datastore/preferences/d$a;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/core/c$a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/datastore/preferences/core/c$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/core/f;->f(Ljava/lang/Object;)Landroidx/datastore/preferences/PreferencesProto$Value;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroidx/datastore/preferences/d$a;->x(Ljava/lang/String;Landroidx/datastore/preferences/PreferencesProto$Value;)Landroidx/datastore/preferences/d$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$a;->m()Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/d;

    invoke-interface {p2}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/a;->h(Ljava/io/OutputStream;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
