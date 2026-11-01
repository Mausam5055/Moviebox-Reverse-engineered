.class public final Lcg/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcg/b;
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

    invoke-direct {p0}, Lcg/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/EventListener$Factory;
    .locals 1

    invoke-static {}, Lcg/b;->d()Lokhttp3/EventListener$Factory;

    move-result-object v0

    return-object v0
.end method
