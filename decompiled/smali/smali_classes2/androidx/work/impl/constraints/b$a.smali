.class public final Landroidx/work/impl/constraints/b$a;
.super Landroidx/work/impl/constraints/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/constraints/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Landroidx/work/impl/constraints/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/constraints/b$a;

    invoke-direct {v0}, Landroidx/work/impl/constraints/b$a;-><init>()V

    sput-object v0, Landroidx/work/impl/constraints/b$a;->a:Landroidx/work/impl/constraints/b$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/work/impl/constraints/b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
