.class public final Lo0/r$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lo0/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lo0/r;
    .locals 1

    invoke-static {}, Lo0/r;->a()Lo0/r;

    move-result-object v0

    return-object v0
.end method
