.class public final Lkotlinx/serialization/descriptors/i$c;
.super Lkotlinx/serialization/descriptors/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/descriptors/i$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/i$c;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/i$c;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/i$c;->a:Lkotlinx/serialization/descriptors/i$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
