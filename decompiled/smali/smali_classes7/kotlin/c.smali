.class final Lkotlin/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlin/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/c;

    invoke-direct {v0}, Lkotlin/c;-><init>()V

    sput-object v0, Lkotlin/c;->a:Lkotlin/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlin/KotlinVersion;
    .locals 4

    new-instance v0, Lkotlin/KotlinVersion;

    const/4 v1, 0x1

    const/16 v2, 0x15

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1, v2}, Lkotlin/KotlinVersion;-><init>(III)V

    return-object v0
.end method
