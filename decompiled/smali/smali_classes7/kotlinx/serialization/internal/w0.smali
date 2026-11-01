.class public final Lkotlinx/serialization/internal/w0;
.super Lkotlinx/serialization/internal/y0;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "elementDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/y0;-><init>(Lkotlinx/serialization/descriptors/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.collections.LinkedHashSet"

    return-object v0
.end method
