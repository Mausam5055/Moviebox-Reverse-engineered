.class public final Lz/l;
.super Lz/h;


# static fields
.field public static final a:Lz/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz/l;

    invoke-direct {v0}, Lz/l;-><init>()V

    sput-object v0, Lz/l;->a:Lz/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lz/h;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
