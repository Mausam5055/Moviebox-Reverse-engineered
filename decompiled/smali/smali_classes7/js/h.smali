.class public final Ljs/h;
.super Ljs/f;


# static fields
.field public static final a:Ljs/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljs/h;

    invoke-direct {v0}, Ljs/h;-><init>()V

    sput-object v0, Ljs/h;->a:Ljs/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljs/f;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
