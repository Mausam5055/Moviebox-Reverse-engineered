.class public final Lkotlinx/serialization/internal/q1;
.super Lkotlinx/serialization/internal/y0;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/f;)V
    .locals 1

    const-string v0, "primitive"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/y0;-><init>(Lkotlinx/serialization/descriptors/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/f;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Array"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/q1;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/q1;->c:Ljava/lang/String;

    return-object v0
.end method
