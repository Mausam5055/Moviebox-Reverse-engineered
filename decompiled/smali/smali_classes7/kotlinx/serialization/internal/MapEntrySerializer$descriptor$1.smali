.class final Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/MapEntrySerializer;-><init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/descriptors/a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "K",
        "V",
        "Lkotlinx/serialization/descriptors/a;",
        "",
        "invoke",
        "(Lkotlinx/serialization/descriptors/a;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $keySerializer:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b;"
        }
    .end annotation
.end field

.field final synthetic $valueSerializer:Lkotlinx/serialization/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/b;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/serialization/b;Lkotlinx/serialization/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/b;",
            "Lkotlinx/serialization/b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;->$keySerializer:Lkotlinx/serialization/b;

    iput-object p2, p0, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;->$valueSerializer:Lkotlinx/serialization/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/serialization/descriptors/a;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;->invoke(Lkotlinx/serialization/descriptors/a;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/descriptors/a;)V
    .locals 8

    const-string v0, "$this$buildSerialDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;->$keySerializer:Lkotlinx/serialization/b;

    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "key"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;Ljava/util/List;ZILjava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/MapEntrySerializer$descriptor$1;->$valueSerializer:Lkotlinx/serialization/b;

    invoke-interface {v0}, Lkotlinx/serialization/b;->getDescriptor()Lkotlinx/serialization/descriptors/f;

    move-result-object v3

    const-string v2, "value"

    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/a;->b(Lkotlinx/serialization/descriptors/a;Ljava/lang/String;Lkotlinx/serialization/descriptors/f;Ljava/util/List;ZILjava/lang/Object;)V

    return-void
.end method
