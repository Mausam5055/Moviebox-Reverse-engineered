.class public final Ls/d$w;
.super Ls/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation


# static fields
.field public static final c:Ls/d$w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls/d$w;

    invoke-direct {v0}, Ls/d$w;-><init>()V

    sput-object v0, Ls/d$w;->c:Ls/d$w;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Ls/d;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public a(Ls/e;Landroidx/compose/runtime/f;Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V
    .locals 0

    invoke-static {p3, p4}, Landroidx/compose/runtime/k;->K(Landroidx/compose/runtime/m2;Landroidx/compose/runtime/a2;)V

    return-void
.end method
