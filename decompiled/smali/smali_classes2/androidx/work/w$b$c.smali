.class public final Landroidx/work/w$b$c;
.super Landroidx/work/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/w$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/w$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/work/w$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/work/w$b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SUCCESS"

    return-object v0
.end method
