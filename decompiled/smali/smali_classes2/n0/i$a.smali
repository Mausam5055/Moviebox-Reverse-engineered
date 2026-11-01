.class public final Ln0/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/i;
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

    invoke-direct {p0}, Ln0/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ln0/i;
    .locals 1

    invoke-static {}, Ln0/k;->a()Ln0/j;

    move-result-object v0

    invoke-interface {v0}, Ln0/j;->d()Ln0/i;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ln0/i;
    .locals 1

    invoke-static {}, Ln0/i;->a()Ln0/i;

    move-result-object v0

    return-object v0
.end method
