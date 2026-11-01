.class public final Lgg/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/c;
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

    invoke-direct {p0}, Lgg/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lgg/c;
    .locals 1

    sget-object v0, Lgg/c$b;->a:Lgg/c$b;

    invoke-virtual {v0}, Lgg/c$b;->a()Lgg/c;

    move-result-object v0

    return-object v0
.end method
