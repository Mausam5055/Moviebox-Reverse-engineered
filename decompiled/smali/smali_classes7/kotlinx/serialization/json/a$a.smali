.class public final Lkotlinx/serialization/json/a$a;
.super Lkotlinx/serialization/json/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 16

    new-instance v15, Lkotlinx/serialization/json/f;

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lkotlinx/serialization/json/f;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lf00/d;->a()Lf00/c;

    move-result-object v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    invoke-direct {v2, v15, v0, v1}, Lkotlinx/serialization/json/a;-><init>(Lkotlinx/serialization/json/f;Lf00/c;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/a$a;-><init>()V

    return-void
.end method
