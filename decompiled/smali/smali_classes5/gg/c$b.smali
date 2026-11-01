.class final Lgg/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lgg/c$b;

.field private static final b:Lgg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgg/c$b;

    invoke-direct {v0}, Lgg/c$b;-><init>()V

    sput-object v0, Lgg/c$b;->a:Lgg/c$b;

    new-instance v0, Lgg/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgg/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgg/c$b;->b:Lgg/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lgg/c;
    .locals 1

    sget-object v0, Lgg/c$b;->b:Lgg/c;

    return-object v0
.end method
