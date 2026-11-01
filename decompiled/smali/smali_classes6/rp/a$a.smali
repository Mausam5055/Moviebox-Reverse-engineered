.class public final Lrp/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp/a;
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

    invoke-direct {p0}, Lrp/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lrp/a$a;)Lrp/b;
    .locals 0

    invoke-direct {p0}, Lrp/a$a;->b()Lrp/b;

    move-result-object p0

    return-object p0
.end method

.method private final b()Lrp/b;
    .locals 1

    invoke-static {}, Lrp/a;->a()Lrp/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Lrp/b;)V
    .locals 0

    invoke-static {p1}, Lrp/a;->b(Lrp/b;)V

    return-void
.end method
