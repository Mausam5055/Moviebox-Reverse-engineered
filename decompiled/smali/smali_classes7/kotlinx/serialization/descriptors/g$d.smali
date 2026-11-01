.class public final Lkotlinx/serialization/descriptors/g$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/g;->b(Lkotlinx/serialization/descriptors/f;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/serialization/descriptors/f;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/descriptors/f;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/g$d;->a:Lkotlinx/serialization/descriptors/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lkotlinx/serialization/descriptors/g$b;

    iget-object v1, p0, Lkotlinx/serialization/descriptors/g$d;->a:Lkotlinx/serialization/descriptors/f;

    invoke-direct {v0, v1}, Lkotlinx/serialization/descriptors/g$b;-><init>(Lkotlinx/serialization/descriptors/f;)V

    return-object v0
.end method
