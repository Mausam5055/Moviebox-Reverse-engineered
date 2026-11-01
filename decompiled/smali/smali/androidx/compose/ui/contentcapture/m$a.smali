.class public final Landroidx/compose/ui/contentcapture/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/contentcapture/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Landroidx/compose/ui/contentcapture/m$a;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/contentcapture/m$a;

    invoke-direct {v0}, Landroidx/compose/ui/contentcapture/m$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/contentcapture/m$a;->a:Landroidx/compose/ui/contentcapture/m$a;

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/compose/ui/contentcapture/m$a;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-boolean v0, Landroidx/compose/ui/contentcapture/m$a;->b:Z

    return v0
.end method
