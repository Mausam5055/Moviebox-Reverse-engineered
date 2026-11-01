.class public final Lkotlin/internal/PlatformImplementationsKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u0014\u0010\u0003\u001a\u00020\u00008\u0000X\u0081\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0001\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lkotlin/internal/PlatformImplementations;",
        "a",
        "Lkotlin/internal/PlatformImplementations;",
        "IMPLEMENTATIONS",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/internal/PlatformImplementations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/internal/jdk8/JDK8PlatformImplementations;

    invoke-direct {v0}, Lkotlin/internal/jdk8/JDK8PlatformImplementations;-><init>()V

    sput-object v0, Lkotlin/internal/PlatformImplementationsKt;->a:Lkotlin/internal/PlatformImplementations;

    return-void
.end method
