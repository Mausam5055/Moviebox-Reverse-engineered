.class public final Lot/b$a;
.super Lot/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lot/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lot/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lot/b$a;

    invoke-direct {v0}, Lot/b$a;-><init>()V

    sput-object v0, Lot/b$a;->a:Lot/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lot/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
